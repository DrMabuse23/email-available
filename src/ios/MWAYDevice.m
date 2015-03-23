#import "MWAYDevice.h"
#import MessageUI;

@implementation MWAYDevice
- (void)isEmailAvaialable:(CDVInvokedUrlCommand*)command
{
    NSString* callbackId = [command callbackId];
    BOOL msg = [MFMailComposeViewController canSendMail];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsBool:msg];

    [self success:result callbackId:callbackId];
}
@end