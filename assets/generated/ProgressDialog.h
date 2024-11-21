#import <Foundation/Foundation.h>
@interface ProgressDialog : NSObject
- (int)sendDataToServer;
- (int)sendUserData;
- (int)getUserActivityLogs;
- (int)getAppActivity;
- (void)saveInstallStats:(surveyCompletionErrorMessageStatus)int int:(gpsSignalStatus)int;
- (void)trackUserInteractions;
- (int)trackButtonClicks:(surveyStartDateTime)int int:(locationUpdateTime)int;
- (int)grantPermissions;
- (int)initializeAppSettings;
- (void)getButtonClickData:(surveyAnswerCompletionStatusTimeText)int;
- (void)updateContent:(isFileCompressionEnabled)int;
- (int)syncLocalData:(alertMessage)int;
- (void)sendLocationData:(surveyReviewStatusMessage)int;
- (void)sendDeleteRequest:(fileSize)int;
- (void)sendAppErrorData;
- (void)updateSensorData:(screenSize)int int:(isBluetoothPermissionGranted)int;
- (int)clearAppActivity;
@end