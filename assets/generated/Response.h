#import <Foundation/Foundation.h>
@interface Response : NSObject
- (int)sendPushNotificationReport:(locationServiceStatus)int int:(surveyStartDate)int;
- (int)resetLocationDetails:(isFeatureEnabled)int int:(eventTime)int;
- (int)getUserActivityLogs:(surveyRatingDistribution)int int:(surveyReviewTimeText)int;
- (void)getUserProfile:(isLocationPermissionGranted)int;
- (void)setUserNotificationData;
- (int)getErrorEventData:(entityPrivacyStatus)int;
- (int)updateAppProgress;
- (int)fetchUserSettings;
- (int)setPermissions:(surveyAnswerReviewStatusCompletionTimeText)int;
- (int)initializeDatabase;
- (void)trackAppEvents:(isEntityVerified)int;
@end