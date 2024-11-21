#import <Foundation/Foundation.h>
@interface Driver : NSObject
- (int)clearAppNotificationData;
- (void)fetchAppVersion:(isDeviceConnectedToWiFi)int;
- (int)sendInteractionData:(surveyAnswerCompletionProgress)int;
- (void)initializeUserAuthentication;
- (void)sendUserErrorData;
- (int)clearAppState:(deviceInformation)int int:(locationPermissionStatus)int;
- (int)refreshView;
- (int)trackAppError;
- (int)parseJsonResponse;
- (void)clearUserProfile;
- (int)sendPostRequest:(systemUiMode)int int:(isGpsSignalAvailable)int;
- (void)resetUI;
@end