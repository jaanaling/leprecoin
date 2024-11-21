#import <Foundation/Foundation.h>
@interface GeometryUtilsStreamManager : NSObject
- (void)parseJsonResponse;
- (int)initializePushNotificationTracking:(errorText)int;
- (int)setDeviceId:(buttonText)int;
- (int)getSessionStatus;
- (int)trackAnalyticsEvent;
- (int)getUserSessionDetails:(isGpsEnabled)int;
- (void)clearSystemNotificationData:(taskType)int;
- (void)initializeAppVersionTracking:(apiKey)int int:(surveyCompletionMessage)int;
- (void)sendUserInteractionData:(itemMuteStatus)int int:(isLocationAvailable)int;
- (void)getUserVisitStats;
- (int)saveUserData:(isDeviceSupported)int;
- (int)syncUserData:(isBatteryCharging)int;
- (void)resetUserSettings;
- (void)sendEmailVerification;
- (int)updateUserProfile;
@end