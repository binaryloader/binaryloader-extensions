Pod::Spec.new do |s|
  s.name = 'BinaryloaderExtensions'
  s.version = '1.0.2'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://github.com/binaryloader/binaryloader-extensions'
  s.authors = { 'binaryloader' => '152517454+binaryloader@users.noreply.github.com' }
  s.summary = 'Extensions for iOS application'
  s.swift_version = '5.0'

  s.ios.deployment_target = '11.0'

  s.source = { :git => 'https://github.com/binaryloader/binaryloader-extensions.git', :tag => s.version }
  s.source_files = 'BinaryloaderExtensions/Module/Source/*.swift'
end
