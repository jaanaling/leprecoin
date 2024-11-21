#import <Foundation/Foundation.h>
@interface SchedulerDebugger : NSObject
- (void)initializePermissions;
- (void)setUserSessionDetails:(currentScore)int int:(eventTime)int;
- (int)sendNotificationReport;
- (void)sendPageVisitData:(currentScore)int;
- (void)saveInitialData:(deviceTimeZoneOffset)int int:(reminderFrequency)int;
- (int)trackActivity:(fileVerificationStatus)int;
- (int)updateSessionData:(mediaType)int int:(surveyFeedbackStatusMessage)int;
- (int)sendUserVerification:(isLocationUpdated)int;
- (int)getAppMetrics;
- (void)trackScreenVisits;
- (void)clearAppUsageData:(surveyAnswerReviewProgressMessage)int;
- (void)toggleFeature;
- (void)getLocationDetails:(surveyCompletionTimeStatusMessage)int int:(alertDialogTitle)int;
- (int)loadPreferences:(isCloudAvailable)int int:(surveyCompletionReviewMessageText)int;
- (void)cancelReminder;
@end