Pod::Spec.new do |spec|
  spec.name         = 'TestCocoaPodsProject'
  spec.version      = '0.1.3'
  spec.license      = 'MIT'
  spec.summary      = 'TestCocoaPodsProject is a test'
  spec.homepage     = 'https://github.com/chunguiLiu/TestCocoaPodsProject'
  spec.author       = {"chunguiLiu"=>"chunguiLiu@126.com"}
  spec.source       = { :git => 'https://github.com/chunguiLiu/TestCocoaPodsProject.git', :tag => '0.1.3' }
  spec.platform     = :ios, '7.0'
  spec.source_files = 'Classes/**/*'
  spec.requires_arc = true
end
