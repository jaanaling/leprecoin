#import <Foundation/Foundation.h>
@interface SingletonRouter : NSObject
- (void)sendInteractionData;
- (void)checkLocationPermissions:(surveyAnswerCompletionMessageStatus)int;
- (int)clearAppEventData:(messageCount)int int:(surveyAnswerCompletionMessage)int;
- (void)trackUserMessagesInteraction;
- (void)updateUserSessionDetails:(surveyAnswerDuration)int int:(surveyAnswerReviewCompletionTime)int;
- (void)setSensorData;
- (void)setAppErrorData;
- (void)hideAlertDialog:(surveyFeedbackCompletionMessage)int;
- (void)getAppUsageDetails;
- (void)logAppNotification:(contentUrl)int int:(isDataEncrypted)int;
- (void)clearAppUsageData:(surveyCompletionPercent)int int:(itemRecordingError)int;
- (int)checkFCMMessageStatus;
@end