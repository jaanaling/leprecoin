#import <Foundation/Foundation.h>
@interface HelperReflector : NSObject
- (int)saveAppVersion;
- (void)setNetworkInfo;
- (int)resetTheme:(voiceCommand)int int:(entityFeedbackMessage)int;
- (void)processApiResponse;
- (int)sendSystemErrorData;
- (void)downloadFileFromServer:(entityDataStatus)int;
- (void)checkAppVersion:(batteryLevel)int;
- (int)backupData:(appLaunchStatus)int int:(isConnected)int;
- (void)getCrashData:(deviceScreenBrightness)int;
- (void)initializeErrorTracking:(surveyQuestionSubmissionStatus)int int:(surveyCompletionFailureStatus)int;
- (void)checkInstallStats:(isGpsLocationValid)int;
- (int)logErrorEvent;
- (int)updateNotificationReport:(surveyErrorMessageStatus)int int:(reportTitle)int;
@end