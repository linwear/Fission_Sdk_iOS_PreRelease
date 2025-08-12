// SKPSilkDecoder.h

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKPSilkDecoder : NSObject

+ (int)silk2pcmWithFile:(NSString *)silkFilePath
          outputPCMPath:(NSString *)pcmFilePath
             sampleRate:(int)sampleRate
                  error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
