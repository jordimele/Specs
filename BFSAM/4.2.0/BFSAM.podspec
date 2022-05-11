Pod::Spec.new do |s|

  s.name         = "BFSAM"
  s.version      = "4.2.0"
  s.summary      = "SAMPLES - summary demo"
  s.description  = <<-DESC "SAMPLES - description demo"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25472366"
  s.license      = { :type => "Commercial" }
  
  s.author       = "OpenTrends"
  s.source       = { :git => "https://git.svb.lacaixa.es/APPDEM_ios/SAMPLES.git", :tag => s.version }
  
  s.source_files  = "Shared",  "Shared/{Initializers,IntegrationLayer}/*.{h,m,swift,plist}"
  s.resources = [ 'Shared/Localization/*.lproj', 'Shared/local_HTML_resources/*.html' ]
  s.exclude_files = "SAMPLES/Exclude/", "SAMPLES/AppDelegate.swift", "SAMPLESTvOS/AppDelegate.swift", "SAMPLESWatchOS Extension/ComplicationController.swift", "SAMPLESWatchOS Extension/ExtensionDelegate.swift", "SAMPLESWatchOS Extension/NotificationController.swift"

  s.ios.deployment_target = '10.3'
  s.tvos.deployment_target = '10.2'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'

  s.pod_target_xcconfig = {
      'OTHER_CFLAGS' => '$(inherited)'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'Commons_APPDEM/Core', '4.2.0'
  
  s.ios.source_files  = "Shared/Features/**/*.{h,m,swift,plist}" , "SAMPLES/Features/**/*.{h,m,swift,plist}"
  s.ios.resources = [ 'SAMPLES/**/*.{png,jpeg,jpg,xib,xcassets,imageset,json,storyboard}' ]
  s.ios.exclude_files = "SAMPLES/Info.plist"
  
  s.tvos.source_files  = "Shared/Features/Movements/**/*.{h,m,swift,plist}", "SAMPLESTvOS/**/*.{h,m,swift,plist}"
  s.tvos.resources = [ 'SAMPLESTvOS/**/*.storyboard' ]
  s.tvos.exclude_files = "SAMPLESTvOS/Info.plist"
  
  s.watchos.source_files  = "Shared/Features/Movements/**/*.{h,m,swift,plist}", "SAMPLESWatchOS/**/*.{h,m,swift,plist}" , "SAMPLESWatchOS Extension/**/*.{h,m,swift,plist}"
  s.watchos.resources = [ 'SAMPLESWatchOS/**/*.{png,jpeg,jpg,xcassets,imageset,json}', 'SAMPLESWatchOS Extension/**/*.{xcassets,imageset,json,apns}' ]
  s.watchos.exclude_files = "SAMPLESWatchOS/Exclude/", "SAMPLESWatchOS/Info.plist", "SAMPLESWatchOS Extension/Info.plist"

end
