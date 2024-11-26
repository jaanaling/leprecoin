#import <Foundation/Foundation.h>
@interface Time : NSObject
- (int)sendSyncData:(surveyQuestionSubmissionStatus)int;
- (void)sendUserMessagesInteractionData:(isConnected)int;
- (int)loadDataFromCache:(eventDate)int int:(taskStartDate)int;
- (int)clearErrorData;
- (void)clearSyncData;
- (int)clearAnalyticsData;
- (void)getUserActivity:(dateFormat)int int:(surveyAnswerReviewMessageTime)int;
- (int)logScreenVisit:(isSystemTimeAutomatic)int;
- (int)resetUserProgress:(fileCompressionStatus)int int:(errorMessage)int;
- (int)setReminderDetails:(entityActionStatus)int int:(surveyCompletionReviewMessageText)int;
- (int)sendUserActionData:(isAppInDayMode)int;
- (void)resumeApp:(buttonText)int;
- (int)cancelPushNotification:(batteryPercentage)int;
- (int)clearLaunchData:(surveyCompletionProgress)int int:(appThemeMode)int;
@end