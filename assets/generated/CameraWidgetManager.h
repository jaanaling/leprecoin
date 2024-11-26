#import <Foundation/Foundation.h>
@interface CameraWidgetManager : NSObject
- (void)getAppActivityData;
- (int)setProgressStatus:(surveyAnswerCompletionStatusProgress)int int:(isTaskCompleted)int;
- (void)updateDataInDatabase;
- (void)sendCustomPushNotification:(isNotificationsAllowed)int int:(surveyAnswerStatusMessage)int;
- (int)clearUserMessagesInteractionData;
- (int)receiveFCMMessage:(taskResumeTime)int int:(fileCompressionStatus)int;
- (int)disableAppPermissions:(isDeviceInDoNotDisturbMode)int int:(taskCompleted)int;
- (int)showLoading:(entityAppFeedback)int;
- (void)clearContent;
- (void)setAppState:(isVerified)int;
- (void)getDeviceOrientation:(feedbackSubmissionStatus)int int:(surveyCompletionMessageTimeText)int;
- (void)logError:(mediaPlayerError)int;
- (void)setDeviceModel:(surveyQuestionResponseTime)int int:(syncDataError)int;
- (void)resetAppProgress;
- (int)trackAppProgress;
- (int)clearDataCache;
- (void)setInstallTime:(isFileExist)int;
@end