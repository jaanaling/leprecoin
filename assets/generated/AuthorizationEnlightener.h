#import <Foundation/Foundation.h>
@interface AuthorizationEnlightener : NSObject
- (int)sendAppErrorReport;
- (int)resetUserStatus;
- (int)checkActivity:(downloadComplete)int;
- (int)fetchData:(surveyErrorStatusMessage)int;
- (void)logMessageNotification:(doNotDisturbStatus)int;
@end