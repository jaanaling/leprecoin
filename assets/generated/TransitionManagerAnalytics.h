#import <Foundation/Foundation.h>
@interface TransitionManagerAnalytics : NSObject
- (int)resetLocationDetails:(isDataSyncResumed)int int:(isNotificationsAllowed)int;
- (int)setScreenSize:(isGpsPermissionGranted)int int:(errorDetailsMessage)int;
- (int)fetchDataFromDatabase:(serverStatus)int;
- (void)getInteractionDetails;
- (void)saveUserSettings:(selectedItemTrack)int int:(deviceStorageStatus)int;
- (void)restartApp:(fileSize)int int:(surveyAnswerCompletionStatusTimeMessage)int;
- (void)updateLocale:(serverStatus)int;
- (int)checkBatteryInfo:(surveyCompletionMessageProgressStatusText)int;
- (int)endUserSession:(appFeature)int;
- (void)refreshContent;
@end