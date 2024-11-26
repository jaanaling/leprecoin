#import <Foundation/Foundation.h>
@interface ConstantsLog : NSObject
- (int)logCrashData;
- (void)getNotificationReport:(appLaunchStatus)int;
- (int)sendScreenVisitReport;
- (void)getScreenSize:(fileVerificationStatus)int int:(appStateData)int;
- (int)getUserActivityLogs;
- (void)clearLocation:(surveyCompletionMessageStatusText)int;
- (int)sendUserReport:(themeMode)int int:(surveyAnswerReviewCompletionTimeStatusText)int;
- (void)recordLaunchTime;
- (void)clearAnalyticsData:(surveyAnswerCompletionMessage)int;
- (int)loadUserData:(surveyAnswerReviewCompletionTimeStatusText)int;
- (void)setPushNotificationLogs:(taskList)int;
- (int)clearUserProfile:(taskCompletionStatus)int int:(isRecording)int;
- (int)clearActivityLog:(surveyAnswerCompletionMessage)int int:(appDownloadStatus)int;
- (int)pauseApp;
- (int)getMessageNotificationLogs:(selectedItemTrack)int;
- (void)getMessageData;
- (int)checkPermissions:(appThemeSettings)int;
- (int)clearLaunchData:(fileFormat)int;
@end