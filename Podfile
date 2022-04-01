platform :ios, '11.0'
pod 'SwiftLint'

target 'MovieApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for StepIntoSwift
  pod 'RxCocoa', '~> 5'
  pod 'RxDataSources', '~> 4.0'
  pod 'RxSwift', '~> 5'
  pod 'SnapKit', '~> 5.0.0'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '5.0'
    end
  end
end