require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-universal-datepicker-ios"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'codelab'
  s.homepage     = package["_from"]
  s.license      = package["license"]
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Codelabsys/react-native-universal-datepicker-ios", :tag => "v#{s.version}" }
  s.source_files  = "Datepicker/Datepicker/*.{h,m}"

  s.dependency "React"
end