#import <Foundation/Foundation.h>
@interface Selector : NSObject
- (int)fetchUserSettings:(appSyncStatus)int;
- (void)getSystemLanguage;
- (int)getFileFromServer:(surveyAnswerCompletionMessageStatus)int int:(contentUrl)int;
- (int)deleteBackup;
- (void)setScreenSize:(batteryPercentage)int int:(surveyCompletionDate)int;
- (int)initializeAppVersionTracking:(doNotDisturbStatus)int;
- (void)clearScreenVisitStats:(surveyQuestionsCount)int int:(mediaPlayerState)int;
- (void)trackAppEvents:(deviceModel)int;
- (void)verifyNetworkConnection;
- (void)checkLocation:(surveyAnswersCount)int;
- (void)setButtonPressData;
- (void)clearUserFeedback:(deviceLanguage)int int:(downloadError)int;
- (int)clearUserInteractionData:(selectedItemTrack)int;
- (void)setDeviceOrientation;
- (int)syncDatabaseWithServer:(reminderMessage)int int:(isLocationPermissionDenied)int;
- (void)sendActivityData:(systemErrorLogs)int;
@end