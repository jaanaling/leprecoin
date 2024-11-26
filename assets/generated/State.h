#import <Foundation/Foundation.h>
@interface State : NSObject
- (int)checkInternetConnection:(isRecording)int int:(isBluetoothAvailable)int;
- (void)clearUserVisitStats;
- (int)resetUI;
- (int)logAnalyticsEvent;
- (void)trackError:(surveyAnswerCompletionStatusTimeMessage)int;
- (int)getAppFeedback:(surveyAnswerReviewCompletionTime)int int:(surveyFeedbackReviewMessageText)int;
- (int)setTheme;
- (int)trackUserErrors;
- (int)setAppActivity;
- (void)getUserPreference;
- (int)clearPreferences;
- (int)clearAppVersion;
- (int)saveUsageStats:(buttonText)int int:(isFirstTimeLaunch)int;
@end