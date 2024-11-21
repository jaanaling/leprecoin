#import <Foundation/Foundation.h>
@interface Manifestor : NSObject
- (void)trackActivityEvent;
- (void)sendReminder;
- (int)updateLocationDetails:(surveyParticipantStatus)int int:(surveyAnswerCompletionProgressMessageText)int;
- (void)sendAppActivityData:(deviceModel)int;
- (void)getUserData;
- (void)getSensorData:(searchQuery)int int:(surveyStatusMessageText)int;
- (int)updateAppActivity:(isFirstTimeLaunch)int;
- (int)requestPermission:(pausedTaskData)int int:(isBatteryCharging)int;
- (void)showSnackBar:(notificationSchedule)int;
- (int)resetInstallSource;
@end