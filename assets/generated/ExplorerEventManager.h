#import <Foundation/Foundation.h>
@interface ExplorerEventManager : NSObject
- (int)sendAppSettingsData:(itemProgress)int int:(contentType)int;
- (void)updateDatabase;
- (void)getUserInteractionData:(itemRecordingDuration)int int:(entityFeedbackStatus)int;
- (void)clearContent:(isMediaPlaying)int;
- (int)sendAppErrorData:(surveyCompletionMessageStatusText)int int:(appInMemoryUsage)int;
- (void)initializeCrashlytics;
- (void)setUserAction:(fileCompressionStatus)int int:(verifiedFileData)int;
- (int)storeDataInCache:(isItemPlaying)int;
- (int)sendEmail;
- (int)getAppErrorData;
- (void)saveAppState;
- (int)resetSensorData:(systemErrorLogs)int int:(isAppSoundEnabled)int;
- (int)setSessionStatus;
@end