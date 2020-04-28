#import "RNInvitereferrals.h"
#import <UIKit/UIKit.h>
#import "../InviteReferrals.h"

@implementation RNInvitereferrals

@synthesize irName, irEmail, irMobile, irCampaignID;

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(testIRLibrary) {
    @try{
        NSLog(@"testIRLibrary triggered !!");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Invitereferrals" message:@"Hello from Invitereferrals"
                                                       delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
        //callback(@[exception.reason, [NSNull null]]);
    }
    
}

RCT_EXPORT_METHOD(userDetails:(NSString*_Nullable)name  email:(NSString*_Nullable)email mobile:(NSString*_Nullable)mobile
                  campaignID:(NSString*_Nullable)campaignID customValue:(NSString*_Nullable)customValue
                  SubscriptionID:(NSString *_Nullable)subscriptionID callback:(RCTResponseSenderBlock)callback) {
    @try{
        NSLog(@"UserDetails triggered !!");
        // these varibales will required in tracking method
        self.irName = name;
        self.irEmail = email;
        self.irMobile = mobile;
        self.irCampaignID = campaignID;
        
        [InviteReferrals GetShareDataWithCampaignID: self.irCampaignID Email: self.irEmail mobile: self.irMobile name: self.irName SubscriptionID: subscriptionID ShowErrorAlerts: YES ShowActivityIndicatorViewWhileLoading: NO SharingDetails:^(NSMutableDictionary *irDetails) {
            callback(@[@"success", [NSNull null]]);
        }];
    }
    @catch(NSException *exception){
        callback(@[exception.reason, [NSNull null]]);
        NSLog(@"%@", exception.reason);
    }
}

//    [InviteReferrals setupUserID:email mobile:mobile name:name gender:nil
//    shareLink:nil shareTitle:nil shareDesc:nil shareImg:nil customValue:customValue
//    campaignID:campaignID flag:nil SubscriptionID: subscriptionID];



RCT_EXPORT_METHOD(inline_btn:(NSString*_Nullable)campaignID){
    @try{
        NSLog(@"InlineButton triggered !!");
        [InviteReferrals launch: campaignID Email: nil mobile: nil name: nil SubscriptionID: nil];
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
        //callback(@[exception.reason, [NSNull null]]);
    }
}

RCT_EXPORT_METHOD(invite:(NSString*_Nullable)irPopupRule){
    @try{
        NSLog(@"Invite triggered !!");
        [InviteReferrals showSharePopup: irPopupRule Email: nil mobile: nil name: nil SubscriptionID: nil];
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
        //callback(@[exception.reason, [NSNull null]]);
    }
}


RCT_EXPORT_METHOD(showWelcomeMessage){
    @try{
        NSLog(@"ShowWelcomeMessage triggered !!");
        [InviteReferrals welcomeMessage];
    }
    @catch(NSException *exception){
        NSLog(@"%@", exception.reason);
        //callback(@[exception.reason, [NSNull null]]);
    }
}

RCT_EXPORT_METHOD(tracking:(NSString*_Nullable)irEvent orderID:(NSString*_Nullable)irOrderID
                  purchaseValue:(NSString*_Nullable)irPurchaseValue referCode:(NSString *_Nullable)irReferCode
                  uniqueCode:(NSString *_Nullable)irUniqueCode callback:(RCTResponseSenderBlock)callback){
    @try{
        NSLog(@"tracking triggered !!");
        [InviteReferrals tracking: irEvent orderID: irOrderID purchaseValue: irPurchaseValue email: irEmail mobile: irMobile name: irName referCode: irReferCode uniqueCode: irUniqueCode isDebugMode: NO ComplitionHandler:^(NSMutableDictionary *irTrackingResponse) {
            NSError * irErr;
            NSData * irResponseJsonData = [NSJSONSerialization dataWithJSONObject: irTrackingResponse options: 0 error: &irErr];
            NSString * irResponseStr = [[NSString alloc] initWithData: irResponseJsonData encoding: NSUTF8StringEncoding];
            callback(@[irResponseStr, [NSNull null]]);
            //callback(@[[NSNull null], irResponseStr]);
        }];
    }
    @catch(NSException *exception){
        callback(@[exception.reason, [NSNull null]]);
        NSLog(@"%@", exception.reason);
    }
}

// RCT_EXPORT_METHOD(setupWithBrandId:(NSInteger)irBrandId encryptedKey:(NSString *_Nullable)irEncryptedKey) {
//     NSLog(@"setupWithBrandId triggered !!");
//     [InviteReferrals setupWithBrandId:irBrandId  encryptedKey:irEncryptedKey];
// }


//app delegate methods

+(void)setupWithBrandId:(int)irBrandId encryptedKey:(NSString *_Nullable)irEncryptedKey {
    NSLog(@"setupWithBrandId triggered !!");
    [InviteReferrals setupWithBrandId:irBrandId  encryptedKey:irEncryptedKey];
}

+(void)OpenUrlWithApplication:(UIApplication *_Nullable)application Url:(NSURL *_Nullable)url {
    NSLog(@"OpenUrlWithApplication triggered with url = %@", url);
    [InviteReferrals OpenUrlWithApplication: application Url: url];
}

+(void)setDefaultNavigationController:(UINavigationController *_Nullable)navController BarStyle:(UIBarStyle)navBarStyle PreferedStatusBarStyleLightContent:(BOOL)navCustomStatusBarStyleLightContent BarSetTranslucent:(BOOL)navSetBarTranslucent BarLoginScreenTitle:(NSString *_Nullable)navBarLoginScreenTitle BarShareScreenTitle:(NSString *_Nullable)navBarShareScreenTitle BarTitleTextAttributes:(NSDictionary<NSAttributedStringKey,id> * _Nullable)navBarTitleTextAttributes BarTitleColor:(NSString *_Nullable)navBarTitleColor BarBackground:(NSString *_Nullable)navBarBackground BarButtonPosition:(NSString *_Nullable)navBarButtonPosition BarButtonTitle:(NSString *_Nullable)navBarButtonTitle BarTextFontName:(NSString *_Nullable)navBarTextFontName BarTitleFontSize:(float)navBarTitleFontSize BarButtonTextAttributes:(NSDictionary<NSAttributedStringKey,id> * _Nullable)navBarButtonTextAttributes BarButtonFontSize:(float)navBarButtonFontSize BarButtonIconWidth:(float)navBarButtonIconWidth BarButtonIconHeight:(float)navBarButtonIconHeight BarButtonTintColor:(NSString *_Nullable)navBarButtonTintColor{
    
    NSLog(@"setDefaultNavigationController triggered !!");
    
    [InviteReferrals setDefaultNavigationController:navController BarStyle:navBarStyle PreferedStatusBarStyleLightContent:navCustomStatusBarStyleLightContent BarSetTranslucent:navSetBarTranslucent BarLoginScreenTitle:navBarLoginScreenTitle BarShareScreenTitle:navBarShareScreenTitle BarTitleTextAttributes:navBarTitleTextAttributes BarTitleColor:navBarTitleColor BarBackground:navBarBackground BarButtonPosition:navBarButtonPosition BarButtonTitle:navBarButtonTitle BarTextFontName:navBarTextFontName BarTitleFontSize:navBarTitleFontSize BarButtonTextAttributes:navBarButtonTextAttributes BarButtonFontSize:navBarButtonFontSize BarButtonIconWidth:navBarButtonIconWidth BarButtonIconHeight:navBarButtonIconHeight BarButtonTintColor:navBarButtonTintColor];

    
}


@end
