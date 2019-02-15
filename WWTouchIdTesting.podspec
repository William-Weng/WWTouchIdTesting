Pod::Spec.new do |s|

  s.name         				= "WWTouchIdTesting"
  s.version      				= "0.2.0"
  s.summary      				= "WWTouchIdTesting is TouchID / FaceID package. (使用TouchID / FaceID的封裝)"
  s.homepage     				= "https://github.com/William-Weng/WWTouchIdTesting"
  s.license      				= { :type => "MIT", :file => "LICENSE" }
  s.author             			= { "翁禹斌(William.Weng)" => "linuxice0609@gmail.com" }
  s.platform 					= :ios, "10.0"
  s.ios.vendored_frameworks 	= "WWTouchIdTesting.framework"
  s.source 						= { :git => "https://github.com/William-Weng/WWTouchIdTesting.git", :tag => "#{s.version}" }
  s.frameworks 					= 'UIKit', 'LocalAuthentication'
  
end
