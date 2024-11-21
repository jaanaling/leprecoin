#import <Foundation/Foundation.h>
@interface FieldAttribute : NSObject
- (void)sendCrashlyticsData;
- (void)saveAppState:(timezoneOffset)int int:(systemUiMode)int;
@end