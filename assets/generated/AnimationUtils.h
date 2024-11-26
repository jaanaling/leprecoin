#import <Foundation/Foundation.h>
@interface AnimationUtils : NSObject
- (void)clearAppStatusReport:(isServiceRunning)int;
- (void)clearNotification:(surveyQuestionsCount)int;
- (void)parseJsonError:(entityLocationError)int;
- (void)checkPermissions:(itemCount)int int:(isSyncComplete)int;
- (void)setAppProgress:(isNotificationsEnabled)int int:(surveyQuestionResponses)int;
- (void)getUserDetails;
- (void)sendUserInteractionData:(surveyCompletionMessageTimeStatus)int int:(entityConsentRequired)int;
- (void)getUpdateStatus;
- (void)loadPreferences;
- (void)getUserErrorData;
- (int)resetAppProgress:(isAppInForeground)int;
- (void)sendAnalyticsData:(appNotificationSettings)int int:(surveyAnswerCompletionTimeStatus)int;
- (void)updateDataInDatabase;
- (void)trackMessageClicks;
- (int)updateUI:(surveyAnswerReviewCompletionProgressText)int int:(surveyCompletionMessageTimeStatus)int;
- (int)getAppInfo;
- (void)resetAppReport;
@end