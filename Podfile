# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace 'OCModuleDemo.xcworkspace'

target 'OCModuleDemo' do
  use_frameworks!
end

target "CommonModule" do
  project 'Modules/CommonModule/CommonModule.xcodeproj'
  pod 'Objection', '1.6.1'
end

target "AModule" do
  project 'Modules/AModule/AModule.xcodeproj'
end

target "BModule" do
  project 'Modules/BModule/BModule.xcodeproj'
end
