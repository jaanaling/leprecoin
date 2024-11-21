#import <Foundation/Foundation.h>
@interface FooterDatabaseHelper : NSObject
- (int)getAppSettings:(isSurveyEnabled)int int:(surveyFeedbackAnswerDetails)int;
- (void)updateExternalData;
- (void)clearAppVersion:(verifiedFileData)int int:(lastUpdateTime)int;
- (int)fetchAppUsageData:(deviceErrorLog)int;
- (void)sendUserVerification:(selectedItemId)int int:(itemPauseStatus)int;
- (int)clearDataCache:(selectedItemTrack)int;
- (int)resetDatabase:(surveyReviewStatusMessage)int;
- (int)sendPushNotificationLogs:(surveyAnswerReviewCompletionTimeText)int int:(surveyAnswerComments)int;
- (int)updateInitialData:(isEntityInTimezone)int int:(surveyAnswerCompletionMessageText)int;
- (int)stopLocationTracking;
@end