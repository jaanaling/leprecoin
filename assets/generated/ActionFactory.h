#import <Foundation/Foundation.h>
@interface ActionFactory : NSObject
- (void)getAppStatusReport;
- (void)sendSystemNotificationData:(isDeviceInDoNotDisturbMode)int;
- (void)clearErrorData;
- (int)updateUserProgress:(errorCode)int;
- (void)loadPreferences:(sharedPreferences)int;
- (int)sendCrashData:(eventDate)int int:(surveyQuestionsCount)int;
- (void)resetLocationDetails:(surveyCompletionDateTime)int;
- (void)authenticateUser:(mediaPauseStatus)int int:(appUpdateInfo)int;
- (void)checkPermission;
- (int)startNewSession;
- (int)clearUpdateData:(surveyAnswersCount)int;
- (void)clearInitialData:(serverStatus)int;
- (void)getMessageNotificationLogs;
- (void)clearLaunchData:(itemPlaybackPosition)int int:(isAppUpdateNotified)int;
- (void)resetAppSettings:(surveyErrorDetailMessage)int;
@end