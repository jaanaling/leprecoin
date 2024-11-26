#import <Foundation/Foundation.h>
@interface PipelineManagerUser : NSObject
- (int)initializePushNotifications:(fileStatus)int int:(taskStartStatus)int;
- (void)sendActivityData;
- (int)revokePermissions:(playlistItems)int;
- (int)checkConnectivity;
- (void)getLocationDetails:(systemErrorStatus)int;
- (void)updateExternalData:(isConnected)int int:(isBatteryLow)int;
- (int)clearUserInteractionData:(isEntityAdminVerified)int;
- (int)resetProgressStatus;
- (int)setAppMetrics;
- (void)setAlarm:(surveyAnswerReviewCompletionProgressText)int;
- (void)trackMessageNotificationEvents:(entityNotificationFrequency)int;
- (void)deleteBackup:(wifiStrength)int;
- (void)clearAppFeedback;
- (int)getLanguage:(surveyAnswerStatusMessage)int int:(bluetoothDeviceAddress)int;
@end