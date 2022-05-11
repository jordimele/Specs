Pod::Spec.new do |s|

  s.name         = "BFSAM_E"
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

  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'
  
  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) APP_EXTENSION=1',
    'OTHER_SWIFT_FLAGS' => '$(inherited) -DAPP_EXTENSION',
    'OTHER_CFLAGS' => '$(inherited)'
  }

  # ――― Dependencies ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.dependency 'Commons_APPDEM_Extension', '4.2.0'

  s.watchos.source_files  = "Shared/Features/Movements/**/*.{h,m,swift,plist}", "SAMPLESWatchOS/**/*.{h,m,swift,plist}" , "SAMPLESWatchOS Extension/**/*.{h,m,swift,plist}", "Shared/Features/SendMessages/**/*.{h,m,swift,plist}"
  s.watchos.resources = [ 'SAMPLESWatchOS/**/*.{png,jpeg,jpg,xcassets,imageset,json}', 'SAMPLESWatchOS Extension/**/*.{xcassets,imageset,json,apns}' ]
  s.watchos.exclude_files = "SAMPLESWatchOS/Exclude/", "SAMPLESWatchOS/Info.plist", "SAMPLESWatchOS Extension/Info.plist"

end
