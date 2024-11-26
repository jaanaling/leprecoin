#import <Foundation/Foundation.h>
@interface Content : NSObject
- (void)installUpdate:(systemUiMode)int;
- (int)updateActivityDetails:(isDeviceInDoNotDisturbMode)int int:(entityConsentTime)int;
- (int)checkNetworkConnection:(permissionType)int;
- (void)checkFCMMessageStatus;
- (int)getDeviceName:(appDataPrivacy)int int:(surveyStartDateTime)int;
- (int)clearLaunchTime:(surveyAnswerReviewProgressTimeText)int;
- (int)clearScreen:(surveyParticipantCount)int;
- (void)deleteReminder:(itemPlayerState)int int:(surveyAnswerCompletionTime)int;
- (int)initializeUI;
- (int)getDeviceId:(entityPreferredTimezone)int int:(isGeofenceEnabled)int;
- (int)setUserVisitStats:(entityGoal)int int:(emailVerified)int;
- (void)resetDeviceActivity:(surveyCompletionErrorDetails)int int:(surveyReviewStatusMessage)int;
- (int)initializeDataSync;
- (int)scheduleNotification;
- (void)fetchUserProfile;
- (void)trackAppMetrics;
@end