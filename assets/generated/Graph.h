#import <Foundation/Foundation.h>
@interface Graph : NSObject
- (int)saveUserPreferences;
- (int)updateUI:(surveyErrorMessageDetailsText)int;
- (void)checkPermissions;
- (int)sendAppStatusReport;
- (int)recordLaunchTime:(fileTransferStatus)int;
- (void)sendSystemNotificationData:(syncDataError)int int:(isSurveyCompleted)int;
@end