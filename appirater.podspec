Pod::Spec.new do |s|
  s.name        = 'Appirater'
  s.version     = '2.3.0'
  s.summary     = 'A utility that reminds your iPhone apps users to review the app.'
  s.license  = { :type => 'MIT', :text => 'Copyright 2017. Arash Payan. This library is distributed under the terms of the MIT/X11.' }

  s.homepage		= 'https://github.com/ChronicStim/appirater'

  s.platform                = :ios
  s.ios.deployment_target   = '9.0'
  s.requires_arc            = true

  s.source              = { :git => 'https://github.com/ChronicStim/appirater.git', :tag => s.version.to_s }
  s.source_files        = '*.{h,m}'
  s.resource_bundles	= {'Appirater' => ['*.lproj']}
  s.public_header_files = 'ATNavBarButton/*.h'
  s.frameworks          = 'CFNetwork', 'SystemConfiguration'
  s.dependency			'SCLAlertView-Objective-C', '>=2.0'
  s.weak_frameworks		= 'StoreKit'
end
