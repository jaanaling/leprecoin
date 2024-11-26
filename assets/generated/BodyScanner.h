#import <Foundation/Foundation.h>
@interface BodyScanner : NSObject
- (int)clearCache:(appStateData)int;
- (void)clearImageCache;
- (void)getProgressReport;
- (void)checkAppCrashStats;
- (void)saveBackup:(isAppEnabled)int;
- (void)clearMessageNotificationLogs:(surveyParticipationStatus)int;
- (int)sendCrashData;
- (void)cancelPushNotification:(fileName)int;
- (int)clearErrorEventData:(syncProgress)int;
- (void)sendUserMessagesInteractionData:(surveyCompletionMessageTimeStatus)int;
- (void)checkFCMMessageStatus;
- (void)saveUserPreferences:(featureEnableStatus)int int:(surveyAnswerCompletionTime)int;
- (void)sendTrackingData:(isDeviceInPowerSavingMode)int int:(currentEntityState)int;
@end