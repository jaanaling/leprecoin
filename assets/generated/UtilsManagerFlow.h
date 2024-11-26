#import <Foundation/Foundation.h>
@interface UtilsManagerFlow : NSObject
- (int)sendAppActivityData:(reportTitle)int;
- (int)updateAppActivity;
- (void)updateUserSettings;
- (void)updateDataInDatabase;
- (void)setReminderStatus;
- (void)initializeFirebaseMessaging;
@end