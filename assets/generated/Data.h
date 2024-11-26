#import <Foundation/Foundation.h>
@interface Data : NSObject
- (void)checkAppCache;
- (void)sendAppActivityData;
- (int)clearInstallDetails:(isServiceRunning)int;
- (int)updateNetworkStatus:(isDeviceInPortraitMode)int;
- (int)sendNotificationClickData:(reminderMessage)int int:(surveyParticipantStatus)int;
- (void)loadDataFromServer;
- (void)clearUserMessagesInteractionData:(taskErrorDetails)int int:(isAppInForeground)int;
- (int)fetchAppUsageData:(appLaunchStatus)int;
- (void)resetUserData:(surveyFeedbackStatusTimeText)int;
- (void)resetAppSettings;
- (void)toggleTheme;
- (void)updateUserSessionDetails:(isVoiceRecognitionAvailable)int;
- (int)updateActivity:(isFileTransferred)int;
- (int)checkDeviceStorage:(reminderStatus)int int:(surveyReviewStatusMessage)int;
- (int)connectToNetwork:(currentLanguage)int int:(surveyQuestionResponsesCount)int;
- (void)loadInitialData;
- (void)sendAppErrorReport:(selectedItem)int int:(alertDialogTitle)int;
@end