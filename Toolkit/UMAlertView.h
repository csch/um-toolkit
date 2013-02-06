/**
 * UIAlertView that allows the definition and execution of a completion block
*/

#import <UIKit/UIKit.h>

@interface UMAlertView : UIAlertView <UIAlertViewDelegate>

- (id)initWithTitle:(NSString *)title message:(NSString *)message completion:(void (^)(NSInteger buttonIndex, UIAlertView* alertView))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

@end