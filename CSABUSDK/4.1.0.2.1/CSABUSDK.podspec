Pod::Spec.new do |s|
  s.name = "CSABUSDK"
  s.version = "1.0.9"
  s.summary = "ABUSDK 4.1.0.2"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"zhangyuwei"=>"zhangyuwei@gomo.com"}
  s.homepage = "https://gitlab.com/gomo_sdk/CSABUAdLoad"
  s.description = "TODO: Add long description of the pod here."
  s.frameworks = ["SystemConfiguration", "CoreGraphics", "Foundation", "UIKit", "AdSupport", "StoreKit", "QuartzCore", "CoreTelephony", "MobileCoreServices", "Accelerate", "AVFoundation", "WebKit"]
  s.libraries = ["sqlite3", "xml2", "z"]
  s.requires_arc = true
  s.source ={ :http => 'https://github.com/EkkoG/CSABUSDKArchive/raw/master/4.1.0.2/CSABUSDK.zip'}

  s.ios.deployment_target    = '9.0'

  s.subspec 'ABUSDK' do |ss|
    ss.ios.vendored_frameworks   = 'ios/Frameworks/ABUAdSDK.framework'
    ss.dependency "BURelyFoundation"
  end

  s.subspec 'ABUAdGdtAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdGdtAdapter.framework'
    ss.dependency 'GDTMobSDK'
  end

  s.subspec 'ABUAdSDKAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdCsjAdapter.framework'
    # ss.dependency 'Ads-Global'
    ss.dependency 'Ads-CN'
  end

  s.subspec 'ABUAdKsAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdKsAdapter.framework'
    ss.dependency 'KSAdSDK'
  end

end