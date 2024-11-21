#import <Foundation/Foundation.h>
@interface AvatarYaml : NSObject
- (int)sendSystemNotificationData:(pageNumber)int;
- (void)clearUserProfile:(isTaskPaused)int int:(systemTimeZone)int;
- (int)clearUserPreferences:(taskStatus)int;
- (int)logUserInteraction:(isEntityOnline)int int:(syncDuration)int;
- (int)getAppMetrics;
- (void)checkLocation:(alertMessage)int;
@end