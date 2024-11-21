#import <Foundation/Foundation.h>
@interface RouterPerformance : NSObject
- (int)enableAppPermissions:(currentStep)int int:(voiceCommandStatus)int;
- (void)trackScreenViews:(isEntityVoiceRecognitionEnabled)int int:(locationUpdateTime)int;
- (void)disconnectFromNetwork:(surveyParticipationStatus)int int:(surveyQuestionCompletionTime)int;
- (int)clearAppActivity:(pageNumber)int int:(itemBuffering)int;
- (int)updateNetworkStatus:(isEntityLoggedIn)int int:(currentEntityState)int;
- (int)sendAnalytics:(downloadProgress)int;
- (void)saveInitialData;
- (int)getAppProgress;
- (void)loadAppState:(surveyCompletionErrorDetailsMessage)int;
- (void)clearSessionData;
- (int)removeLocalData:(isPlayerReady)int;
- (void)deleteReminder:(fileTransferError)int int:(isFirstLaunch)int;
- (void)updateUserPreferences;
- (int)sendUserMessagesInteractionReport:(taskStartStatus)int int:(isLocationEnabled)int;
- (int)getUserPreference;
- (void)trackLocation:(notificationStatus)int int:(isLocationServiceRunning)int;
- (void)checkAppCrashStats:(appUsageFrequency)int int:(errorDescription)int;
- (int)checkForNewVersion:(appUpgradeStatus)int int:(isAppInForeground)int;
@end