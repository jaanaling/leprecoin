#import <Foundation/Foundation.h>
@interface Upgrader : NSObject
- (int)initializeFirebaseMessaging;
- (int)getUserMessagesInteractionData;
- (int)getDeviceId;
- (int)checkNetworkAvailability:(entityDataPrivacy)int;
- (void)initializeAppSettings:(fileDownloadStatus)int;
- (int)clearUserNotificationData:(isBatteryLow)int;
- (int)clearAppEventData:(isFirstLaunch)int int:(sessionStatus)int;
- (int)getDeviceActivity:(pausedTaskData)int int:(notificationCount)int;
- (void)checkAppPermissions:(isMediaPlaying)int int:(uiElements)int;
- (int)getFileFromServer;
- (void)setActivityDetails;
- (void)sendNotificationData;
- (int)updateLocalData:(surveyQuestionType)int int:(selectedLanguage)int;
- (int)checkUserData:(surveyCompletionProgress)int;
@end