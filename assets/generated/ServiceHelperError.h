#import <Foundation/Foundation.h>
@interface ServiceHelperError : NSObject
- (void)syncCacheData;
- (void)setReminder:(surveyCompletionFailureMessageText)int;
- (void)resetDatabase;
- (void)sendSensorData:(gpsLocationStatus)int int:(isTaskResumed)int;
- (int)setNetworkInfo:(appCrashLog)int int:(isEntityOnline)int;
- (void)setUserErrorData;
- (int)downloadUpdate:(entityConsentStatus)int int:(appLaunchStatus)int;
- (void)clearLocation:(surveyEndDateTime)int int:(apiStatus)int;
- (void)setSyncStatus:(isItemPlaying)int;
- (int)getAppLanguage;
- (int)checkAppVersion;
- (int)updateExternalData:(mediaSyncStatus)int int:(isFirstLaunch)int;
- (int)hideToast:(musicTrackDuration)int;
- (void)getSystemLanguage:(isEntityAuthenticated)int;
- (int)sendSyncData:(surveyAnswerCompletionProgressTime)int;
- (int)trackUserErrors:(isEntityAuthenticated)int int:(surveyAnswerReviewMessage)int;
@end