#import <Foundation/Foundation.h>
@interface Tree : NSObject
- (int)hideErrorMessage;
- (void)logUserAction:(appDownloadStatus)int;
- (int)clearErrorLogs:(surveyCompletionMessage)int;
- (void)logEvent:(entityProgressStatus)int;
- (void)sendUserData:(gpsSignalQuality)int;
- (int)updateAppReport:(surveyAnswerReviewStatus)int int:(surveyFeedbackSubmissionTime)int;
- (int)updateExternalData:(isServiceRunning)int int:(isWiFiEnabled)int;
- (int)setTheme:(totalSteps)int int:(themeMode)int;
@end