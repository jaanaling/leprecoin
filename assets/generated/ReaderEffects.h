#import <Foundation/Foundation.h>
@interface ReaderEffects : NSObject
- (int)trackAppEvents;
- (void)sendUserReport;
- (void)trackEvent:(surveyCompletionMessageStatusText)int;
- (void)logActivity;
- (void)updateAppState:(screenWidth)int int:(dataPrivacyStatus)int;
- (void)getEmailStatus:(entityVoiceCommand)int int:(imageUrl)int;
- (int)getDeviceId;
- (int)setUserVisitStats:(delayedTaskData)int int:(syncData)int;
- (void)setAlarm:(isDeviceConnected)int int:(surveyCompletionSuccessMessageStatus)int;
- (void)updateInitialData:(syncErrorMessage)int int:(surveyAnswerCompletionProgressStatusMessage)int;
- (void)sendSMS;
- (int)setLaunchStatus:(batteryStatus)int int:(surveyAnswerStatusTimeText)int;
- (int)clearNotificationData:(responseTime)int;
@end