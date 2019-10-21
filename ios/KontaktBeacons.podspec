require 'json'
package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name          = "KontaktBeacons"
  s.version       = package['version']
  s.summary       = "KontaktBeacons"
  s.description   = <<-DESC
                   Cross-platform React Native module for detecting beacons with Android and iOS devices.
                   DESC
  s.license       = "MIT"
  s.homepage      = "https://github.com/mingmingtong/react-native-kontaktio"
  s.author        = { "MingMing Tong" => "mingmingtong8@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source         = { :git => "https://github.com/mingmingtong/react-native-kontaktio.git", :tag => "master" }
  s.source_files  = "*.{h,m}"
  s.static_framework = true
  s.vendored_frameworks = 'KontaktSDK.framework'
  s.requires_arc  = true

  s.dependency "React"

end
