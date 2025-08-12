//
//  LameUtil.h
//  SILKDecoder
//
//  Created by ymz on 2025/7/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LameUtil : NSObject
/**
 将 PCM 文件编码为 MP3
 @param pcmPath     原始 PCM 文件路径
 @param mp3Path     输出 MP3 文件路径
 @param sampleRate  PCM 采样率（Hz）
 @param bitrate     输出比特率（kbps）
 @return YES 成功，NO 失败
 */
+ (BOOL)pcmToMp3AtPath:(NSString *)pcmPath
               mp3Path:(NSString *)mp3Path
            sampleRate:(int)sampleRate
               bitrate:(int)bitrate;
@end

NS_ASSUME_NONNULL_END
