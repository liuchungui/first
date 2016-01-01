Pod::Spec.new do |spec|
  spec.name         = 'PublicProject'
  spec.version      = '0.1.6'
  spec.license      = 'MIT'
  spec.summary      = 'PublicProject 是一个基础框架'
  spec.homepage     = 'http://182.92.5.161'
  spec.author       = {"chunguiLiu"=>"chunguiLiu@126.com"}
  spec.source       = { :git => 'git@182.92.5.161:/home/git/liuchungui/PublicProject.git', :tag => spec.version }
  spec.platform     = :ios, '7.0'
  spec.requires_arc = true

  spec.subspec 'Helper' do |helper|
    helper.source_files = 'Classes/Helper/**/*.{h,m}'
    helper.public_header_files = 'Classes/Helper/Helper.h'
  end

  spec.subspec 'Additions' do |additions|
    additions.source_files = 'Classes/Additions/**/*.{h,m}'
    additions.public_header_files = 'Classes/Additions/*.h'
  end

  spec.subspec 'Jastor' do |jastor|
    jastor.source_files = 'Classes/Jastor/**/*.{h,m}'
    jastor.public_header_files = 'Classes/Jastor/jastor.h'
  end

  spec.subspec 'Macro' do |macro|
    macro.source_files = 'Classes/Macro/**/*.{h,m}'
    macro.public_header_files = 'Classes/Macro/*.h'
  end

  spec.subspec 'Utils' do |utils|
    utils.source_files = 'Classes/Utils/**/*.{h,m}'
    utils.public_header_files = 'Classes/Utils/*.h'
    utils.dependency 'PublicProject/Macro'
  end

  spec.subspec 'Vendors' do |vendors|
    vendors.subspec 'Timer' do |timer|
      timer.source_files = 'Classes/Vendors/Timer/**/*.{h,m}'
      timer.public_header_files = 'Classes/Vendors/Timer/*.h'
      timer.dependency 'PublicProject/Macro'
    end

    vendors.subspec 'GTMBase64' do |base64|
      base64.source_files = 'Classes/Vendors/GTMBase64/**/*.{h,m}'
      base64.public_header_files = 'Classes/Vendors/GTMBase64/*.h'
      base64.requires_arc = false
    end

    vendors.subspec 'Json' do |json|
      json.source_files = 'Classes/Vendors/Json/**/*.{h,m}'
      json.public_header_files = 'Classes/Vendors/Json/*.h'
      json.requires_arc = false
    end

    vendors.subspec 'QBase64' do |qBase64|
      qBase64.source_files = 'Classes/Vendors/QBase64/**/*.{h,m}'
      qBase64.public_header_files = 'Classes/Vendors/QBase64/*.h'
      qBase64.requires_arc = false
    end

    vendors.subspec 'OpenUDID' do |openUDID|
      openUDID.source_files = 'Classes/Vendors/OpenUDID/**/*.{h,m}'
      openUDID.public_header_files = 'Classes/Vendors/OpenUDID/*.h'
      openUDID.requires_arc = false
    end
  end
end
