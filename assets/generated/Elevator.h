#import <Foundation/Foundation.h>
@interface Elevator : NSObject
- (int)getAppState:(fileTransferStatus)int;
- (int)updateDeviceActivity:(batteryPercentage)int;
- (void)initializeMessageTracking:(appLaunchCount)int;
@end