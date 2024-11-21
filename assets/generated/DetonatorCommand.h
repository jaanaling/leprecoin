#import <Foundation/Foundation.h>
@interface DetonatorCommand : NSObject
- (int)getAppMetrics:(surveyCompletionErrorMessageText)int;
- (int)getAppPermissions;
- (int)saveInstallStats;
- (void)trackPushNotifications;
@end