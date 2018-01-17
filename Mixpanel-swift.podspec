Pod::Spec.new do |s|
  s.name = 'Mixpanel-swift'
  s.version = '2.3.1'
  s.module_name = 'MixpanelSwift'
  s.license = 'Apache License, Version 2.0'
  s.summary = 'MixpanelSwift tracking library for iOS (Swift)'
  s.homepage = 'https://MixpanelSwift.com'
  s.author       = { 'MixpanelSwift, Inc' => 'support@MixpanelSwift.com' }
  s.source       = { :git => 'https://github.com/MixpanelSwift/MixpanelSwift-swift.git',
                     :tag => "v#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.ios.resources = ['MixpanelSwift/**/*.{png,xib,storyboard}']
  s.ios.frameworks = 'UIKit', 'Foundation', 'CoreTelephony'
  s.default_subspec = 'Complete'
  base_source_files = ['MixpanelSwift/Network.swift', 'MixpanelSwift/FlushRequest.swift', 'MixpanelSwift/PrintLogging.swift', 'MixpanelSwift/FileLogging.swift',
    'MixpanelSwift/Logger.swift', 'MixpanelSwift/JSONHandler.swift', 'MixpanelSwift/Error.swift', 'MixpanelSwift/AutomaticProperties.swift',
    'MixpanelSwift/Constants.swift', 'MixpanelSwift/MixpanelSwiftType.swift', 'MixpanelSwift/MixpanelSwift.swift', 'MixpanelSwift/MixpanelSwiftInstance.swift',
    'MixpanelSwift/Persistence.swift', 'MixpanelSwift/Flush.swift','MixpanelSwift/Track.swift', 'MixpanelSwift/People.swift', 'MixpanelSwift/AutomaticEvents.swift',
    'MixpanelSwift/ReadWriteLock.swift']
  s.tvos.deployment_target = '9.0'
  s.tvos.frameworks = 'UIKit', 'Foundation'
  s.tvos.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '$(inherited) -D TV_OS'
  }
  s.osx.deployment_target = '10.10'
  s.osx.frameworks = 'Cocoa', 'Foundation'
  s.osx.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '$(inherited) -D MAC_OS'
  }

  s.subspec 'Complete' do |ss|
    ss.ios.pod_target_xcconfig = {
      'OTHER_SWIFT_FLAGS' => '$(inherited) -D DECIDE'
    }
    ss.ios.source_files = 'MixpanelSwift/*.swift'
    ss.tvos.source_files = base_source_files
    ss.osx.source_files = base_source_files
  end

  s.subspec 'Core' do |ss|
    ss.ios.source_files = base_source_files
    ss.tvos.source_files = base_source_files
    ss.osx.source_files = base_source_files
  end
end
