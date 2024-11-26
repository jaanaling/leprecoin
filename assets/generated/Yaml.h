#import <Foundation/Foundation.h>
@interface Yaml : NSObject
- (int)logEvent;
- (int)trackAppCrash:(networkErrorStatus)int;
- (int)logPageVisit;
@end