Pod::Spec.new do |s|

  s.name         = "aarqAdamData"
  s.version      = "3.1.0"
  s.summary      = "aarqAdamData framework"
  s.description  = <<-DESC "aarqAdamData framework to trace"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25461352"
  s.license      = { :type => "Commercial" }
  s.author       = "OpenTrends" 
  s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqAdamData.git", :tag => s.version }
  
  s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"
  s.exclude_files = "aarqAdamData/Exclude/", "Shared/Info.plist"

  s.ios.deployment_target = '10.3'
  s.ios.source_files  = "aarqAdamData/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqAdamData/Info.plist"

  s.tvos.deployment_target = '10.2'
  s.tvos.source_files  = "aarqAdamDataTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqAdamDataTvOS/Info.plist"

  s.watchos.deployment_target = '3.2'
  s.watchos.source_files  = "aarqAdamDataWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqAdamDataWatchOS/Info.plist"

  s.swift_version = '5.5'

  s.static_framework = true

end
