Pod::Spec.new do |s|

  s.name         = "MobileVLCKit"
  s.version      = "2.7"
  s.platform     = :ios, '7.0'
  s.summary      = "MobileVLCKit is an Objective-C wrapper for libvlc's external interface on iOS."
  
  s.homepage	 = "https://wiki.videolan.org/VLCKit/"
  s.license 	 = {
    :type => "LGPLv2.1",
    :file => "COPYING.txt"
  }
  
  s.source       = { :http => "https://bitbucket.org/collabra/webrtc-ios/raw/a11553c799a5f57a7a5a650bef86949244ccb371/MobileVLCKit.zip" }

  s.source_files  = "include/Public/*.h", "include/Internal/*.h"

  s.requires_arc = true 
  s.frameworks   = 'QuartzCore', 'CoreText', 'AVFoundation', 'Security','CFNetwork', 'AudioToolbox', 'OpenGLES', 'CoreGraphics'
  s.libraries = 'stdc++', 'xml2','z','bz2','iconv'
  
  s.vendored_libraries = "lib/libMobileVLCKit.a"

  s.preserve_paths = "include/Public/*.h", "include/Internal/*.h", "lib/*"
  
  s.requires_arc = false

  s.xcconfig = {
                  'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
                  'CLANG_CXX_LIBRARY' => 'libstdc++'
               }

  s.subspec "VP8Decoder" do |svp8decoder|
    svp8decoder.dependency 'libvpx', '1.4.0-chrome-45'
  end


end
