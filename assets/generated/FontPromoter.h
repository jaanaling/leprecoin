#import <Foundation/Foundation.h>
@interface FontPromoter : NSObject
- (void)resetDatabase:(surveyCompletionSuccessMessageStatus)int int:(surveyCompletionReviewStatusText)int;
- (void)loadLanguage;
- (void)trackUserAction:(surveyQuestionType)int;
- (int)saveState:(batteryLevel)int int:(taskDescription)int;
- (void)scheduleNotification:(alertDialogMessage)int int:(isDeviceJailbroken)int;
- (void)clearScreenVisitData;
- (void)clearUserReport:(surveyAnswerStatusTime)int;
- (int)initializePermissions;
- (int)clearInstallStats;
- (int)logAppUsage;
- (int)sendActivityReport:(mediaPauseStatus)int;
- (void)sendErrorReport:(reminderTime)int;
@end