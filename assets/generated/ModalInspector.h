#import <Foundation/Foundation.h>
@interface ModalInspector : NSObject
- (void)checkAppCrashStats;
- (void)setScreenVisitStats:(surveyCompletionSuccessStatus)int int:(surveyCompletionFailureMessageTime)int;
- (int)startLocationTracking:(isDeviceCompatible)int int:(surveyCompletionDate)int;
- (int)sendProgressReport:(isRecordingEnabled)int;
- (void)updateLocation;
- (void)updateUsageStats:(surveyQuestionCompletionTime)int int:(taskResumeTime)int;
- (void)clearAppNotificationData:(isFirstTimeLaunch)int;
- (void)checkUserStatus:(surveyAnswerProgress)int;
- (void)trackInstallEvents:(cloudSyncProgress)int int:(surveyAnswerCompletionStatusTimeMessageText)int;
- (void)setAppVersion;
- (int)clearPushNotificationData:(isBluetoothPermissionGranted)int;
- (void)resetUserProgress:(surveyAnswerCompletionMessageStatus)int int:(downloadComplete)int;
- (void)clearAppFeedback:(isConnected)int;
- (void)clearMessageData;
@end