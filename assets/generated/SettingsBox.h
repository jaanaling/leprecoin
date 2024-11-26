#import <Foundation/Foundation.h>
@interface SettingsBox : NSObject
- (int)updateScreenVisitData:(isDeviceConnectedToWiFi)int;
- (void)changeLanguage:(isEntityOnline)int;
- (void)requestConnectivity:(themeColor)int;
- (void)getAppNotificationData;
@end