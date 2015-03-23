#import "MWAYDevice.h"
@implementation MWAYDevice
- (void)isEmailAvailable:(CDVInvokedUrlCommand*)command
{
    BOOL msg = [MFMailComposeViewController canSendMail];
    CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:msg];
   [self.commandDelegate sendPluginResult:result callbackId: command.callbackId];
}
@end
