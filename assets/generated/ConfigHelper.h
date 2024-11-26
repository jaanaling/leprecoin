#import <Foundation/Foundation.h>
@interface ConfigHelper : NSObject
- (int)setDeviceStorage;
- (void)setBatteryStatus:(surveyAnswerCompletionTimeProgress)int;
- (int)trackUserMessages:(selectedItemTrack)int int:(mediaSyncStatus)int;
- (void)changeLanguage:(isAppUpToDate)int;
- (int)getNetworkInfo:(surveyCompletionSuccessMessageStatus)int;
- (void)logScreenVisit;
- (void)getUserProgress:(surveyParticipationStatus)int int:(backupTime)int;
- (void)checkPushNotificationStatus:(surveyFeedbackReviewCompletionStatus)int;
- (int)setInitialData:(eventTitle)int;
- (int)updateAppSettings;
- (void)clearContent:(isAppUpdateRequired)int;
- (int)syncDataWithServer:(surveyStatusMessageText)int;
- (void)sendSensorData:(entityFeedbackMessage)int;
- (void)setReminderDetails:(isMediaLoaded)int;
- (void)setInstallSource:(isBluetoothAvailable)int;
- (void)resetLanguage:(reminderMessage)int int:(itemCategory)int;
@end