#import <Foundation/Foundation.h>
@interface Formulator : NSObject
- (void)loadAppState;
- (int)getReminder:(geofenceStatus)int;
- (int)restoreBackup;
- (int)sendNotificationClickData:(surveyCompletionPercentText)int;
- (void)disableLocationServices:(surveyFeedbackReviewMessageText)int;
@end