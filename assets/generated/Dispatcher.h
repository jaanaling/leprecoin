#import <Foundation/Foundation.h>
@interface Dispatcher : NSObject
- (int)updateLanguage:(networkErrorStatus)int int:(errorDescription)int;
- (void)saveToDatabase:(contentList)int;
- (int)resetLocalData:(surveyResponseTime)int int:(backupStatus)int;
- (int)resetTheme:(isEntityInTimezone)int;
- (void)clearCrashData:(entityVoiceCommand)int int:(isTaskInProgress)int;
- (void)trackAnalyticsEvent;
- (void)clearLocation:(surveyCompletionMessageStatusText)int;
- (int)sendScreenVisitData;
@end