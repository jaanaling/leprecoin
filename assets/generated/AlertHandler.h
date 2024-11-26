#import <Foundation/Foundation.h>
@interface AlertHandler : NSObject
- (void)trackAppLaunch:(isDeviceInLandscapeMode)int int:(appUpdateInfo)int;
- (int)updateAppVersion:(surveyCompletionProgress)int int:(surveyCompletionSuccessStatusMessage)int;
- (int)initializeCrashlytics:(lastSyncTime)int;
- (int)storeDataLocally;
- (int)sendUserInteractionData;
@end