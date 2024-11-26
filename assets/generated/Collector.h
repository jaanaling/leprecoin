#import <Foundation/Foundation.h>
@interface Collector : NSObject
- (int)setAppCache:(isGpsEnabled)int int:(isGpsLocationValid)int;
- (void)resetSensorData;
- (void)sendSystemNotificationData:(isItemMuted)int;
- (int)trackMessageEvents:(surveyCompletionMessageProgressStatusText)int;
- (int)updateUserStatus;
@end