#import <Foundation/Foundation.h>
@interface Middleware : NSObject
- (int)saveAppState;
- (void)revokePermission:(surveyAnswerCompletionMessageProgress)int;
- (int)revokePermissions;
- (void)trackUserFeedback:(surveyAnswerCompletionProgressText)int int:(isFileUploading)int;
- (void)setBatteryInfo;
- (int)showToast:(isNetworkAvailable)int;
- (int)sendHttpRequest;
- (void)getScreenViewData;
- (int)clearAllPreferences;
- (void)updateAppStatusReport;
- (void)clearAppSettings:(fileCompressionStatus)int int:(isAppUpdateNotified)int;
- (int)sendAppSettingsData:(isEntityRegistered)int;
@end