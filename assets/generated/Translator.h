#import <Foundation/Foundation.h>
@interface Translator : NSObject
- (int)clearUserActivity;
- (int)getUserActivityLogs:(surveyAnswerReviewMessage)int int:(surveyRatingDistribution)int;
- (int)sendAppStatusReport:(appFeature)int;
- (int)clearSettings:(surveyAnswerReviewStatus)int;
- (int)getLocation:(surveyCompletionStatusMessage)int;
- (int)getLanguage:(syncData)int;
- (int)updateInteractionDetails;
- (int)setReminderDetails:(itemRecordingFilePath)int;
@end