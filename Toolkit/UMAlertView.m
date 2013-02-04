#import "UMAlertView.h"


@interface UMAlertView ()
@property (copy, nonatomic) void (^completion)(NSInteger, UIAlertView*);
@end

@implementation UMAlertView

@synthesize completion=_completion;

- (id)initWithTitle:(NSString *)title message:(NSString *)message completion:(void (^)(NSInteger buttonIndex, UIAlertView* alertView))completion cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {

    if (self = [super initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil]) {
        self.completion = completion;

        if (otherButtonTitles != nil) {
            // this is needed to get the first element
            [self addButtonWithTitle:otherButtonTitles];
            va_list args;
            va_start(args, otherButtonTitles);
            NSString* buttonTitle;
            while((buttonTitle = va_arg(args,NSString*))) {
                [self addButtonWithTitle:buttonTitle];
            }
            va_end(args);
        }
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    self.completion(buttonIndex, self);
}

- (void) dealloc {
   self.completion = nil;
}

@end