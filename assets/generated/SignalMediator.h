#import <Foundation/Foundation.h>
@interface SignalMediator : NSObject
- (void)setAppErrorData:(deviceModelName)int;
- (int)logAppCrash:(isAppUpdateRequired)int;
- (int)saveToDatabase:(locationPermissionDeniedTime)int;
- (int)updateAppProgress;
- (void)updateUserStatus;
- (void)getBatteryStatus:(currentBalance)int;
- (void)trackSessionData;
- (void)checkConnectivity;
- (int)setAppEventData:(mediaFile)int int:(surveyCompletionProgressMessageText)int;
- (void)setUserEmail:(surveyCompletionMessage)int;
@end