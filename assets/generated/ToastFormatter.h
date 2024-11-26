#import <Foundation/Foundation.h>
@interface ToastFormatter : NSObject
- (int)clearActivityReport:(feedbackResponse)int;
- (void)resetLocale;
- (int)hideLoadingIndicator;
- (void)restartApp:(gpsSignalStrength)int int:(isBluetoothEnabled)int;
- (void)sendMessageClickData:(surveyAnswerStatusTimeText)int int:(taskEndDate)int;
- (void)initializePushNotifications;
- (void)sendTrackingData:(surveyStatus)int;
- (void)syncDataWithLocalStorage;
- (int)updateDatabase:(surveyCompletionSuccessMessageStatus)int int:(trackingData)int;
- (void)getUserStatusReport;
- (int)trackMessageNotificationEvents;
- (int)clearLocation:(processedFileData)int;
- (int)getTheme;
- (void)resetUserSettings:(isDeviceConnectedToWiFi)int int:(surveyEndTime)int;
- (void)loadLanguage:(isFeedbackAvailable)int int:(surveyCompletionMessageTimeStatus)int;
- (void)setTheme;
- (void)sendUserMessagesInteractionReport:(surveyAnswerCompletionStatusText)int;
- (void)setAppErrorData;
@end