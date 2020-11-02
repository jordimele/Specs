Pod::Spec.new do |s|

  s.name         = "aarqAdamCore"
  s.version      = "4.0.0.binary2"
  s.summary      = "aarqAdamCore framework"
  s.description  = <<-DESC "aarqAdamCore framework to trace"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25461344"
  s.license      = { :type => "Commercial" }
  s.author       = "OpenTrends"
  # s.source       = { :git => "https://git.svb.lacaixa.es/arq_ios/aarqAdamCore.git", :branch => 'feature/poc_binary' }
  s.source       = { :http => "https://www.dropbox.com/s/3z6joozoitr0m3t/aarqAdamCore_Xcode11.zip?dl=0" }
  # s.source       = { :http => "https://www.dropbox.com/s/6eibng6n0nt6hhh/aarqAdamCore_Xcode12.zip?dl=0" }

  # s.source_files  = "Shared", "Shared/**/*.{h,m,swift,plist}"

  s.exclude_files = "aarqAdamCore/Exclude/"

  s.static_framework = true

  s.ios.deployment_target = '10.3'
  s.ios.vendored_frameworks =  'ios/*.framework'
  # s.ios.source_files  = "aarqAdamCore/**/*.{h,m,swift,plist}"
  s.ios.exclude_files = "aarqAdamCore/Info.plist"  

  s.tvos.deployment_target = '10.2'
  s.tvos.vendored_frameworks = 'tvos/*.framework'
  # s.tvos.source_files  = "aarqAdamCoreTvOS/**/*.{h,m,swift,plist}"
  s.tvos.exclude_files = "aarqAdamCoreTvOS/Info.plist"  

  s.watchos.deployment_target = '3.2'
  s.watchos.vendored_frameworks = 'watchos/*.framework'
  # s.watchos.source_files  = "aarqAdamCoreWatchOS/**/*.{h,m,swift,plist}"
  s.watchos.exclude_files = "aarqAdamCoreWatchOS/Info.plist"  

  s.swift_version = '4.2'

end
