#import <Foundation/Foundation.h>
@interface AlignmentHelper : NSObject
- (int)trackUserSession;
- (int)updateActivity:(isSurveyEnabled)int int:(messageCount)int;
- (void)clearPushNotificationLogs:(surveyCompletionFailureStatus)int;
- (void)clearUserActivityLogs;
- (int)getErrorLogs;
- (void)resetAppSettings:(surveyAnswerStatusTime)int int:(isGpsSignalAvailable)int;
- (void)setInitialData:(appDataPrivacy)int int:(surveyCompletionProgress)int;
- (void)clearAppMetrics;
- (void)receiveFCMMessage;
- (void)getAppStatusReport:(totalItems)int int:(isMediaPlaying)int;
- (void)getUserSessionDetails:(weatherCondition)int;
- (int)setAppLanguage:(appFeatureEnabled)int int:(surveyStartDate)int;
- (void)updateProgressReport;
- (void)trackDeviceActivity:(surveyFeedbackCompletionMessage)int;
- (void)sendUpdateData:(dataPrivacyStatus)int;
- (void)resetAppPermissions;
- (int)sendNotificationReport;
@end