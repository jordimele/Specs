Pod::Spec.new do |s|

  s.name         = "aarqADAM"
  s.version      = "1.32.0"
  s.summary      = "aarqADAM framework"
  s.description  = <<-DESC "aarqADAM framework used in ADAM apps"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25472262"
  s.license      = { :type => "Commercial" }
  
  s.author       = "OpenTrends"
  s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqADAM.git", :branch => "feature/no_monitor" }

  s.exclude_files = "aarqADAM/Exclude/", "Shared/Info.plist"
  s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"
  
  s.ios.deployment_target = '10.3'
  s.tvos.deployment_target = '10.2'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'

  s.pod_target_xcconfig = {
   'OTHER_CFLAGS' => '$(inherited)'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'aarqSDKExtension', '3.2.0'
  s.dependency 'aarqUtils', '5.2.0'
  s.dependency 'aarqLog', '5.2.0'
  s.dependency 'aarqAdamCore', '5.2.0'
  s.dependency 'aarqSecurity', '4.2.0'
  s.dependency 'aarqRest', '7.2.0'
  s.dependency 'aarqData', '7.2.0'
  s.dependency 'aarqConfig', '4.2.0'
  s.dependency 'aarqSession', '5.2.0'
  s.dependency 'aarqCore', '5.2.0'
  s.dependency 'aarqWebSockets', '6.2.0'
  s.dependency 'aarqIntegration', '4.2.0'
  s.dependency 'aarqInteractions', '4.2.0'
  s.dependency 'aarqAdamData', '3.1.0'
  s.dependency 'aarqAdamSecurity', '3.1.0'
  
  s.ios.source_files  = "aarqADAM/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqADAM/Info.plist"
  s.ios.dependency 'aarqWear', '4.2.0'
  
  s.tvos.source_files  = "aarqADAMTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqADAMTvOS/Info.plist"
  
  s.watchos.source_files  = "aarqADAMWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqADAMWatchOS/Info.plist"
  s.watchos.dependency 'aarqWear', '4.2.0'

end
