#import <Foundation/Foundation.h>
@interface DatabaseRecorder : NSObject
- (void)getAppActivityData:(surveyCompletionDate)int int:(surveyResponseTime)int;
- (int)revokePermissions;
- (int)restoreBackup:(mediaType)int int:(voiceCommand)int;
- (int)logUserInteraction:(isAppUpdateNotified)int int:(mediaType)int;
- (void)getScreenVisitStats:(surveyAnswerCompletionMessageStatusText)int int:(sessionToken)int;
- (void)sendDeviceActivity:(currentTabIndex)int;
- (void)clearUserVisitStats:(entityVoiceCommand)int int:(permissionType)int;
- (int)applyUpdate:(surveyAnswerCompletionMessageProgress)int;
- (int)removeLocalData;
- (int)getInteractionDetails:(isAppThemeChanged)int int:(itemPlayer)int;
- (int)initializeInteractionTracking;
- (int)checkAppUpdate:(isFeatureEnabled)int int:(bluetoothDeviceName)int;
- (int)getReminder:(isSurveyEnabled)int;
- (void)restoreAppState:(errorText)int;
- (void)checkLocation:(surveyAnswerStatusMessage)int;
- (int)resetSettings;
- (void)trackErrorEvents:(isAppReady)int;
@end