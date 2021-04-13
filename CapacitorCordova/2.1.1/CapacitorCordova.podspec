Pod::Spec.new do |s|
  s.name         = "CapacitorCordova"
  s.module_name = 'Cordova'
  s.version      = '2.1.1'
  s.summary      = "Capacitor Cordova Compatibility Layer"
  s.homepage     = "https://ionic-team.github.io/capacitor"
  s.license      = 'MIT'
  s.authors      = { 'Ionic Team' => 'hi@ionicframework.com' }
  s.source       = { :git => 'https://github.com/jordimele/CapacitorCordova', :branch => 'develop' }
  s.platform     = :ios, 10.3
  s.source_files = 'CapacitorCordova/**/*.{h,m}'
  s.public_header_files = 'CapacitorCordova/Classes/Public/*.h'
  s.requires_arc = true
  s.framework    = "WebKit"
end
