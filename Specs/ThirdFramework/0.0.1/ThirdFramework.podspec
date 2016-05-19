Pod::Spec.new do |spec|
  #项目名称，云助理组件
  spec.name         = 'ThirdFramework'
  #版本号
  spec.version      = '0.0.1'
  #开源协议
  spec.license      = 'MIT'
  #对开源项目的描述
  spec.summary      = 'Cloud是云助理客户端和云助理律师端的公共组件'
  #开源项目的首页
  spec.homepage     = 'https://github.com/liuchungui'
  #作者信息
  spec.author       = {'chunguiLiu' => 'chunguiLiu@126.com'}
  #项目的源和版本号
  spec.source       = { :git => 'git@101.200.72.112:/srv/AppComponent/iOS/ThirdFramework.git', :tag => spec.version, :submodules => true }
  #适用于ios7及以上版本
  spec.platform     = :ios, '7.0'
  #使用的是ARC
  spec.requires_arc = true

  #第三方框架，例如友盟、微信
  spec.subspec 'Umeng' do |umeng|
    umeng.source_files = 'UMengSDK/*.{h,m}'
    umeng.public_header_files = 'UMengSDK/*.h'
    umeng.vendored_libraries = 'UMengSDK/libUMessage_Sdk_1.2.3.a'
  end

  spec.subspec 'WeChat' do |wechat|
    wechat.source_files = 'WeChat/*.h'
    wechat.public_header_files = 'WeChat/*.h'
    wechat.vendored_libraries = 'WeChat/libWeChatSDK.a'
    wechat.frameworks = 'SystemConfiguration', 'CoreTelephony'
    wechat.libraries = 'z', 'sqlite3.0', 'c++'
  end

end
