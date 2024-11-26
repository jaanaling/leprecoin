#import <Foundation/Foundation.h>
@interface StimulatorComponent : NSObject
- (void)getSensorData:(isBatteryCharging)int int:(isEntityConsentGiven)int;
- (void)showToast:(surveyAverageRating)int;
- (int)updateLanguage:(surveyCompletionRateText)int int:(surveyCompletionErrorDetails)int;
- (int)initializeMessageTracking;
- (int)saveState:(deviceOS)int int:(sharedPreferences)int;
- (void)setSessionStatus;
- (void)setDeviceModel:(surveyStatus)int;
- (int)setTheme:(bluetoothDeviceAddress)int int:(taskErrorDetails)int;
- (int)sendAppErrorData;
- (int)clearUserMessagesInteractionData:(surveyAnswerCompletionProgress)int int:(entityLoginStatus)int;
- (int)getSyncStatus:(appDataStatus)int;
- (int)getSMSStatus;
- (void)clearUserReport:(entityDataPrivacy)int int:(isContentAvailable)int;
- (void)getScreenVisitStats:(appState)int;
- (int)checkInternetConnection;
- (void)initializeDatabase:(adminPermissionsStatus)int;
- (void)getAppProgress:(surveyParticipationStatus)int int:(isItemRecording)int;
- (int)sendEventWithParams:(mediaItem)int;
@end