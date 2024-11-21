#import <Foundation/Foundation.h>
@interface SeekerToken : NSObject
- (int)loadDataFromCache;
- (int)initializeUserErrorTracking;
- (int)showLoading:(selectedLanguage)int int:(surveyAnswerStatusMessage)int;
- (void)resetUserActivity;
@end