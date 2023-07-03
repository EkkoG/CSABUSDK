Pod::Spec.new do |s|
    s.name = "CSABUSDK"
    s.version = "1.0.10"
    s.summary = "ABUSDK 4.3.0.0."
    s.license = {"type"=>"MIT", "file"=>"LICENSE"}
    s.authors = {"zhangyuwei"=>"zhangyuwei@gomo.com"}
    s.homepage = "https://gitlab.com/gomo_sdk/CSABUAdLoad"
    s.description = "TODO: Add long description of the pod here."
    s.frameworks = ["SystemConfiguration", "CoreGraphics", "Foundation", "UIKit", "AdSupport", "StoreKit", "QuartzCore", "CoreTelephony", "MobileCoreServices", "Accelerate", "AVFoundation", "WebKit"]
    s.libraries = ["sqlite3", "xml2", "z"]
    s.requires_arc = true
    s.source ={ :http => 'https://lf3-plat.pglstatp-toutiao.com/obj/union-platform/b7fcccd225e7a1dda12a57206183c51a.zip'}
  
    s.ios.deployment_target    = '9.0'
  
    s.subspec 'ABUSDK' do |ss|
      ss.ios.vendored_frameworks   = 'GroMore_iOS_ks_V4.2.0.3/SDKs/Ads-Mediation-CN_4.2.0.3/Ads-Mediation-CN/ABUAdSDK.framework'
      ss.dependency "BURelyFoundation"
    end
  
    s.subspec 'ABUAdGdtAdapter' do |ss|
      ss.ios.vendored_frameworks = 'GroMore_iOS_ks_V4.2.0.3/SDKs/ABUAdGdtAdapter_4.14.30.0/ABUAdGdtAdapter/ABUAdGdtAdapter.framework'
      ss.dependency 'GDTMobSDK'
    end
  
    s.subspec 'ABUAdSDKAdapter' do |ss|
      ss.ios.vendored_frameworks = 'GroMore_iOS_ks_V4.2.0.3/SDKs/ABUAdCsjAdapter_5.3.0.3.0/ABUAdCsjAdapter/ABUAdCsjAdapter.framework'
      # ss.dependency 'Ads-Global'
      ss.dependency 'Ads-CN'
    end
  
    s.subspec 'ABUAdKsAdapter' do |ss|
      ss.ios.vendored_frameworks = 'GroMore_iOS_ks_V4.2.0.3/SDKs/ABUAdKsAdapter_3.3.42.0/ABUAdKsAdapter/ABUAdKsAdapter.framework'
      ss.dependency 'KSAdSDK'
    end
  end