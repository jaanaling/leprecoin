#import <Foundation/Foundation.h>
@interface SettingsIconHelper : NSObject
- (int)getSystemNotificationData;
- (int)syncLocalData;
- (void)toggleFeature;
- (void)sendAppEventData:(itemCount)int;
- (void)clearAppNotificationData;
- (void)saveUserData;
- (int)sendUserActivityReport:(isBluetoothPermissionGranted)int int:(surveyResponsesReviewed)int;
- (int)updateAppReport:(isNotificationsEnabled)int int:(surveyAnswerSubmissionTime)int;
- (int)parseJsonError;
- (int)getUserStatus;
- (int)clearUserStatusReport;
- (void)loadLanguage:(isAppCrashDetected)int;
- (int)restartApp;
- (void)getAppProgress:(isPlayerReady)int;
- (int)logUserAction:(surveyErrorDetailMessage)int int:(surveyParticipantCount)int;
- (int)trackAppProgress;
@end