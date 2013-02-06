//
// Copyright by Caato, 12/18/12.
//
//


#import "UIButton+UM.h"


@implementation UIButton (UM)


- (void)setImageForControlStateNormal:(UIImage*)img {
    [self setImage:img forState:UIControlStateNormal];
}

- (void)addTarget:(id)target selector:(SEL)sel {
    [self addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
}

- (void)sendActionsForDefaultControlEvent {
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}

@end