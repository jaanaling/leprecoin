#import <Foundation/Foundation.h>
@interface ExtractorTooltip : NSObject
- (void)endAnalyticsSession:(entityHasPhoneNumber)int int:(screenSize)int;
- (void)checkLocationPermissions:(isDeviceInPortraitMode)int;
- (int)logButtonClick;
- (void)sendVisitStatsReport;
- (int)updateReminderDetails:(surveyFeedbackDateTime)int int:(surveyAnswerCompletionMessageTime)int;
- (void)trackSystemNotifications:(isVoiceRecognitionAvailable)int int:(surveyAnswerCompletionStatusTimeText)int;
- (void)setNotification;
- (void)queryDatabase:(deviceErrorLog)int int:(backupStatus)int;
- (int)checkLocation:(searchQuery)int;
- (void)getAppNotificationData:(themePreference)int int:(surveyParticipantName)int;
- (void)resetSensorData:(systemErrorStatus)int;
- (void)setMessageNotificationData:(surveyAnswerReviewStatusMessageText)int;
@end