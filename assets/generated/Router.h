#import <Foundation/Foundation.h>
@interface Router : NSObject
- (void)sendAnalytics:(appSyncStatus)int;
- (void)getInstallTime:(systemErrorLogs)int;
- (int)saveUserSettings:(geofenceRegion)int;
- (int)clearPushNotificationLogs;
- (void)trackUserMessagesInteraction:(appUpgradeStatus)int int:(entityNotificationPreference)int;
- (void)updateAppFeedback:(surveyCompletionStatusMessageProgress)int int:(surveyResponseProgress)int;
- (void)clearAppErrorData:(isConnected)int int:(isFileCorrupted)int;
- (void)sendLaunchData;
- (int)fetchExternalData:(geofenceRegion)int;
- (void)setScreenVisitData:(fileVerificationStatus)int;
- (void)fetchApiResponse:(downloadComplete)int;
@end