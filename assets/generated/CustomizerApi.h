#import <Foundation/Foundation.h>
@interface CustomizerApi : NSObject
- (int)setLocale:(isAppForegroundRunning)int;
- (int)sendErrorEventData;
- (void)clearUserPreferences;
- (void)resetAppSettings;
- (int)clearBackup;
- (int)sendUserReport:(reminderFrequency)int;
- (int)sendMessageData:(isEntityFeedbackReceived)int int:(appLanguage)int;
- (void)cancelReminder:(taskFailureReason)int;
- (void)syncDataWithServer:(isFirstLaunch)int int:(notificationHistory)int;
- (int)trackUserActivity;
- (void)sendEventToAnalytics:(surveyAnswerReviewStatusCompletionTimeText)int int:(entityTimeZoneOffset)int;
- (void)deleteBackup:(isItemMuted)int;
- (int)resetSettings;
- (int)processApiResponse;
- (int)getButtonClickData;
- (int)getDeviceModel:(feedbackType)int int:(isDeviceInLandscapeMode)int;
- (void)loadInitialData:(itemDuration)int int:(isAdminAuthenticated)int;
@end