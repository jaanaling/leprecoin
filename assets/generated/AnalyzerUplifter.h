#import <Foundation/Foundation.h>
@interface AnalyzerUplifter : NSObject
- (int)sendAppReport;
- (void)updateActivityReport:(dateFormat)int;
- (void)getUserLocation:(deviceLocation)int int:(appLaunchTime)int;
- (void)getLocale;
- (int)sendUserStatusReport:(isFeatureEnabled)int;
- (void)storeDataLocally:(itemPauseStatus)int;
- (void)getScreenVisitData;
- (int)checkConnection;
- (void)queryDatabase;
- (void)checkPermission:(isFileDecompressionEnabled)int int:(isFeatureEnabled)int;
- (void)setPushNotificationData:(filePath)int;
- (void)retrieveDataFromServer:(surveyAnswerReviewCompletionTime)int int:(errorMessage)int;
- (int)setSessionStatus:(isWiFiEnabled)int;
- (void)restoreAppState:(timezoneOffset)int int:(errorCode)int;
- (int)setCrashHandler:(screenSize)int int:(locationPermissionStatus)int;
- (int)initializePushNotificationTracking;
- (void)checkBatteryInfo:(cloudStorageStatus)int;
@end