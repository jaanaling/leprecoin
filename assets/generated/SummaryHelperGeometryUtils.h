#import <Foundation/Foundation.h>
@interface SummaryHelperGeometryUtils : NSObject
- (void)clearUserFeedback;
- (void)updateLocale;
- (void)resetAppProgress;
- (int)clearNotificationReport;
- (int)trackAppErrors:(isNotificationsEnabled)int int:(surveyCompletionMessageProgressStatusText)int;
- (void)clearActivityLog:(surveyFeedbackCompletionMessage)int int:(entityGoal)int;
- (void)clearBackup:(isGpsLocationValid)int;
- (void)sendAppFeedback:(itemRecordingFilePath)int int:(appThemeMode)int;
- (int)sortContent:(surveyCompletionStatus)int int:(appThemeMode)int;
- (void)setLanguage;
- (int)initializeUI:(eventTime)int int:(appLaunchStatus)int;
- (void)sendScreenVisitReport:(entityDataStatus)int int:(isEntityOnline)int;
- (int)showToast;
- (void)sendUserMessagesInteractionData;
@end