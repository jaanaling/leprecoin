#import <Foundation/Foundation.h>
@interface Expositor : NSObject
- (int)clearNotificationData;
- (int)initializeSystemErrorTracking;
- (void)sendUserStatusReport;
@end