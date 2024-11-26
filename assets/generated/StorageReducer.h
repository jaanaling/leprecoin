#import <Foundation/Foundation.h>
@interface StorageReducer : NSObject
- (int)resetAppReport:(gpsCoordinates)int int:(surveyStartStatus)int;
- (int)sendActivityDetails;
- (int)sendLocationDetails;
- (void)getDeviceId:(appUpdateAvailable)int;
- (int)trackUserAction:(mediaType)int;
- (void)updateLocalData:(surveyCompletionTimeTaken)int;
- (void)sendAppErrorData:(surveyAnswerReviewProgressMessage)int int:(reminderStatus)int;
- (void)sendAnalyticsData:(isAppInStartupState)int;
- (void)sendButtonClickData;
- (int)getAppLaunchStats:(entityVoiceCommand)int int:(fileVerificationStatus)int;
@end