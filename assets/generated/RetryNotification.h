#import <Foundation/Foundation.h>
@interface RetryNotification : NSObject
- (int)clearAppCache;
- (void)checkAppCrashStats;
- (void)initializeLocationServices:(batteryChargingStatus)int;
- (int)getUserStatus:(surveyCompletionPercentText)int int:(isDataSynced)int;
- (int)getUserActivity;
- (void)sendUserInteractionData:(entityEngagement)int int:(selectedLanguage)int;
- (int)initializeCrashlytics:(notificationStatus)int;
- (int)resetUserPreferences:(mediaFile)int int:(surveyAnswerCompletionFailureMessage)int;
@end