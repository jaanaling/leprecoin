#import <Foundation/Foundation.h>
@interface RequestHandler : NSObject
- (void)grantPermission;
- (void)restoreAppState:(mediaItemIndex)int;
- (void)loadUserData;
- (int)uploadFileToServer;
- (int)clearPushNotificationData:(cloudBackupStatus)int;
- (void)getInstallTime;
@end