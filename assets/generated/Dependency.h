#import <Foundation/Foundation.h>
@interface Dependency : NSObject
- (int)clearBackup;
- (int)clearPageVisitData:(taskEndDate)int;
- (void)updateLocation:(dataSyncStatus)int;
- (void)updateUserStatusReport:(isAppUpdateNotified)int int:(entityProgressStatus)int;
- (void)updateSessionData:(isFileDecompressionEnabled)int;
- (void)getLocale:(surveySurveyType)int;
- (int)deleteFromDatabase:(surveyQuestionResponseTime)int int:(isCloudStorageEnabled)int;
- (int)sendLocationDetails:(surveyAnswerReviewProgressMessage)int int:(privacyPolicyAcceptedTime)int;
- (void)sendFeedback:(deviceConnectivityStatus)int;
- (int)saveData:(notificationSettings)int;
- (void)launchApp:(taskErrorDetails)int;
- (int)syncUserData:(isEntityInactive)int int:(surveyAnswerCompletionMessageText)int;
- (void)updateActivityDetails;
- (int)clearScreenViewData:(entitySearchHistory)int int:(syncData)int;
- (void)sendUserNotificationData:(isTermsAndConditionsAccepted)int int:(isTaskCompleted)int;
- (int)sendDataToServer;
- (void)initializeAnalytics:(taskCompletionStatus)int;
- (int)storeDataLocally;
@end