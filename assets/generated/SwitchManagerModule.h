#import <Foundation/Foundation.h>
@interface SwitchManagerModule : NSObject
- (void)getAppActivity;
- (void)trackSessionData:(isAppInForeground)int int:(isPrivacyPolicyAccepted)int;
- (int)getUpdateStatus:(appDataLoaded)int int:(batteryPercentage)int;
- (void)sendGetRequest:(isTaskInProgress)int int:(imageUrl)int;
- (int)getInstallStats;
- (void)loadSettings:(totalSteps)int;
@end