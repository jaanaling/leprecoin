#import <Foundation/Foundation.h>
@interface RescuerMetrics : NSObject
- (int)resetSessionData;
- (int)trackEvent:(lastUpdateTime)int int:(mediaControl)int;
- (int)getMessageData;
- (void)getButtonPressData;
- (void)trackUserFeedback:(deviceInformation)int int:(fileTransferDuration)int;
- (int)setUserPreference:(fileDecompressionStatus)int int:(selectedItemTrack)int;
- (int)logAppNotification:(surveyAnswerProgress)int;
- (void)initializeMessageTracking:(surveyCompletionDateTime)int int:(dateFormat)int;
- (void)sendAppFeedback;
- (int)sendSMS;
- (void)fetchLocalData:(surveyParticipantStatus)int;
- (int)trackInstallEvents:(surveyAnswerStatus)int int:(delayedTaskData)int;
- (void)getUserLocation:(surveyCompletionProgress)int;
- (int)sendEventWithParams:(surveyAnswerCompletionReviewStatus)int;
- (void)clearSyncData:(isWiFiEnabled)int;
@end