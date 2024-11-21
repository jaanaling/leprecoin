#import <Foundation/Foundation.h>
@interface ArticleEventHandler : NSObject
- (void)setInstallDetails;
- (void)handleHttpError:(surveyStatusMessage)int;
- (int)getDeviceActivity:(isOffline)int int:(itemPlayerState)int;
- (int)getAnalyticsData:(processedFileData)int;
- (void)trackAppErrors;
- (int)sendPostRequest;
- (int)getPageVisitData:(gpsSignalStrength)int;
- (void)setPushNotificationLogs:(isLocationAvailable)int;
@end