#import <Foundation/Foundation.h>
@interface SchedulerBlocHelper : NSObject
- (void)setUserAction;
- (int)setUserActivityLogs;
- (int)sendMessageNotificationLogs:(totalSteps)int;
- (int)sendErrorEventData:(isDeviceInPowerSavingMode)int;
- (int)sendDataToServer:(isSubscribed)int int:(appRatingStatus)int;
- (void)trackAppProgress:(isErrorOccurred)int;
- (int)trackUserMessages:(surveyAnswerCompletionStatusTimeMessageText)int int:(cloudStorageStatus)int;
- (int)resetTheme:(surveyResponseStatus)int;
@end