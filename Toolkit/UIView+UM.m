//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIView+UM.h"


@implementation UIView (UM)

- (void) setFrameX: (CGFloat) x {
    CGRect newFrame = self.frame;
    newFrame.origin = CGPointMake(x, newFrame.origin.y);
    self.frame = newFrame;
}

- (void) setFrameY: (CGFloat) y {
    CGRect newFrame = self.frame;
    newFrame.origin = CGPointMake(newFrame.origin.x, y);
    self.frame = newFrame;
}

- (void) setFrameWidth: (CGFloat) width {
    CGRect newFrame = self.frame;
    newFrame.size = CGSizeMake(width, newFrame.size.height);
    self.frame = newFrame;
}

- (void) setFrameHeight: (CGFloat) height {
    CGRect newFrame = self.frame;
    newFrame.size = CGSizeMake(newFrame.size.width, height);
    self.frame = newFrame;
}

- (void) setFrameSize: (CGSize) size {
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
}

- (void) setFrameOrigin: (CGPoint) p {
    CGRect newFrame = self.frame;
    newFrame.origin = p;
    self.frame = newFrame;
}

- (void) fadeIn {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.25];
    self.alpha = 1.0;
    [UIView commitAnimations];
}

- (void) fadeOut {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.25];
    self.alpha = 0.0;
    [UIView commitAnimations];
}

- (void) show {
    self.hidden = NO;
}

- (void) hide {
    self.hidden = YES;
}

@end