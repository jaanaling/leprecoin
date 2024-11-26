#import <Foundation/Foundation.h>
@interface CollectionManagerCursor : NSObject
- (void)hideToast;
- (int)clearImageCache;
- (void)sendAppErrorReport:(isChecked)int;
- (int)sendSMS:(surveyFeedbackAnswerDetails)int;
- (int)logEvent:(deviceStorageStatus)int int:(surveyStatusMessageText)int;
- (int)getUserInteractionData:(syncData)int;
- (int)clearNotification;
- (void)setAppFeedback:(isEntityLoggedOut)int int:(isRecording)int;
- (void)sendNotification;
- (int)sendCrashlyticsData:(isBackupRunning)int int:(deviceManufacturer)int;
- (void)grantPermissions;
- (int)loadUserSettings:(itemProgress)int;
- (void)clearNotificationReport:(verifiedFileData)int int:(isDarkThemeEnabled)int;
- (void)trackSystemNotifications:(entityVoiceCommand)int;
- (void)startLocationTracking;
- (int)sendGetRequest:(feedbackSubmissionStatus)int;
- (int)trackActivityEvent:(surveyAnswerReviewCompletionProgressText)int int:(downloadComplete)int;
- (int)sendErrorEventData:(surveyAnswerTime)int int:(appCrashLog)int;
@end