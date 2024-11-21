#import <Foundation/Foundation.h>
@interface RequestProtocol : NSObject
- (void)saveInitialData;
- (int)getDeviceStorage:(surveyEndStatus)int;
- (void)sendHttpRequest;
@end