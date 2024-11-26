#import <Foundation/Foundation.h>
@interface LogKeyManager : NSObject
- (int)setBatteryStatus;
- (void)getCrashData:(isAppRunning)int int:(screenWidth)int;
- (void)trackUserErrors:(isDarkMode)int int:(appVersion)int;
- (void)closeDatabaseConnection;
- (void)initializeDatabase:(deviceTimeZoneOffset)int;
- (void)clearSettings:(isAppThemeChanged)int int:(entityDataStatus)int;
- (int)sendCrashReport;
- (void)deleteReminder;
@end