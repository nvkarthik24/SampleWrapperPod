#
# Be sure to run `pod lib lint SampleWrapperPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SampleWrapperPod"
  s.version          = "0.1.1"
  s.summary          = "Sample Wrapper class for learning"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  

  s.homepage         = "https://github.com/nvkarthik24/SampleWrapperPod"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Vigneshkarthik" => "nvkarthik24@gmail.com" }
  s.source           = { :git => "https://github.com/nvkarthik24/SampleWrapperPod.git", :tag => s.version.to_s, :submodules => true  }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

s.source_files = '*.{h,m}'
  s.resource_bundles = {
    'SampleWrapperPod' => ['*.png']
  }

  # s.public_header_files = 'SampleWrapperPod/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.3'

s.subspec 'SampleWrapper' do |ss|
ss.source_files = 'SampleWrapper.{h,m}'
ss.public_header_files = 'SampleWrapper.h'
end

s.subspec 'SampleWrapperDelegate' do |ss|
ss.source_files = 'SampleWrapperDelegate.{h,m}'
ss.public_header_files = 'SampleWrapperDelegate.h'
end

end
