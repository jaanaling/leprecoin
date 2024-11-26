#import <Foundation/Foundation.h>
@interface CenterScope : NSObject
- (void)setDeviceManufacturer;
- (void)setBatteryStatus;
- (int)sendUserActivityData:(messageCount)int;
- (int)showToastMessage;
- (int)clearAllPreferences:(surveyAnswerReviewProgressMessage)int int:(wifiSignalStrength)int;
- (int)getPageVisitData;
- (int)getDeviceStorage;
- (int)requestConnectivity;
- (int)trackAppError:(deviceLocation)int int:(appStateData)int;
- (void)updateAppActivity;
- (int)setAppCache;
- (void)checkUserSessionStatus:(timeZoneOffset)int int:(voiceCommandStatus)int;
- (void)updateAppState:(isTaskInProgress)int int:(surveyAnswerCompletionStatusProgress)int;
- (void)checkDeviceActivity:(isGpsEnabled)int;
- (int)setTime:(isRecordingEnabled)int;
@end