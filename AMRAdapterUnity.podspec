Pod::Spec.new do |s|
  s.name             = 'AMRAdapterUnity'
  s.version          = '4.15.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Unity Ads adapter for AMR SDK.'
  s.description      = 'AMR Unity Ads adapter allows publishers to mediate Unity Ads interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-UNITYADS.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterUnity/Libs/AMRAdapterUnity.xcframework'
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.55'
  s.dependency 'UnityAds', '4.15.0'
end
