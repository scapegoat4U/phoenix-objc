Pod::Spec.new do |s|
  s.name             = "Phoenix-ObjC"
  s.version          = "0.2.2"
  s.summary          = "Objective-C client for Phoenix."
  s.description      = <<-DESC
                       Objective-C client for Phoenix Framework
                       DESC
  s.homepage         = "https://github.com/RokkinCat/phoenix-objc"
  s.license          = 'MIT'
  s.author           = { "Josh Holtz" => "josh@rokkincat.com" }
  s.source           = { :git => "https://github.com/RokkinCat/phoenix-objc.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'Phoenix-ObjC' => ['Pod/Assets/*.png']
  }

  s.dependency 'SocketRocket', :git => 'https://github.com/scapegoat4U/SocketRocket.git', :tag => '0.4.xtag', :commit => '0d02a197ee6c7fed105a3117d2c3965a3296aa20'
  
  
end
