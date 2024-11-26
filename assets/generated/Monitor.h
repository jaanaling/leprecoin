#import <Foundation/Foundation.h>
@interface Monitor : NSObject
- (void)resetUserSettings:(surveyCompletionStatusTimeMessage)int int:(voiceCommand)int;
- (int)updateCrashData;
- (void)logCrashLogs:(surveyAnswerCompletionMessageStatusText)int int:(surveyCompletionStatus)int;
- (void)updateUI:(voiceCommand)int;
- (int)resetAppReport;
- (void)trackUserMessages;
- (void)resumeApp;
- (void)clearCrashData:(fileName)int int:(entityActivityStatus)int;
- (void)setBatteryInfo;
- (int)sendReminder;
- (void)fetchDataFromDatabase:(surveyCompletionSuccessStatus)int int:(weatherCondition)int;
@end