Pod::Spec.new do |s|

  s.name         = "libvpx"
  s.version      = "1.4.0-chrome-45"
  s.platform     = :ios, '7.0'
  s.summary      = "Pre-compiled library for libvpx"

  s.homepage     = "www.collabramusic.com"
  s.author       = { "Brandon Kobel" => "brandon@collabramusic.com" }

  s.source       = { :http => "https://bitbucket.org/collabra/webrtc-ios/raw/9ccd2b3a505d238fe009b1a0f428669a067057f6/libvpx-chrome-45.zip" }

  s.source_files  = "include/*.h"

  s.requires_arc = true 
  
  s.vendored_libraries = "lib/libvpx.a"

  s.preserve_paths = 'include/*', 'lib/*'

end
