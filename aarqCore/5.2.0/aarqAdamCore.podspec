Pod::Spec.new do |s|

  s.name         = "aarqAdamCore"
  s.version      = "5.2.0"
  s.summary      = "aarqAdamCore framework"
  s.description  = <<-DESC "aarqAdamCore framework to trace"
                   DESC
  s.homepage     = "https://confluence.cloud.lacaixa.es/confluence/pages/viewpage.action?pageId=25461344"
  s.license      = { :type => "Commercial" }
  
  s.author       = "OpenTrends"
  s.source       = { :http => "http://nexusmaster.svb.lacaixa.es:8081/nexus/content/repositories/thirdparty/adam/ios/binary/test/5.2.0b/test-5.2.0b.zip" }

  s.ios.deployment_target = '10.3'
  s.tvos.deployment_target = '10.2'
  s.watchos.deployment_target = '3.2'

  s.swift_version = '5.5'
  
  s.vendored_frameworks = '*.xcframework'

end
