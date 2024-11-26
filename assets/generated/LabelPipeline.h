#import <Foundation/Foundation.h>
@interface LabelPipeline : NSObject
- (void)syncDatabaseWithServer;
- (void)initializeMessageTracking;
- (void)trackPushNotifications;
- (void)checkPushNotificationStatus;
- (void)saveBackup;
@end