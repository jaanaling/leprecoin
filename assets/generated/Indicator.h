#import <Foundation/Foundation.h>
@interface Indicator : NSObject
- (int)getUserVisitStats:(responseData)int int:(screenSize)int;
- (int)setAppVersion:(surveyStartDateTime)int int:(isGpsPermissionGranted)int;
- (int)initializeAppVersionTracking:(surveyAnswerCompletionMessageText)int;
- (void)updateLaunchTime:(apiStatus)int;
- (void)getMessageData:(eventTitle)int int:(surveyCompletionStatusTimeMessage)int;
- (int)clearCache;
- (int)checkBatteryLevel;
- (int)trackDeviceActivity:(surveyFeedbackSubmissionTime)int;
- (int)trackPushNotificationEvents;
- (void)sendActivityDetails:(surveyReviewTimeText)int int:(mediaPlayStatus)int;
- (void)trackUserMessagesInteraction:(verifiedFileData)int;
- (void)initializeUserSession;
- (void)logErrorEvent:(isDataLoaded)int;
- (void)resetLocalData:(isGpsLocationValid)int;
- (int)getAppCache:(appInMemoryUsage)int;
- (int)scheduleReminder;
- (void)getAppFeedback:(surveyFeedbackAnswerMessage)int int:(appFeature)int;
@end