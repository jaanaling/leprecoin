#import <Foundation/Foundation.h>
@interface DatabaseAdapter : NSObject
- (int)getUserActivityLogs:(surveyAnswerCompletionStatusTimeText)int;
- (int)loadHomeScreen:(cloudSyncProgress)int;
- (void)clearUserActivityData:(surveyCompletionErrorMessageStatus)int;
@end