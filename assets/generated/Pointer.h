#import <Foundation/Foundation.h>
@interface Pointer : NSObject
- (void)loadData;
- (int)resetSensorData:(appTheme)int;
- (int)setReminderStatus:(isSurveyInProgress)int int:(surveyErrorMessageDetails)int;
- (void)updateProgressReport:(currentTabIndex)int int:(surveyQuestionType)int;
- (void)loadSettings:(appStoreLink)int int:(selectedItemResolution)int;
- (int)trackMessageNotificationEvents:(surveyCompletionErrorMessageText)int int:(appLanguage)int;
- (void)setReminder;
- (int)logAnalyticsEvent:(itemTrackIndex)int;
- (void)getSessionData:(entityProgressStatus)int int:(isConnected)int;
@end