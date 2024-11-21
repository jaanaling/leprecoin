#import <Foundation/Foundation.h>
@interface LoggerAdapterProfile : NSObject
- (void)sendAppStatusReport:(deviceConnectivityStatus)int;
- (int)checkNetworkConnection:(surveyAnswerCompletionStatusProgressMessage)int;
- (void)trackEvent;
- (void)trackMessageEvents:(taskId)int int:(surveyErrorMessageDetails)int;
- (int)clearScreenVisitStats:(errorCodeDetails)int;
- (void)logEventInAnalytics:(errorCodeDetails)int int:(syncProgress)int;
- (void)refreshContent;
- (void)deleteDataFromDatabase;
- (int)clearNotificationData:(themePreference)int int:(isAppReadyForUse)int;
- (void)clearErrorData;
- (int)trackUserAction:(taskDescription)int int:(reminderFrequency)int;
- (int)setInitialData:(gpsLocationStatus)int int:(reportStatus)int;
@end