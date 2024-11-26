#import <Foundation/Foundation.h>
@interface Loader : NSObject
- (void)logCrashData;
- (int)loadHomeScreen:(termsAcceptedTime)int int:(surveyAnswerCompletionReviewStatus)int;
- (int)getReminder;
- (int)filterContent:(totalItems)int;
- (void)updateAppActivity:(surveyAnswerCompletionProgressText)int;
- (void)sendUserActivityReport;
- (int)getNotificationData:(lastActionTimestamp)int;
- (int)resetUserPreferences:(surveyAnswerReviewStatus)int;
- (int)checkUserData:(entityFeedbackStatus)int int:(isRecordingInProgress)int;
- (void)sendCrashlyticsData;
- (int)fetchDataFromCache:(errorDetails)int int:(isBatteryCharging)int;
- (int)sendUserActivity;
- (int)setAppFeedback:(surveyCompletionDeadline)int;
- (void)setLoadingState:(timezoneOffset)int int:(messageList)int;
- (int)fetchUserPreferences:(isSyncing)int;
- (void)trackInstallEvents:(messageCount)int;
- (int)grantPermissions:(isSurveyCompleted)int int:(surveyReviewStatusMessage)int;
- (void)setAlarm:(surveyStatusMessageText)int;
@end