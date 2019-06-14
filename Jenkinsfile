pipeline {
  agent {label "slave-cd"}
  options {
    buildDiscarder(logRotator(numToKeepStr: "2"))
  }
  stages {
    stage("Cleanup Old Environment") {
      steps {
        // Remove all untracked files and directories:
        // -d = Clean untracked directories as well as files.
        // -x = Also delete files that are usually ignored.
        sh "git clean --force -d -x ./"
      }
    }

    stage("Build Python Files") {
      steps {
        sh "make THRIFT_COMPILER=/usr/local/bin/thrift -C python"
      }
    }

    stage("Build Wheel") {
      steps {
        sh "make -C python wheel"
      }
    }

    stage("Install Package") {
      steps {
        sh "make -C python test_install_package"
      }
    }
  }
  post {
    failure {
      emailext(
        subject: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
        body: "See the full console output at: ${env.BUILD_URL}.\nTo access the logs:\n\
               - Log into Teleport with: tsh --proxy=teleport001.brilliant.tech login.\n\
               - Create a tunnel with: ssh -D 8921 ubuntu@teleport001.brilliant.tech"\
              .stripIndent(),
        recipientProviders: [[$class: 'DevelopersRecipientProvider'],
                             [$class: 'RequesterRecipientProvider']]
      )
    }
  }
}
