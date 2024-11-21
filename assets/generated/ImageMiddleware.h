#import <Foundation/Foundation.h>
@interface ImageMiddleware : NSObject
- (void)setProgressStatus;
- (void)syncDataWithServer:(isDarkMode)int;
- (int)sendSystemErrorReport;
- (int)updateLocationDetails;
- (int)checkNetwork:(isTaskInProgress)int;
- (int)sendAppEventData:(isDeviceCompatible)int int:(currentSong)int;
- (void)clearUserInteractionData;
- (int)clearMessageData:(itemVolumeLevel)int;
@end