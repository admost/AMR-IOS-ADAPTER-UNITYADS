Pod::Spec.new do |s|
  s.name             = 'AMRAdapterUnity'
  s.version          = '4.0.0.1'
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
  s.ios.deployment_target = '9.0'
  s.vendored_libraries = 'AMRAdapterUnity/Libs/libAMRAdapterUnity.a'
  s.dependency 'AMRSDK', '~> 1.5.1'
  s.dependency 'UnityAds', '4.0.0'
end
