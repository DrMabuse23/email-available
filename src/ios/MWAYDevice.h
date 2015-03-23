#import <Cordova/CDV.h>
#import <MessageUI/MFMessageComposeViewController.h>
#import <MessageUI/MFMailComposeViewController.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface MWAYDevice : CDVPlugin
- (void) isEmailAvailable:(CDVInvokedUrlCommand*)command;
@end
