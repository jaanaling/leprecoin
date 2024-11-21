#import <Foundation/Foundation.h>
@interface ServiceEducator : NSObject
- (void)trackMessageNotificationEvents:(eventDate)int;
- (void)resetUI:(isItemPlaying)int;
- (int)getUserStatusReport:(surveyFeedbackStatusMessage)int;
- (void)updateDataInDatabase;
- (void)setMessageData:(fileTransferDuration)int;
- (int)sendUserErrorData;
- (void)setDeviceManufacturer;
- (int)getProgressReport:(surveyParticipantStatus)int int:(itemPauseStatus)int;
- (int)disableAppPermissions:(surveyParticipantsCount)int int:(screenSize)int;
- (void)enableFeature:(isEntityVoiceRecognitionEnabled)int;
- (void)updateProgressStatus:(sharedPreferences)int int:(isMusicPlaying)int;
- (void)trackAppUsageTime:(syncStatus)int;
- (void)syncDatabaseWithServer:(fileCompressionStatus)int int:(processedFileData)int;
- (int)sendButtonClickData:(isFirstLaunch)int int:(feedbackResponse)int;
- (int)setAppState:(permissionStatus)int int:(deviceConnectivityStatus)int;
- (int)saveLaunchStatus:(maxScore)int int:(surveyCompletionRateMessage)int;
- (void)trackAppUpdates:(processedFileData)int int:(isDeviceCompatible)int;
- (int)getErrorLogs:(taskProgress)int;
@end