#
# Be sure to run `pod lib lint SGMapView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SGMapView'
  s.version          = '0.1.0'
  s.summary          = 'A subclass of MKMapView which enhanced gesture control.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SGMapView adds single handed zoom-in and zoom-out function to MKMapView, double tap to enable single handed gesture.
                       DESC

  s.homepage         = 'https://github.com/mikechouto/SGMapView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mikechouto' => 'mikechouto@gmail.com' }
  s.source           = { :git => 'https://github.com/mikechouto/SGMapView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.ios.frameworks = 'MapKit'

  s.source_files = 'SGMapView/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SGMapView' => ['SGMapView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
