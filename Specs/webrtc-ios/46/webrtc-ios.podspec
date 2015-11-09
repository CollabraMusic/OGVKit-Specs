Pod::Spec.new do |s|

  s.name         = "webrtc-ios"
  s.version      = "46"
  s.platform     = :ios, '7.0'
  s.summary      = "Pre-compiled library for libWebRTC."

  s.homepage     = "www.collabramusic.com"
  s.author       = { "Brandon Kobel" => "brandon@collabramusic.com" }

  s.source       = { :http => "https://bitbucket.org/collabra/webrtc-ios/raw/462a712dd456e553b06f88cdc57239626d3fefa3/webrtc-ios-46.zip" }

  s.source_files  = "include/*.h", "include/libvpx/*.h"
  s.exclude_files = "include/talk/examples"

  s.requires_arc = true 
  s.frameworks   = 'QuartzCore', 'OpenGLES', 'GLKit', 'CoreAudio', 'CoreMedia', 'CoreVideo', 'AVFoundation', 'AudioToolbox', 'UIKit', 'Foundation', 'CoreGraphics', 'VideoToolbox'
  s.libraries = 'c', 'sqlite3', 'stdc++'
  s.vendored_libraries = "lib/libWebRTC-#{s.version}-arm-intel-Release.a"

  s.preserve_paths = 'include/*', 'include/libvpx/*', 'lib/*.a'

  s.xcconfig = {
                  'GCC_PREPROCESSOR_DEFINITIONS' => 'V8_DEPRECATION_WARNINGS EXPAT_RELATIVE_PATH FEATURE_ENABLE_VOICEMAIL JSONCPP_RELATIVE_PATH LOGGING=1 SRTP_RELATIVE_PATH FEATURE_ENABLE_SSL FEATURE_ENABLE_PSTN HAVE_SCTP HAVE_SRTP HAVE_WEBRTC_VIDEO HAVE_WEBRTC_VOICE DISABLE_NACL CHROMIUM_BUILD CR_CLANG_REVISION=239765-1 USE_LIBJPEG_TURBO=1 ENABLE_CONFIGURATION_POLICY SYSTEM_NATIVELY_SIGNALS_MEMORY_PRESSURE DONT_EMBED_BUILD_METADATA CLD_VERSION=2 DISABLE_FTP_SUPPORT=1 V8_USE_EXTERNAL_STARTUP_DATA IOS WEBRTC_MAC WEBRTC_IOS CARBON_DEPRECATED=YES HASH_NAMESPACE=__gnu_cxx WEBRTC_POSIX DISABLE_DYNAMIC_CAST _REENTRANT USE_LIBPCI=1 USE_OPENSSL=1 NDEBUG NVALGRIND DYNAMIC_ANNOTATIONS_ENABLED=0',
                  'OTHER_LDFLAGS' => '-ObjC'
               }

  s.license      = {
    :type => 'http://www.webrtc.org/license-rights/license',
    :text => <<-LICENSE
      Copyright (c) 2011, The WebRTC project authors. All rights reserved.

      Redistribution and use in source and binary forms, with or without
      modification, are permitted provided that the following conditions are
      met:

        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.

        * Redistributions in binary form must reproduce the above copyright
          notice, this list of conditions and the following disclaimer in
          the documentation and/or other materials provided with the
          distribution.

        * Neither the name of Google nor the names of its contributors may
          be used to endorse or promote products derived from this software
          without specific prior written permission.

      THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
      "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
      LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
      A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
      HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
      SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
      LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
      DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
      THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
      (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
      OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
      LICENSE
  }


end
