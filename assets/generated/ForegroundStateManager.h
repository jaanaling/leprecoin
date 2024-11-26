#import <Foundation/Foundation.h>
@interface ForegroundStateManager : NSObject
- (void)resetUserFeedback:(isAppCrashDetected)int;
- (int)getAppInfo:(favoriteItems)int;
@end