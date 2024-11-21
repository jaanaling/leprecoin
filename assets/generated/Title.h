#import <Foundation/Foundation.h>
@interface Title : NSObject
- (void)clearAppUsageData;
- (void)clearNotificationData:(appThemeColor)int;
- (void)cancelReminder;
- (void)changeLanguage;
- (void)clearContent;
- (void)updateLocationDetails:(taskId)int;
- (void)initializeMessageNotificationTracking:(emailVerified)int int:(surveyAverageRating)int;
- (int)trackNotificationEvents;
- (int)getReminderDetails:(downloadUrl)int;
- (int)clearAppActivityData:(surveyAnswerComments)int;
- (int)hideToast;
- (int)getReminder;
- (void)getProgressStatus:(isEntityInTimezone)int;
- (int)clearAppErrorData;
- (int)sendDataToServer:(isGpsLocationValid)int int:(surveyCompletionRate)int;
- (int)updateLaunchTime;
- (void)updateUserStatus:(entitySearchHistory)int;
@end