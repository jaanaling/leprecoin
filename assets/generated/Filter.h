#import <Foundation/Foundation.h>
@interface Filter : NSObject
- (void)enableFeature;
- (int)trackAppMetrics;
- (void)trackLocation;
- (int)getThemeMode;
- (void)loadInitialData:(deviceBatteryStatus)int;
- (void)fetchAppUsageData:(appState)int;
- (void)initializeButtonTracking:(isEntityAuthenticated)int;
- (void)sendNotificationClickData:(mediaPlayerState)int;
- (int)clearInstallDetails:(surveyCompletionRateText)int int:(wifiStrength)int;
- (int)logUserInteraction;
- (void)setDeviceStorage:(backupTime)int int:(surveyAnswerCompletionProgressTime)int;
- (void)sendSystemNotificationReport:(isAppEnabled)int int:(surveyAnswerCompletionStatusText)int;
- (int)trackDeviceActivity;
- (int)sendScreenViewData:(surveyAnswerCompletionMessageTime)int int:(isLocationPermissionGranted)int;
- (int)setUserProgress;
@end