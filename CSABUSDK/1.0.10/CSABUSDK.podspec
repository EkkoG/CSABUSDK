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
  s.source ={ :http => 'https://raw.githubusercontent.com/gomocommercial/frameworkArcive/master/CSABUSDK/1.0.9/CSABUSDK.zip'}

  s.ios.deployment_target    = '9.0'

  s.subspec 'ABUSDK' do |ss|
    ss.ios.vendored_frameworks   = 'ios/Frameworks/ABUAdSDK.framework'
    ss.dependency "BURelyFoundation"
  end

  s.subspec 'ABUAdAdmobAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdAdmobAdapter.framework'
    ss.dependency 'Google-Mobile-Ads-SDK'
  end

  s.subspec 'ABUAdBaiduAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdBaiduAdapter.framework'
    ss.dependency 'BaiduMobAdSDK'
  end

  s.subspec 'ABUAdGdtAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdGdtAdapter.framework'
    ss.dependency 'GDTMobSDK'
  end

    s.subspec 'ABUAdKlevinAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdKlevinAdapter.framework'
    ss.dependency 'KlevinAdSDK'
  end

  s.subspec 'ABUAdMintegralAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdMintegralAdapter.framework'
    ss.dependency 'MintegralAdSDK/SplashAd'
    ss.dependency 'MintegralAdSDK/InterstitialAd'
    ss.dependency 'MintegralAdSDK/NewInterstitialAd'
    ss.dependency 'MintegralAdSDK/InterstitialVideoAd'
    ss.dependency 'MintegralAdSDK/RewardVideoAd'
    ss.dependency 'MintegralAdSDK/NativeAd'
    ss.dependency 'MintegralAdSDK/NativeAdvancedAd'
    ss.dependency 'MintegralAdSDK/BannerAd'
    ss.dependency 'MintegralAdSDK/BidNativeAd'
    ss.dependency 'MintegralAdSDK/BidNewInterstitialAd'
    ss.dependency 'MintegralAdSDK/BidInterstitialVideoAd'
    ss.dependency 'MintegralAdSDK/BidRewardVideoAd'
  end

  s.subspec 'ABUAdSDKAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdCsjAdapter.framework'
    # ss.dependency 'Ads-Global'
    ss.dependency 'Ads-CN'
  end

  s.subspec 'ABUAdSigmobAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdSigmobAdapter.framework'
    ss.dependency 'SigmobAd-iOS'
  end

  s.subspec 'ABUAdUnityAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdUnityAdapter.framework'
    ss.dependency 'UnityAds'
  end

  s.subspec 'ABUAdKsAdapter' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUAdKsAdapter.framework'
    ss.dependency 'KSAdSDK'
  end

  s.subspec 'ABUVisualDebug' do |ss|
    ss.ios.vendored_frameworks = 'ios/Frameworks/ABUVisualDebug/ABUAdKsAdapter.framework'
    ss.resource = 'ios/Frameworks/ABUVisualDebug/ABUVisualDebug.bundle'
  end
end
