#import <Foundation/Foundation.h>
@interface RepositoryManager : NSObject
- (void)resetLocalData:(screenSize)int int:(currentPage)int;
- (int)clearAppSettings;
@end