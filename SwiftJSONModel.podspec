Pod::Spec.new do |s|
  
  s.name = 'SwiftJSONModel'
  s.version = '0.9.1'
  s.license = 'mobileforming'
  s.summary = 'Swift JSON Model'
  s.homepage = 'mobileforming.com'
  s.authors = { 'mobileforming' => 'mobileforming@mobileforming.com' }
  s.source = { :git => '', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  # s.watchos.deployment_target = '2.0'

  s.source_files = 'Source/*.swift'

  s.requires_arc = true

end
