#import <Foundation/Foundation.h>
@interface ArrayManagerProgressDialog : NSObject
- (void)clearAppEventData:(appUpdateAvailable)int;
- (void)trackAnalyticsEvent:(taskErrorDetails)int int:(errorDetails)int;
- (void)getCurrentLocation:(isDataPrivacyEnabled)int int:(fileDownloadStatus)int;
- (int)loadLanguage:(geofenceRegion)int int:(surveyAnswerCompletionProgressText)int;
- (int)clearDeviceStorage;
- (void)updateDatabase:(surveyReviewTime)int int:(surveyCompletionTimeTaken)int;
- (int)sendSystemErrorData;
- (int)trackMessageClicks;
- (void)retrieveDataFromServer;
@end