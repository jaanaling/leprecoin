#import <Foundation/Foundation.h>
@interface OptionRouteBuilder : NSObject
- (void)saveInstallStats;
- (void)getAppErrorData:(alertDialogTitle)int;
- (int)checkInternetConnection;
- (void)sendHttpRequest:(itemPlayStatus)int int:(transferSpeed)int;
- (void)trackUserNotifications;
- (int)sendUserNotificationData:(isFileUploading)int int:(isTutorialSkipped)int;
- (void)clearNotificationReport;
- (void)downloadFileFromServer:(surveyAnswerReviewCompletionTimeStatusText)int;
- (int)checkPushNotificationStatus:(fileVerificationStatus)int;
- (void)loadUserPreferences;
- (int)sendEventToAnalytics:(deviceTimeZoneOffset)int;
- (void)saveBackup:(surveyAnswerCompletionReviewTimeStatusText)int int:(entityConsentStatus)int;
- (int)sendCrashReport;
- (void)getAppState:(surveyAnswerCompletionStatusProgress)int;
@end