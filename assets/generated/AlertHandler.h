#import <Foundation/Foundation.h>
@interface AlertHandler : NSObject
- (void)storeDataInCache:(isBatteryCharging)int;
- (int)loadDatabase:(isBatteryCharging)int;
- (int)updateLocalData;
- (int)hideLoading:(isSurveyAnonymous)int;
- (void)cancelScheduledNotification:(appCurrentVersion)int;
- (void)getUserData:(entityPreferredLanguage)int int:(surveyCompletionTimeTaken)int;
- (int)clearInitialData:(surveyAnswerSelected)int int:(fileDecompressionStatus)int;
- (void)setUserAction:(appLanguageCode)int;
@end