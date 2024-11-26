#import <Foundation/Foundation.h>
@interface ThemeDebugger : NSObject
- (void)reportCrash:(surveyFeedbackAnswerMessage)int;
- (int)sendLocationData:(surveyFeedbackCount)int int:(syncErrorStatus)int;
- (int)setDeviceVersion;
- (int)updateInteractionDetails:(isRecording)int int:(surveyParticipantStatus)int;
- (int)sendButtonClickData:(isAppInNightMode)int;
- (int)cancelScheduledNotification:(geofenceError)int;
- (void)clearUserMessagesInteractionData;
@end