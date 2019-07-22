pipeline {
  agent {label "slave-cd"}
  options {
    buildDiscarder(logRotator(numToKeepStr: "2"))
  }
  stages {
    stage("Language Compilation") {
      parallel {
        stage("python") {
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
        }
        stage("swift") {
          agent {label "mac"}
          stages {
            stage("Cleanup Old Environment") {
              steps {
                // Remove all untracked files and directories:
                // -d = Clean untracked directories as well as files.
                // -x = Also delete files that are usually ignored.
                sh "git clean --force -d -x ./"
              }
            }
            stage("Build Swift Files") {
              steps {
                sh "make THRIFT_COMPILER=/usr/local/bin/thrift -C swift"
              }
            }
            stage("Build BRL Module") {
              steps {
                sh "make -C swift test_project_compilation"
              }
            }
          }
        }
        stage("java") {
          agent {label "android"}
          environment {
            ANDROID_HOME = "/var/lib/jenkins/android"
            GRADLE_USER_HOME = "/var/lib/jenkins/.gradle"
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
            stage("Build Java Files") {
              steps {
                sh "make THRIFT_COMPILER=/usr/local/bin/thrift -C java"
              }
            }
            stage("Build BRL Module") {
              steps {
                sh "make -C java test_project_compilation"
              }
            }
          }
        }
      }
    }
  }
  post {
    always {
      script {
        // Manually set the build result to success so we can calculate
        // "back to normal". Jenkins doesn't do this automatically until the
        // build is fully completed.
        if (currentBuild.result == null) {
            currentBuild.result = 'SUCCESS'
        }
      }
      sendGoogleChatNotifications()
    }
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

def sendGoogleChatNotifications() {
  if ("${env.GIT_BRANCH}" != "master" ) {
    return
  }
  googlechatnotification(
    url: 'id:google_chat_jenkins_build_room_url',
    message: "*FAILED* '${env.JOB_NAME} build #${env.BUILD_NUMBER}' - ${env.BUILD_URL}",
    notifyFailure: true,
    // Will post all messages under JOB_NAME to the same thread.
    sameThreadNotification: true
  )
  googlechatnotification(
    url: 'id:google_chat_jenkins_build_room_url',
    message: "'${env.JOB_NAME}' back to normal (Build #${env.BUILD_NUMBER}) - ${env.BUILD_URL}",
    notifyBackToNormal: true,
    // Will post all messages under JOB_NAME to the same thread.
    sameThreadNotification: true
  )
}
