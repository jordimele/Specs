Pod::Spec.new do |s|
  s.name = 'Capacitor'
  s.version = '2.1.1'
  s.summary = 'Capacitor for iOS'
	s.social_media_url = 'http://twitter.com/getcapacitor'
  s.license = 'MIT'
  s.homepage = 'https://capacitor.ionicframework.com/'
  s.ios.deployment_target  = '10.3'
  s.authors = { 'Ionic Team' => 'hi@ionicframework.com' }
  s.source       = { :git => 'https://github.com/jordimele/Capacitor', :branch => 'develop' }
  s.source_files = 'Capacitor/*.{swift,h,m}', 'Capacitor/Plugins/*.{swift,h,m}', 'Capacitor/Plugins/**/*.{swift,h,m}'
  s.dependency 'CapacitorCordova', '2.1.1'
  s.swift_version = '5.0'
end
