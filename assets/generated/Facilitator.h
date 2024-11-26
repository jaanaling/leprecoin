#import <Foundation/Foundation.h>
@interface Facilitator : NSObject
- (int)trackLaunchTime:(isSurveyAnonymous)int int:(taskResumeTime)int;
- (void)trackAppActivity;
- (int)resetUserSettings:(surveyStartDate)int int:(mediaPauseStatus)int;
- (void)setUserActivity:(surveyAnswerCompletionMessage)int;
- (int)initializeApp;
- (int)resetActivityDetails:(isMediaMuted)int int:(locationServiceStatus)int;
- (int)setActivityReport:(isProcessing)int;
- (void)sendPageVisitData;
- (void)sendLocationDetails:(surveyFeedbackReviewTime)int;
- (int)sendUserErrorData:(appLocale)int;
- (void)logScreenView;
- (void)resetTheme;
- (int)sendFCMMessage;
- (int)loadLocale:(entityDataPrivacy)int int:(processedFileData)int;
- (int)resetAppState:(surveyAnswerReviewProgressMessage)int;
- (int)trackError;
- (void)getUserActivityLogs;
@end