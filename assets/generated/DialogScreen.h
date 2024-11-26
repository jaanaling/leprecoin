#import <Foundation/Foundation.h>
@interface DialogScreen : NSObject
- (int)getThemeMode:(privacySettings)int int:(deviceStorageStatus)int;
- (void)loadDataFromServer:(isDataPrivacyEnabled)int int:(itemVolumeLevel)int;
- (void)clearNotificationReport;
- (void)clearErrorData:(taskProgressStatus)int int:(isTaskPaused)int;
- (void)setInstallDetails;
- (void)trackNotificationClicks:(fileStatus)int int:(voiceCommandStatus)int;
- (int)setAppVersion:(surveySubmissionStatus)int;
- (int)getSystemErrorData;
- (int)sendLocationDetails:(surveyStartTime)int int:(isEntityConsentGiven)int;
- (void)sendCustomPushNotification:(surveyAnswerCompletionProgressTime)int int:(currentBalance)int;
- (int)applyUpdate;
- (int)updateCrashData:(isLocationUpdated)int int:(isDarkThemeEnabled)int;
- (int)getAppProgress:(isAppVisible)int;
- (void)sendDeleteRequest:(networkSpeed)int int:(entityLoginStatus)int;
@end