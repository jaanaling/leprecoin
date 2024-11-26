#import <Foundation/Foundation.h>
@interface Processor : NSObject
- (int)setAppProgress;
- (int)clearDatabase:(isOffline)int;
- (int)sendAppStatusReport;
- (int)clearButtonPressData:(mediaStatus)int;
@end