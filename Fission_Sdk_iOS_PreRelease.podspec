Pod::Spec.new do |spec|

  spec.name                     = "Fission_Sdk_iOS_PreRelease"
  spec.version                  = "3.2.9"
  spec.summary                  = "Fission智能手表SDK for iOS"
  spec.description              = <<-DESC
                                  Fission 智能手表的 iOS 框架，负责与智能手表设备通信等功能的封装｜Framework Function: iOS framework for Fission smart watch, which is responsible for the communication with the watch.
                                  DESC
  spec.homepage                 = "https://github.com/linwear/Fission_Sdk_iOS_PreRelease/tree/#{spec.version}/Fission_Sdk_iOS_PreRelease"
  spec.license                  = 'MIT'
  spec.author                   = { "WSR" => "921903719@qq.com" }
  spec.social_media_url         = 'https://www.linwear.com'
  spec.platform                 = :ios, '13.0'
  spec.source                   = { :git => "https://github.com/linwear/Fission_Sdk_iOS_PreRelease.git", :tag => spec.version.to_s }
  spec.documentation_url        = 'https://github.com/linwear/Fission_Sdk_iOS_PreRelease/blob/main/README.md'
  spec.requires_arc             = true
  spec.frameworks               = 'Foundation', 'CoreBluetooth'
  spec.vendored_frameworks      = 'Fission_Sdk_iOS.framework'

  public_header_files           = 'Fission_Sdk_iOS.framework/Headers/*.{h,m}'

  spec.subspec 'Headers' do |spec|
    spec.source_files           = public_header_files
    spec.public_header_files    = public_header_files
  end

  spec.subspec 'rtk_dependencys' do |rtk|
    rtk.vendored_frameworks     = 'RTKOTASDK.xcframework', 'RTKLEFoundation.xcframework', 'RTKRealChatConnection.xcframework', 'RTKAudioStreaming.xcframework', 'libRTKCompression.xcframework'
  end

  spec.subspec 'hs_dependencys' do |hs|
    hs.vendored_frameworks     = 'SCompressLib.framework', 'opus.framework', 'FFmpeg/ffmpegkit.xcframework', 'FFmpeg/libavfilter.xcframework', 'FFmpeg/libswscale.xcframework', 'FFmpeg/libswresample.xcframework', 'FFmpeg/libavcodec.xcframework', 'FFmpeg/libavutil.xcframework', 'FFmpeg/libavformat.xcframework', 'FFmpeg/libavdevice.xcframework', 'slm_remote_iOS.framework'
  end

  spec.pod_target_xcconfig      = { 
                                    'OTHER_LDFLAGS' => '-lObjC',
                                  }
                                    
end
