//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIView+UM.h"



@implementation UIView (UM)

- (void) removeAllSubviews {
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
}

- (NSArray*) viewsWithTag: (NSUInteger) tag {
    NSMutableArray* views = [NSMutableArray new];
    for (UIView* sub in self.subviews) {
        if (sub.tag == tag) {
            [views addObject:sub];
        }
    }
    return views;
}

- (CGFloat)frameX {
    return self.frame.origin.x;
}

- (CGFloat)frameY {
    return self.frame.origin.y;
}

- (CGFloat)frameHeight {
    return self.frame.size.height;
}

- (CGFloat)frameWidth {
    return self.frame.size.width;
}

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

- (void) setCenterX: (CGFloat) x {
    self.center = CGPointMake(x, self.center.y);
}

- (void) setCenterY: (CGFloat) y {
    self.center = CGPointMake(self.center.x, y);
}

- (void) fadeIn {
    [self fadeInWithDuration:0.25];
}

- (void) fadeOut {
    [self fadeOutWithDuration:0.25];
}

- (void) fadeInWithDuration: (CGFloat) duration {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:duration];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    self.alpha = 1.0;
    [UIView commitAnimations];
}

- (void) fadeOutWithDuration: (CGFloat) duration {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:duration];
    self.alpha = 0.0;
    [UIView commitAnimations];
}

- (void) centerInFrame: (CGRect) frame {
    CGFloat x = (frame.size.width - self.frame.size.width) / 2.0;
    CGFloat y = (frame.size.height - self.frame.size.height) / 2.0;
    [self setFrameOrigin:CGPointMake(x, y)];
}

- (void) show {
    self.hidden = NO;
}

- (void) hide {
    self.hidden = YES;
}

- (void)moveUp:(CGFloat) up {
    [self setFrameY:self.frame.origin.y-up];
}

- (void)moveLeft:(CGFloat) left {
    [self setFrameX:self.frame.origin.x-left];
}

- (void)moveRight:(CGFloat) right {
    [self moveLeft:-right];
}

- (void)moveDown:(CGFloat) down {
    [self moveUp:-down];
}


@end