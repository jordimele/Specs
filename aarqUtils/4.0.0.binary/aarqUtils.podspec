Pod::Spec.new do |s|

  s.name         = "aarqUtils"
  s.version      = "4.0.0.binary"
  s.summary      = "aarqUtils framework"
  s.description  = <<-DESC "aarqUtils framework description"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25467980"
  s.license      = { :type => "Commercial" }
  s.author       = "OpenTrends"
  # s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqUtils.git", :branch => 'feature/poc_binary' }
  s.source       = { :http => "https://www.dropbox.com/s/ehk0z7je4b71xkx/aarqUtils_Xcode11.zip?dl=0" }

  # s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"
  s.exclude_files = "aarqUtils/Exclude/"

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'aarqAdamCore', '4.0.0.binary'

  s.ios.deployment_target = '10.3'
  # s.ios.source_files  = "aarqUtils/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqUtils/Info.plist"

  s.tvos.deployment_target = '10.2'
  # s.tvos.source_files  = "aarqUtilsTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqUtilsTvOS/Info.plist"

  s.watchos.deployment_target = '3.2'
  # s.watchos.source_files  = "aarqUtilsWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqUtilsWatchOS/Info.plist"

  s.swift_version = '4.2'

end
