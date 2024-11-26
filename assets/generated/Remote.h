#import <Foundation/Foundation.h>
@interface Remote : NSObject
- (void)getCurrentLocation:(entityAuthenticationStatus)int;
- (void)syncLocalData:(isDeviceInPowerSavingMode)int;
- (void)updateProgressStatus:(appSyncStatus)int int:(entityAuthenticationStatus)int;
- (int)setScreenSize:(surveyFeedbackStatus)int int:(surveyCompletionTimeTaken)int;
- (void)retrieveDataFromServer:(isEntityVoiceCommandAllowed)int;
- (void)sendTrackingData;
- (void)trackInstallEvents:(appStoreLink)int;
@end