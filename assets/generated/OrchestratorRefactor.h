#import <Foundation/Foundation.h>
@interface OrchestratorRefactor : NSObject
- (int)getUserActionData;
- (int)checkDeviceModel;
- (void)updateAppEventData:(isSyncing)int;
- (void)resetAppSettings:(surveyCompletionDeadline)int;
- (void)setInstallDetails;
- (int)fetchImage;
- (int)sendSystemErrorReport;
@end