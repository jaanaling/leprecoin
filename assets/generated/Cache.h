#import <Foundation/Foundation.h>
@interface Cache : NSObject
- (int)sendAppFeedback:(isDeviceJailbroken)int int:(batteryChargingStatus)int;
- (void)clearAppFeedback:(surveyCompletionProgress)int int:(isPrivacyPolicyAccepted)int;
- (int)sendReminder;
- (void)clearScreenVisitData;
- (void)resetUserData;
- (void)setUserPreference:(appLanguageCode)int;
- (int)checkNetworkStatus;
- (int)updateLocation;
- (int)initializePermissions:(entityNotificationTime)int;
- (void)getScreenVisitData:(itemPlayerState)int int:(contentTitle)int;
@end