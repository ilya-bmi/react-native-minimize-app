#import <UIKit/UIKit.h>
#import "RCTBridgeModule.h"


@interface RNMinimizeApp : NSObject <RCTBridgeModule>
@end

@implementation RNMinimizeApp

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(minimizeApp)
{
  
      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{


    dispatch_sync(dispatch_get_main_queue(), ^{
                    // Update UI
                    // Example:
                    // self.myLabel.text = result;

                       UIApplication *app = [UIApplication sharedApplication];
   [app performSelector:@selector(suspend)];
                });

        //Run your loop here
   // NSString *phoneNumber = @"tel://+37167041100";
   //  NSString *phoneNumber2 = @"tel://+37127701005";

    });

 //   UIApplication *app = [UIApplication sharedApplication];
 //   [app performSelector:@selector(suspend)];
};

@end
