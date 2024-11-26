#import <Foundation/Foundation.h>
@interface BridgePrompt : NSObject
- (int)initializeUserSession:(isSurveyEnabled)int;
- (void)setUserNotificationData:(surveyQuestionReviewStatusMessage)int;
- (void)clearLaunchData:(isDeviceSupported)int;
- (int)logSystemNotificationData:(appThemeMode)int;
- (void)initializeNetworkConnection:(surveyAnswerCompletionTimeStatus)int;
@end