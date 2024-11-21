#import <Foundation/Foundation.h>
@interface RemoteLoader : NSObject
- (void)trackScreenViews;
- (void)sendUserVisitStats:(surveyAnswerReviewMessage)int int:(syncErrorStatus)int;
- (int)getReminder;
- (void)getActivityLog;
- (void)setScreenVisitStats;
- (int)searchContent:(entityFeedbackMessage)int;
- (int)setActivityDetails;
- (void)cancelNotification;
- (void)updateAppEventData:(networkSpeed)int;
@end