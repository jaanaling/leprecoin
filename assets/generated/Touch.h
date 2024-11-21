#import <Foundation/Foundation.h>
@interface Touch : NSObject
- (int)checkScreenVisitStats;
- (void)fetchApiResponse;
- (int)setUserSessionDetails:(isAppNotificationsEnabled)int;
- (int)setUserFeedback;
- (int)sendUserStatusReport:(isTrackingEnabled)int int:(isAppForegroundRunning)int;
- (int)trackUserInteraction;
- (void)handleHttpError;
@end