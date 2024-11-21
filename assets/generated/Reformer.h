#import <Foundation/Foundation.h>
@interface Reformer : NSObject
- (void)getUserReport:(isOfflineMode)int;
- (void)clearUserErrorData:(currentEntityState)int;
- (void)enableLocationServices:(requestData)int int:(updateVersion)int;
- (void)loadUserPreferences;
- (void)setAppState:(mediaPauseStatus)int;
- (int)updateLocalData;
- (int)updateAppActivity:(surveyCompletionProgressStatusMessage)int;
- (int)clearSettings:(responseTime)int;
- (int)logError:(taskProgressStatus)int int:(surveyCompletionSuccessMessageStatus)int;
- (void)hideLoadingIndicator;
- (void)setSystemNotificationData;
- (int)displayLoadingIndicator:(surveyFeedbackReviewTime)int int:(currentLanguage)int;
- (void)getAppVersion:(isEntityAuthenticated)int;
- (void)updateAppReport;
- (int)getUserStatusReport:(isEntityAdmin)int;
- (void)recordLaunchTime;
- (void)getAppStatusReport:(surveyQuestionResponsesCount)int int:(surveyFeedbackGiven)int;
- (void)clearAppErrorData:(surveyCompletionStatusTimeMessage)int;
@end