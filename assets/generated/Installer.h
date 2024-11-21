#import <Foundation/Foundation.h>
@interface Installer : NSObject
- (void)trackSessionData:(selectedLanguageCode)int int:(isBackupAvailable)int;
- (void)clearAppStatusReport:(appUpgradeStatus)int;
- (void)checkUserAuthentication;
- (void)getLocale;
@end