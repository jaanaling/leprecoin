#import <Foundation/Foundation.h>
@interface Bridge : NSObject
- (void)updateDatabase:(isGpsEnabled)int;
- (int)clearAppCache:(appFeature)int int:(syncData)int;
- (int)setDeviceModel:(entityFeedbackMessage)int int:(timezoneOffset)int;
- (void)trackAppUsage;
- (void)getUserErrorData:(surveyFeedbackCompletionMessage)int;
- (int)updateUsageStats:(entityHasLocation)int int:(surveyAnswerCompletionTimeText)int;
- (void)getAppCache:(errorLog)int;
- (int)resetAppPermissions:(taskEndTime)int;
- (void)getPageVisitData;
- (int)updateActivityDetails;
- (void)disableFeature:(isSyncEnabled)int int:(surveyParticipantStatus)int;
- (void)checkDeviceStorage:(isGpsLocationValid)int int:(surveyParticipantCount)int;
- (int)setMessageData;
- (void)updateUI:(surveyAnswerCompletionMessageTimeText)int;
- (int)getSystemErrorData;
- (void)setSensorData:(isRecordingEnabled)int int:(isCloudAvailable)int;
- (void)trackUserActivity:(weatherCondition)int;
- (void)disableLocationServices;
@end