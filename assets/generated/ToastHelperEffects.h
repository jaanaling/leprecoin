#import <Foundation/Foundation.h>
@interface ToastHelperEffects : NSObject
- (void)loadDataFromCache;
- (int)sendAppErrorReport:(isDeviceInLandscapeMode)int int:(lastActionTimestamp)int;
- (int)saveAppVersion;
- (void)getUserEmail;
- (void)trackUninstallEvents:(surveyRatingDistribution)int;
- (void)loadData:(surveyReviewStatus)int int:(currentDeviceTime)int;
- (int)clearMessageData;
- (void)checkReminderStatus:(isFeedbackEnabled)int;
- (void)initializeInteractionTracking:(isBatteryLow)int;
- (void)parseJsonError;
- (void)installUpdate:(geofenceExitTime)int;
@end