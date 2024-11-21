#import <Foundation/Foundation.h>
@interface CalibratorMiddleware : NSObject
- (void)clearUserInteractionData:(contentUrl)int int:(downloadUrl)int;
- (void)trackUserNotifications:(systemErrorStatus)int;
- (void)clearSessionData;
- (void)sendAppMetrics;
- (int)sendAppEventData:(isGpsSignalAvailable)int int:(surveyFeedbackGiven)int;
- (void)updateActivityReport;
- (void)sendEmail;
- (int)sendErrorReport;
- (int)getProgressReport:(privacySettings)int int:(entityLocationError)int;
- (void)sendAppStatusReport:(isFileVerificationEnabled)int;
- (int)getDeviceName;
- (void)setLocationDetails;
- (int)clearScreenVisitStats:(locationPermissionStatus)int int:(isContentAvailable)int;
- (void)fetchDataFromCache:(isTaskResumed)int;
- (void)sendUserVerification:(applicationState)int;
- (void)sendDeviceActivity:(geoFenceArea)int int:(isDarkMode)int;
- (void)setReminderStatus:(selectedLanguage)int;
@end