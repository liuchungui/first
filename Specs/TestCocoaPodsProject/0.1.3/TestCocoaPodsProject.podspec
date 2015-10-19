Pod::Spec.new do |spec|
  spec.name         = 'TestCocoaPodsProject'
  spec.version      = '0.1.3'
  spec.license      = 'MIT'
  spec.summary      = 'TestCocoaPodsProject is a test'
  spec.homepage     = 'https://github.com/chunguiLiu/TestCocoaPodsProject'
  spec.author       = {"chunguiLiu"=>"chunguiLiu@126.com"}
  spec.source       = { :git => 'https://github.com/chunguiLiu/TestCocoaPodsProject.git', :tag => '0.1.3' }
  spec.platform     = :ios, '7.0'
  spec.requires_arc = true

  spec.subspec 'Additional' do |addtional|
    addtional.source_files = 'Classes/Additional/**/*.{h,m}'
  end
  
  spec.subspec 'Macro' do |macro|
    macro.source_files = 'Classes/Macro/**/*.{h,m}'
  end
end
