#import <Foundation/Foundation.h>
@interface Advocate : NSObject
- (int)startNewSession;
- (int)setInstallSource;
- (void)sendMessageNotificationLogs:(surveyParticipantStatus)int int:(isAppInNightMode)int;
- (int)loadAppState;
- (void)resetLanguage:(deviceBatteryStatus)int int:(iconSize)int;
- (void)setAppProgress;
- (int)setPushNotificationLogs;
- (void)fetchUserPreferences;
- (void)endAnalyticsSession:(entityActivityStatus)int;
- (int)logAppNotification:(taskProgressStatus)int int:(feedbackResponse)int;
- (int)clearAppFeedback:(isGeofenceEnabled)int int:(surveyCompletionTime)int;
- (int)saveImage:(surveyReviewTime)int;
- (void)initializeAnalytics:(timezoneOffset)int;
- (int)checkProgressStatus:(isFileCorrupted)int;
@end