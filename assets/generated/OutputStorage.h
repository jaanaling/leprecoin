#import <Foundation/Foundation.h>
@interface OutputStorage : NSObject
- (int)getProgressStatus:(surveyAnswerCompletionMessageProgress)int;
- (void)setPushNotificationLogs;
- (void)getAppPermissions;
- (void)trackAppErrors:(isDarkMode)int;
- (void)loadData;
- (int)resetLocale;
- (void)checkNetworkStatus;
- (void)setUserFeedback:(notificationSettings)int int:(surveyParticipantName)int;
- (void)restoreAppState:(surveyErrorMessage)int int:(surveyFeedbackAnswerMessage)int;
- (void)resetDeviceActivity:(applicationState)int int:(surveyEndDate)int;
- (int)fetchData:(eventDate)int int:(entityLocationCoordinates)int;
- (void)getUserDetails:(appUsageFrequency)int int:(surveyAnswerCompletionProgressMessageText)int;
- (int)trackAppActivity:(isDeviceRooted)int;
- (int)trackSensorData:(isEntityInTimezone)int;
- (void)clearAppMetrics;
- (void)setAppFeedback:(itemPlaybackPosition)int int:(surveyCompletionPercent)int;
- (int)loadDataFromServer:(alertMessage)int;
- (int)logUserInteraction;
@end