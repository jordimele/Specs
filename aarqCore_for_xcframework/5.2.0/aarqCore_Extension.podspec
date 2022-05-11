Pod::Spec.new do |s|

  s.name         = "aarqCore_Extension"
  s.version      = "5.2.0"
  s.summary      = "aarqCore framework"
  s.description  = <<-DESC "aarqCore framework description"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25468441"
  s.license      = { :type => "Commercial" }
  
  s.author       = "OpenTrends"
  s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqCore.git", :branch => "feature/no_monitor" }

  s.exclude_files = "aarqCore/Exclude/", "Shared/BaseClasses/ADAMBaseViewController.swift", "Shared/BaseClasses/ADAMBaseObjCViewController.{h,m}"
  s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}", "aarqCore_Extension", "aarqCore_Extension/**/*.{h,m,swift,plist}"
  
  s.ios.deployment_target = '10.3'
  s.tvos.deployment_target = '10.2'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) APP_EXTENSION=1',
    'OTHER_SWIFT_FLAGS' => '$(inherited) -DAPP_EXTENSION',
    'OTHER_CFLAGS' => '$(inherited)'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'aarqUtils_Extension', '5.2.0'
  s.dependency 'aarqAdamCore', '5.2.0'
  s.dependency 'aarqSession_Extension', '5.2.0'
  s.dependency 'aarqConfig_Extension', '4.2.0'

  s.ios.source_files  = "aarqCore/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqCore/Info.plist", "aarqCore_Extension/Info.plist"
  s.ios.dependency 'MBProgressHUD', '1.1.0'
  s.ios.dependency 'SpinKit', '1.2.0'

  s.tvos.source_files  = "aarqCoreTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqCoreTvOS/Info.plist", "aarqCore_Extension/Info.plist"
  s.tvos.dependency 'MBProgressHUD', '1.1.0'

  s.watchos.source_files  = "aarqCoreWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqCoreWatchOS/Info.plist", "aarqCore_Extension/Info.plist"

end
