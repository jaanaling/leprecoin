#import <Foundation/Foundation.h>
@interface MolderRouter : NSObject
- (void)updateDeviceActivity;
- (int)initializeMessageNotificationTracking:(fileVerificationStatus)int;
- (void)trackLaunchTime;
- (void)sendUserActionData:(surveyStatusMessageText)int int:(isAppInForeground)int;
- (void)fetchExternalData:(permissionStatus)int int:(surveyErrorMessageDetails)int;
- (void)handleHttpError;
- (int)getSessionStatus:(surveyAnswerCompletionTimeMessage)int int:(isMuted)int;
- (int)clearUserSettings;
- (int)trackAppMetrics:(surveyParticipantName)int;
- (int)unsubscribeFromPushNotifications;
- (int)getUserNotificationData;
- (void)sendUserSessionData;
- (void)initializeUserAuthentication;
- (void)updateReminderDetails:(isLoading)int;
- (void)clearAppActivityData;
- (void)setUserNotificationData;
@end