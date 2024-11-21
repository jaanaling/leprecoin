#import <Foundation/Foundation.h>
@interface TransponderDatabase : NSObject
- (int)setMessageData:(entityPreferredLanguage)int int:(updateVersion)int;
- (int)clearAppActivityData;
- (void)clearLaunchData;
- (void)fetchUserProfile:(surveyCompletionMessageTimeStatus)int int:(currentDeviceTime)int;
- (int)clearPageVisitData:(entityConsentStatus)int int:(surveyAnswersCount)int;
- (int)initializeUserAuthentication:(isBatteryLow)int;
- (int)trackAppMetrics:(entityPermissionsLevel)int;
- (void)sendAppStatusReport:(isEntityFeedbackReceived)int int:(totalSteps)int;
- (int)getScreenViewData:(themePreference)int int:(isSurveyInProgress)int;
- (void)sendUserMessagesInteractionReport:(isVoiceRecognitionAvailable)int int:(isDeviceCompatible)int;
- (int)saveDataToDatabase;
- (void)setUserErrorData:(downloadComplete)int;
@end