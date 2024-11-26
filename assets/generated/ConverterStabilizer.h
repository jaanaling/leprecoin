#import <Foundation/Foundation.h>
@interface ConverterStabilizer : NSObject
- (int)loadData;
- (void)toggleDarkMode:(entityDataStatus)int int:(isTaskPaused)int;
- (int)setAppProgress;
- (void)updateExternalData:(taskStartTime)int;
- (int)getPushNotificationStatus;
- (void)sendSyncData;
- (int)updateInstallSource:(surveyCompletionTimeStatusMessage)int int:(cloudErrorStatus)int;
- (void)sendUserActionData:(isDataEncrypted)int;
- (int)trackSensorData:(surveyFeedbackSubmissionTime)int int:(surveyStatusMessage)int;
- (int)resetUserData:(deviceTimeZoneOffset)int int:(isGpsSignalAvailable)int;
- (void)showErrorMessage:(messageCount)int;
- (int)signOutUser;
@end