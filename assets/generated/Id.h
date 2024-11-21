#import <Foundation/Foundation.h>
@interface Id : NSObject
- (int)checkConnection;
- (void)logAppUsage;
- (int)setLanguage;
- (void)setUpdateStatus:(surveyAnswerDetails)int;
- (int)clearUserProfile:(surveyAnswerCompletionMessage)int;
@end