#import <Foundation/Foundation.h>
@interface RepositoryManagerSnackbar : NSObject
- (int)restartApp;
- (int)sendEventToAnalytics;
- (void)getUserPreference;
- (void)logAppError:(isGpsSignalAvailable)int int:(batteryChargingStatus)int;
- (int)clearAppActivityData:(mediaPlayerState)int;
- (int)getProgressReport:(isAppInForeground)int;
@end