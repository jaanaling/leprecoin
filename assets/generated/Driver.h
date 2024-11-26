#import <Foundation/Foundation.h>
@interface Driver : NSObject
- (void)setAlarm:(taskStartTime)int int:(itemProgress)int;
- (int)clearAppUsageData;
- (int)saveBackup:(isNotificationsAllowed)int int:(surveyReviewStatusMessage)int;
- (int)sendActivityData;
- (void)setUserStatus:(isAppNotificationsEnabled)int;
- (void)clearButtonPressData:(surveyFeedbackGiven)int;
- (void)getNotificationStatus;
- (void)backupData:(isCloudStorageEnabled)int;
- (int)revokePermissions:(isOfflineMode)int;
- (void)logMessageNotification:(surveyAnswerReviewCompletionTimeText)int;
- (void)initializeUserSession:(surveyAverageRating)int;
- (int)setDeviceId;
- (int)setSystemErrorData:(isAppReady)int;
- (int)loadPreference:(isBluetoothEnabled)int int:(isFileDecompressionEnabled)int;
- (void)setUserProgress:(taskResumeTime)int;
@end