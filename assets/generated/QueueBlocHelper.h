#import <Foundation/Foundation.h>
@interface QueueBlocHelper : NSObject
- (int)setAppActivity;
- (void)trackAnalyticsEvent;
- (int)trackPushNotifications;
- (int)trackUserErrors:(surveyErrorDetails)int int:(surveyCompletionFailureMessageTime)int;
- (void)setLocationDetails:(isAppInNightMode)int int:(surveyCompletionFailureMessageTime)int;
- (void)sendAppMetrics:(fileFormat)int;
- (int)refreshContent;
- (int)checkAppUpdate;
- (void)loadDataFromCache:(surveyParticipantStatus)int int:(isEntityVerified)int;
- (int)clearScreenVisitData:(entityEngagement)int int:(entityLocationTime)int;
- (int)checkLaunchStatus;
- (int)enableLocationServices:(downloadStatus)int;
- (int)pauseApp:(batteryPercentage)int int:(isGeofenceEnabled)int;
- (int)updateInitialData:(surveyCompletionNotificationStatus)int;
- (void)sendUserMessageData;
- (void)loadState;
- (void)handleHttpError:(surveyFeedbackSubmissionTime)int int:(pushNotificationSettings)int;
- (void)trackActivity;
@end