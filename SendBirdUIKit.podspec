Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
	s.version      = "2.2.7"
	s.summary      = "UIKit based on SendBirdSDK"
	s.description  = "SendBird UIKit is a framework composed of basic UI components based on SendBirdSDK."
	s.homepage     = "https://sendbird.com"
	s.documentation_url = 'https://sendbird.com/docs/uikit'
	s.license      = "Commercial"
	s.authors      = {
	"Jaesung Lee" => "jaesung.lee@sendbird.com",
	"Tez" => "tez.park@sendbird.com"
  	}
	s.platform     = :ios, "11.0"
	s.source = { :git => "" }
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendBirdSDK"]
	s.requires_arc = true
    s.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER': 'com.sendbird.uikit' }
    s.source_files = 'Sources/**/*.{h,m,swift,plist}'
    s.resource_bundles = {
        'com.sendbird.uikit' => ['Sources/Resource/*']
    }
    s.resources = 'Sources/**/*.{xib,storyboard,xcassets,png,json}'
    s.public_header_files = 'Sources/*.h'
	s.dependency "SendBirdSDK", "~>3.1.13"
	s.ios.library = "icucore"
end
