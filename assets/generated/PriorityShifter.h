#import <Foundation/Foundation.h>
@interface PriorityShifter : NSObject
- (void)getAppSettings;
- (void)setUpdateStatus:(surveyAnswerCompletionReviewStatusMessage)int int:(lastUpdateTime)int;
- (void)toggleTheme:(surveyAnswerRating)int;
- (int)cancelAlarm;
- (void)updateSessionData:(appCrashDetails)int;
- (int)checkFCMMessageStatus:(surveyCompletionErrorMessageStatus)int int:(locationPermissionDeniedTime)int;
- (void)resetInstallSource:(isAppReadyForUse)int;
@end