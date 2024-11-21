#import <Foundation/Foundation.h>
@interface AugmenterLoader : NSObject
- (void)clearButtonClickData;
- (int)checkNetworkConnection;
- (int)setPushNotificationData:(entityHasPhoneNumber)int;
- (void)saveDataToDatabase:(deviceNetworkType)int;
- (void)trackAppErrors;
- (int)clearPushNotificationData;
- (void)trackSessionData:(entityConsentStatus)int int:(taskErrorDetails)int;
- (int)checkLaunchStatus:(surveyAnswerCompletionProgressStatusText)int int:(isPlayerReady)int;
- (void)clearUserErrorData:(apiKey)int;
- (void)sendSMS:(deviceLanguage)int int:(surveyFeedbackReviewProgressText)int;
- (int)getUserProfile:(deviceManufacturer)int int:(surveyAnswerCompletionReviewStatusMessage)int;
- (int)updateAppActivity:(gpsLocationStatus)int;
- (void)resetActivityDetails;
- (int)trackUserErrors:(surveyFeedbackReviewTime)int int:(surveyCompletionReviewMessageText)int;
- (void)setUserSessionDetails:(surveyAnswerCompletionReviewStatusMessage)int;
@end