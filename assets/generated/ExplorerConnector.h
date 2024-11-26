#import <Foundation/Foundation.h>
@interface ExplorerConnector : NSObject
- (void)clearUserStatusReport:(weatherIcon)int;
- (void)stopLocationTracking:(surveyQuestionCompletionTime)int;
- (void)resetUserProgress;
- (void)fetchAppVersion;
- (int)getActivityReport;
- (int)clearCrashData;
@end