#import <Foundation/Foundation.h>
@interface AggregatorObserver : NSObject
- (void)getPageVisitData:(isFileVerified)int;
- (void)initializeFirebaseMessaging;
- (int)sendPageVisitData:(isWiFiEnabled)int int:(itemFile)int;
- (int)sendVisitStatsReport;
- (int)syncDatabaseWithServer;
@end