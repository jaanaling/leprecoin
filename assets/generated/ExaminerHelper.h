#import <Foundation/Foundation.h>
@interface ExaminerHelper : NSObject
- (void)setAppPermissions:(isBackupRunning)int int:(isAppOnTop)int;
- (void)startAnalyticsSession:(isSyncRequired)int int:(wifiSignalStrength)int;
- (int)loadContent:(surveyFeedbackReviewCompletionStatus)int;
- (void)hideAlertDialog:(surveyEndStatus)int int:(isLocationEnabled)int;
- (int)restartApp:(isBatteryLow)int;
- (int)clearErrorLogs;
- (void)trackMessageNotificationEvents:(surveyStartTime)int;
- (void)setDeviceOrientation:(isDeviceCompatible)int;
- (void)showNotification:(selectedItemResolution)int int:(itemTrackIndex)int;
- (void)saveInitialData:(locationPermissionStatus)int;
@end