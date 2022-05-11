Pod::Spec.new do |s|

  s.name         = "aarqCore"
  s.version      = "5.2.0"
  s.summary      = "aarqCore framework"
  s.description  = <<-DESC "aarqCore framework description"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25468441"
  s.license      = { :type => "Commercial" }

  s.author       = "OpenTrends"
  s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqCore.git", :branch => "feature/no_monitor" }

  s.exclude_files = "aarqCore/Exclude/"
  s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"
  
  s.ios.deployment_target = '10.3'
  s.tvos.deployment_target = '10.2'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'

  s.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '$(inherited)'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'aarqUtils', '5.2.0'
  s.dependency 'aarqAdamCore', '5.2.0'
  s.dependency 'aarqSession', '5.2.0'
  s.dependency 'aarqConfig', '4.2.0'

  s.ios.source_files  = "aarqCore/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqCore/Info.plist"
  s.ios.dependency 'MBProgressHUD', '1.1.0'
  s.ios.dependency 'SpinKit', '1.2.0'

  s.tvos.source_files  = "aarqCoreTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqCoreTvOS/Info.plist"
  s.tvos.dependency 'MBProgressHUD', '1.1.0'

  s.watchos.source_files  = "aarqCoreWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqCoreWatchOS/Info.plist"

end
