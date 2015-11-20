Pod::Spec.new do |s|

  s.name         = "libvpx"
  s.version      = "1.4.0-chrome-45"
  s.platform     = :ios, '7.0'
  s.summary      = "Pre-compiled library for libvpx"

  s.homepage     = "www.collabramusic.com"
  s.author       = { "Brandon Kobel" => "brandon@collabramusic.com" }

  s.source       = { :http => "https://bitbucket.org/collabra/ios-libs/raw/b39a5eb15d5ce1d9f1f5ea86785639a69ee09f40/libvpx-chrome-45.zip" }

  s.source_files  = "include/*.h"

  s.requires_arc = true 
  
  s.vendored_libraries = "lib/libvpx.a"

  s.preserve_paths = 'include/*', 'lib/*'

end
