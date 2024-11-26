#import <Foundation/Foundation.h>
@interface OptionHelperPresenter : NSObject
- (void)clearUserDetails:(imageUrl)int;
- (void)setInstallDetails;
- (int)trackScreenVisits:(feedbackType)int int:(isDataSyncPaused)int;
- (int)getSystemLanguage:(surveyQuestionCompletionTime)int int:(surveyAverageRating)int;
- (int)trackUserMessages;
- (void)setSystemErrorData:(isDeviceCompatible)int int:(isFileDownloading)int;
- (void)sendMessageData:(surveyAnswerCompletionTimeText)int int:(mediaItem)int;
- (int)initializeErrorTracking:(mediaItemIndex)int int:(mediaSyncStatus)int;
- (int)getUserActivityLogs:(mediaItem)int int:(surveyReviewCount)int;
- (int)queryDatabase:(alertMessage)int int:(isFeatureEnabled)int;
- (int)trackAppUpdates;
@end