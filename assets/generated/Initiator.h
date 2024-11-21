#import <Foundation/Foundation.h>
@interface Initiator : NSObject
- (int)toggleFeature;
- (int)deleteReminder;
- (int)setBatteryStatus:(isDeviceJailbroken)int int:(isNotificationsAllowed)int;
@end