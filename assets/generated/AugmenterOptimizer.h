#import <Foundation/Foundation.h>
@interface AugmenterOptimizer : NSObject
- (void)initializePushNotificationTracking:(surveyQuestionAnswerSubmission)int;
- (void)setTheme;
- (int)updateDatabase;
- (int)updateAppMetrics:(isBluetoothConnected)int;
- (int)getPushNotificationLogs:(eventTitle)int int:(appSessionTime)int;
- (int)setDeviceActivity:(screenHeight)int int:(gpsFixStatus)int;
- (int)filterContent:(errorDetails)int;
- (void)getAppSettings;
- (int)setAppNotificationData;
- (void)clearNotificationData:(isTaskDelayed)int int:(itemCount)int;
- (int)getInstallStats:(reminderStatus)int;
- (int)logAnalyticsEvent:(surveyAnswerCompletionProgressStatusText)int int:(surveyEndDate)int;
- (int)updateAppVersion;
- (int)getLocale:(verifiedFileData)int int:(syncProgress)int;
- (void)checkAppCrashStats;
- (int)unsubscribeFromPushNotifications:(bluetoothSignalStrength)int;
- (void)clearAnalyticsData;
- (void)clearActivityLog:(surveyAnswerReviewCompletionTime)int;
@end