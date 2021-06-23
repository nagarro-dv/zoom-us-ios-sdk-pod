#
#  Be sure to run `pod spec lint ZoomSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ZoomSDK"
  spec.version      = "5.5.12511.04210" # remove last digit for final upload
  spec.summary      = "Original framework for Zoom.US iOS SDK"
  spec.homepage     = "https://marketplace.zoom.us/docs/guides/build/sdk-app"
  spec.license      = "MIT"
  spec.author             = { "Jim Ji" => "jim.ji@nagarro.com" }

  spec.swift_version              = "5.0"
  spec.ios.deployment_target      = "10.0"

  spec.source       = { :git => "https://github.com/nagarro-dv/zoom-us-ios-sdk-pod.git", :tag => "v#{spec.version}" }

  spec.default_subspec = 'Core'
  spec.requires_arc = true

  spec.subspec 'Core' do |subspec|
    # subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    # subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "MobileRTC.xcframework"

    subspec.ios.resource = "MobileRTCResources.bundle"
  end

  # Uncomment when this library will be support Swift 5 or higher
  # spec.subspec 'ShareScreen' do |subspec|
  #   subspec.ios.dependency 'Core'

  #   subspec.ios.source_files            = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.public_header_files     = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.vendored_frameworks     = "MobileRTCScreenShare.framework"
  # end

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end