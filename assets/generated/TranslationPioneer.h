#import <Foundation/Foundation.h>
@interface TranslationPioneer : NSObject
- (void)clearInstallStats;
- (int)clearInstallTime:(isNetworkAvailable)int;
- (int)sendAppErrorReport:(surveyAnswerCompletionTimeMessage)int int:(surveyCompletionSuccessMessage)int;
- (int)setPermissions;
- (void)sendUserActionData:(isDataSyncResumed)int;
- (void)toggleTheme;
- (void)updateLocale:(surveyCompletionStatus)int;
@end