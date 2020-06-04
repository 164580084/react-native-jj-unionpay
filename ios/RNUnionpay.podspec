require "json"
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNUnionpay"
  s.version      = package['version']
  s.summary      = package["description"]
  s.license      = "MIT"
  s.author       = "qijingyu2013"
  s.platform     = :ios, "8.0"
  s.homepage     = "https://github.com/qijingyu2013/react-native-jy-unionpay"
  s.source       = { :git => "https://github.com/qijingyu2013/react-native-jy-unionpay", :tag => "v1.0.0" }
  s.source_files = "RNUnionpay/**/*.{h,m}"
  s.requires_arc = true
  s.frameworks   = 'CFNetwork','SystemConfiguration'
  s.libraries    = 'z'
  s.vendored_libraries = "RNUnionpay/paymentcontrol/*.a"

  s.dependency "React"

end

