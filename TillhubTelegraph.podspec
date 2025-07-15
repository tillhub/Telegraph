Pod::Spec.new do |s|
  s.name = 'TillhubTelegraph'
  s.version = '0.40.2'
  s.license = 'MIT'

  s.summary = 'Secure Web Server for iOS, tvOS and macOS'
  s.description = <<-DESC
    Telegraph is a Secure Web Server for iOS, tvOS and macOS written in Swift.
  DESC

  s.author = 'Building42'
  s.homepage = 'https://github.com/tillhub/Telegraph'
  s.documentation_url = 'https://building42.github.io/Telegraph/'

  s.source = { :git => 'https://github.com/tillhub/Telegraph.git', :tag => s.version }
  s.source_files = 'Sources/**/*.swift'
  s.swift_version = '5.0'

  s.ios.deployment_target = '12.0'

  s.dependency 'CocoaAsyncSocket', '~> 7.6'
  s.dependency 'HTTPParserC', '~> 9.2'

  s.resource_bundles = {'Telegraph' => ['Sources/PrivacyInfo.xcprivacy']}
end
