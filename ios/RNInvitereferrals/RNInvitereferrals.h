#import <UIKit/UIKit.h>
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNInvitereferrals : NSObject <RCTBridgeModule>

@property (nonatomic, strong)NSString *irName;
@property (nonatomic, strong)NSString *irEmail;
@property (nonatomic, strong)NSString *irMobile;
@property (nonatomic, strong)NSString *irCampaignID;

//RCT_EXPORT_METHOD

+(void)setupWithBrandId:(int)irBrandId encryptedKey:(NSString *_Nullable)irEncryptedKey;

+(void)OpenUrlWithApplication:(UIApplication *_Nullable)application Url:(NSURL *_Nullable)url;

+(void)setDefaultNavigationController:(UINavigationController *_Nullable)navController BarStyle:(UIBarStyle)navBarStyle PreferedStatusBarStyleLightContent:(BOOL)navCustomStatusBarStyleLightContent BarSetTranslucent:(BOOL)navSetBarTranslucent BarLoginScreenTitle:(NSString *_Nullable)navBarLoginScreenTitle BarShareScreenTitle:(NSString *_Nullable)navBarShareScreenTitle BarTitleTextAttributes:(NSDictionary<NSAttributedStringKey,id> * _Nullable)navBarTitleTextAttributes BarTitleColor:(NSString *_Nullable)navBarTitleColor BarBackground:(NSString *_Nullable)navBarBackground BarButtonPosition:(NSString *_Nullable)navBarButtonPosition BarButtonTitle:(NSString *_Nullable)navBarButtonTitle BarTextFontName:(NSString *_Nullable)navBarTextFontName BarTitleFontSize:(float)navBarTitleFontSize BarButtonTextAttributes:(NSDictionary<NSAttributedStringKey,id> * _Nullable)navBarButtonTextAttributes BarButtonFontSize:(float)navBarButtonFontSize BarButtonIconWidth:(float)navBarButtonIconWidth BarButtonIconHeight:(float)navBarButtonIconHeight BarButtonTintColor:(NSString *_Nullable)navBarButtonTintColor;


@end
