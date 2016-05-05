Pod::Spec.new do |s|
  s.name      = 'MobileVLCKit'
  s.version   = '3.0a1'
  s.summary   = "MobileVLCKit is an Objective-C wrapper for libvlc's external interface on iOS."
  s.homepage  = 'https://wiki.videolan.org/VLCKit/'
  s.license   = {
    :type => 'LGPLv2.1', :file => 'MobileVLCKit-binary/COPYING.txt'
  }
  s.authors   = 'Pierre d\'Herbemont', { 'Felix Paul Kühne' => 'fkuehne@videolan.org' }
  s.source    = {
    :http => 'https://bitbucket.org/collabra/ios-libs/raw/fe529d185c4043020f355b1cd695458990a7771a/MobileVLCKit-3.0a1.zip'
  }
  s.ios.vendored_framework = 'MobileVLCKit-binary/MobileVLCKit.framework'
  s.public_header_files = 'MobileVLCKit-binary/MobileVLCKit.framework/Headers/*.h'
  s.platform     = :ios, '7.0'
  s.frameworks = 'QuartzCore', 'CoreText', 'AVFoundation', 'Security', 'CFNetwork', 'AudioToolbox', 'OpenGLES', 'CoreGraphics', 'VideoToolbox', 'CoreMedia'
  s.libraries = 'stdc++', 'xml2', 'z', 'bz2', 'iconv'
  s.requires_arc = false
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
