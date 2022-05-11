Pod::Spec.new do |s|

  s.name         = "aarqADAM_Extension"
  s.version      = "1.32.0"
  s.summary      = "aarqADAM_Extension framework"
  s.description  = <<-DESC "aarqADAM_Extension framework used in ADAM apps"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25472262"
  s.license      = { :type => "Commercial" }
  
  s.author       = "OpenTrends"
  s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqADAM.git", :branch => "feature/no_monitor" }

  s.exclude_files = "aarqADAM/Exclude/"
  s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"
  
  s.ios.deployment_target = '10.3'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'
  
  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) APP_EXTENSION=1',
    'OTHER_SWIFT_FLAGS' => '$(inherited) -DAPP_EXTENSION'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'aarqSDKExtension', '3.2.0'
  s.dependency 'aarqUtils_Extension', '5.2.0'
  s.dependency 'aarqLog_Extension', '5.2.0'
  s.dependency 'aarqAdamCore', '5.2.0'
  s.dependency 'aarqWear_Extension', '4.2.0'
  s.dependency 'aarqSecurity_Extension', '4.2.0'
  s.dependency 'aarqRest_Extension', '7.2.0'
  s.dependency 'aarqData_Extension', '7.2.0'
  s.dependency 'aarqConfig_Extension', '4.2.0'
  s.dependency 'aarqSession_Extension', '5.2.0'
  s.dependency 'aarqCore_Extension', '5.2.0'
  s.dependency 'aarqWebSockets_Extension', '6.2.0'
  s.dependency 'aarqIntegration', '4.2.0'
  s.dependency 'aarqInteractions_Extension', '4.2.0'
  s.dependency 'aarqAdamData', '3.1.0'
  s.dependency 'aarqAdamSecurity', '3.1.0'
  
  s.ios.source_files  = "aarqADAM/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqADAM/Info.plist"

  s.watchos.source_files  = "aarqADAMWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqADAMWatchOS/Info.plist"
end
