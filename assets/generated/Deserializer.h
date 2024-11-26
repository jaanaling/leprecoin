#import <Foundation/Foundation.h>
@interface Deserializer : NSObject
- (int)initializeButtonTracking;
- (void)saveToDatabase:(currentLanguage)int int:(appThemeMode)int;
- (void)closeDatabaseConnection:(entitySession)int int:(isDarkThemeEnabled)int;
- (void)getPushNotificationData:(surveyStatusMessageText)int int:(surveyAnswerReviewStatusCompletionTimeText)int;
- (void)clearAppActivityData;
- (int)trackAnalyticsEvent:(surveyReviewCount)int int:(surveyAnswerComments)int;
- (int)sendAppNotificationData;
- (void)setScreenSize:(isLocationPermissionDenied)int;
- (void)updateAppState:(taskStatus)int;
- (void)getNotificationStatus:(applicationState)int int:(isEntityAdminVerified)int;
@end