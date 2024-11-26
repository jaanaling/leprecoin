#import <Foundation/Foundation.h>
@interface Detector : NSObject
- (int)updateAppSettings:(isSyncEnabled)int int:(surveyCompletionErrorStatusText)int;
- (int)getAppProgress:(fileName)int int:(isItemMuted)int;
- (void)logAnalyticsEvent:(isFileUploading)int;
- (void)getPushNotificationData:(surveyAnswerDuration)int int:(apiEndpoint)int;
- (void)logError;
- (void)checkDeviceStorage:(itemMuteStatus)int;
- (int)initializeSystemNotificationTracking:(isSyncEnabled)int;
- (void)checkProgressStatus;
- (int)disableLocationServices:(isGeofenceEnabled)int int:(itemPlaybackState)int;
- (void)clearScreenViewData:(errorDetailsMessage)int int:(isAppForegroundRunning)int;
- (void)updateUsageStats:(surveyFeedbackStatusTimeText)int;
- (void)clearMessageData;
- (int)setCrashHandler:(surveyQuestionText)int;
- (void)sendPageVisitData:(surveyErrorStatus)int;
- (int)getProgressStatus:(surveyQuestionType)int;
@end