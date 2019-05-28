Pod::Spec.new do |s|  
    s.name              = 'RealmBinary'
    s.version           = '1.0.0'
    s.summary           = 'A really POC realm binary deploymentf.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'sdk@example.com' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    # s.platform          = :ios
    s.source            = { :http => 'https://www.dropbox.com/s/qgte6yzj3f3hu6o/RealmBinary42ALL.zip?dl=0' }
    
    # Investigar esta notación para alojar el .zip binario
    #s.source            = { :path => './RealmBinary42ALL.zip' }

    s.ios.deployment_target = '9.0'
    s.ios.vendored_frameworks =  'ios/*.framework'

    s.watchos.deployment_target = '2.2'
    s.watchos.vendored_frameworks = 'watchos/*.framework'

    s.tvos.deployment_target = '9.0'
    s.tvos.vendored_frameworks = 'tvos/*.framework'

    s.swift_version = '4.2'

    s.pod_target_xcconfig = {
        'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_CC'
      }

    s.static_framework = true
    
end  
