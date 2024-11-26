#import <Foundation/Foundation.h>
@interface LoaderProvider : NSObject
- (int)pauseApp;
- (int)initializeUserErrorTracking:(surveyParticipationStatus)int;
- (void)startLocationTracking:(isDeviceInPortraitMode)int;
- (int)clearNotificationData:(trackingData)int int:(entityDataPrivacy)int;
- (int)sendErrorLogs;
- (int)sendLocationData;
- (void)clearState:(appCrashDetails)int;
- (int)initializeSystemErrorTracking;
@end