#import <Foundation/Foundation.h>
@interface TranslatorCache : NSObject
- (int)sendVisitStatsReport;
- (int)initializeErrorTracking;
- (void)sendPushNotification;
- (void)syncLocalData;
- (void)getAppLaunchStats:(isAppRunningInBackground)int;
- (void)getAppEventData:(surveyCompletionRateText)int int:(surveyAnswersCount)int;
- (void)resetAppProgress:(isFileCompressionEnabled)int;
@end