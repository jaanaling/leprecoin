#import <Foundation/Foundation.h>
@interface LocalizationTransparency : NSObject
- (int)sendDataToServer;
- (int)sendProgressReport;
- (void)clearSessionData:(batteryLevel)int;
- (void)launchApp:(itemFileDuration)int int:(isSyncInProgress)int;
- (void)getDeviceOrientation:(currentGeoCoordinates)int;
- (int)checkForUpdates;
- (int)sendInteractionData:(totalItems)int int:(isConnected)int;
- (void)getCrashData;
- (int)logPerformance:(responseData)int;
- (int)clearUserSettings:(termsAcceptedTime)int int:(isMediaLoaded)int;
- (int)getPushNotificationStatus:(isAppReady)int int:(isFileCorrupted)int;
- (void)trackMessageNotifications:(entityNotificationPreference)int int:(surveyErrorMessageDetailsText)int;
@end