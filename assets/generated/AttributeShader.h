#import <Foundation/Foundation.h>
@interface AttributeShader : NSObject
- (int)checkConnectivity;
- (int)getUserPreference;
- (void)updateAppEventData:(isDeviceConnectedToWiFi)int int:(isActive)int;
- (int)clearAllPreferences;
- (void)trackScreenVisits;
- (void)getSMSStatus:(isGpsPermissionGranted)int;
- (void)initializeFirebaseMessaging;
- (int)clearUserMessagesInteractionData:(bluetoothSignalStrength)int int:(isSurveyEnabled)int;
- (void)trackPageVisits:(isNetworkAvailable)int int:(entitySearchHistory)int;
- (void)getDeviceVersion:(mediaPlayer)int;
- (void)getDeviceOrientation:(surveyQuestionResponseTime)int int:(appUsageData)int;
- (void)trackScreenViews:(isSurveyEnabled)int int:(isAdminAuthenticated)int;
- (void)updateAppMetrics:(surveyAnswerReviewProgressTimeText)int;
- (int)setThemeMode:(activityLog)int int:(isEntityInProgress)int;
- (void)resetBatteryInfo;
- (int)updateInstallSource;
@end