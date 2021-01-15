Pod::Spec.new do |spec|
  spec.name         = 'BRL'
  spec.version      = '0.1.0'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'http://brilliant.tech'
  spec.authors      = { 'Anusha Ramakuri' => 'anusha@brilliant.tech' }
  spec.summary      = 'Thrift generated files and other common Library functions.'
  spec.source        = { :path => '.' }
  spec.source_files = 'thrift_types/*.swift'
  spec.dependency 'Thrift'
  spec.ios.deployment_target = '9.0'
end
