Pod::Spec.new do |s|

  s.name         = "libvpx"
  s.version      = "chrome-46"
  s.platform     = :ios, '7.0'
  s.summary      = "Pre-compiled library for libvpx"

  s.homepage     = "www.collabramusic.com"
  s.author       = { "Brandon Kobel" => "brandon@collabramusic.com" }

  s.source       = { :http => "https://bitbucket.org/collabra/webrtc-ios/" }

  s.source_files  = "include/*.h"

  s.requires_arc = true 
  
  s.vendored_libraries = "lib/libvpx.a"

  s.preserve_paths = 'include/*', 'lib/*.a'

end
