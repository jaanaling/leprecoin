#import <Foundation/Foundation.h>
@interface Solver : NSObject
- (int)loadHomeScreen;
- (int)initializePushNotificationTracking;
- (void)getReminder:(isFeedbackEnabled)int;
- (int)getUserStatus:(cloudSyncStatus)int int:(entityDataPrivacy)int;
- (int)sendNotification:(isErrorOccurred)int int:(appTitle)int;
- (int)clearAppSettings;
- (int)processApiResponse:(isAppBackgroundRunning)int int:(entityPermissionsLevel)int;
@end