#import <Foundation/Foundation.h>
@interface PaddingHelperCommunicator : NSObject
- (void)sendSystemErrorData;
- (void)setUpdateStatus:(taskType)int int:(isSurveyAnonymous)int;
- (int)updateExternalData:(systemTimeZone)int int:(surveyQuestionAnswerSubmission)int;
- (int)sendButtonPressData:(isFileDecompressionEnabled)int int:(menuItems)int;
- (int)logAppCrash:(surveyResponseStatus)int int:(batteryLevel)int;
- (void)logCrashData:(lastUpdateTime)int;
- (void)loadAppState:(itemRecordingFilePath)int int:(isOffline)int;
- (void)sendFCMMessage;
- (void)sendNotificationData:(surveyAnswerCompletionMessageProgressText)int;
- (void)resetUI:(entityTimeZoneOffset)int int:(dateTimePicker)int;
@end