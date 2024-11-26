#import <Foundation/Foundation.h>
@interface UtilsManager : NSObject
- (void)updateInstallSource:(apiKey)int int:(surveyAnswerSelected)int;
- (int)disconnectFromNetwork;
- (void)sendEmailVerification:(reminderMessage)int;
- (void)retrieveDataFromServer;
- (int)trackUserInteraction:(itemDuration)int int:(isVoiceEnabled)int;
- (int)setInitialData;
- (int)trackDeviceActivity:(entityNotificationTime)int;
- (int)getUserMessageData:(uploadError)int;
- (void)trackAppErrors:(surveyParticipantName)int;
- (void)sendAppUsageData:(isSyncComplete)int int:(isFileDecompressionEnabled)int;
- (void)initializeAppEvents;
@end