
#import "UMTestCase.h"


@implementation UMTestCase {

}

- (NSIndexPath*) firstRowIndexPath {
    return [NSIndexPath indexPathForRow:0 inSection:0];
}

- (UIWindow*) keyWindow {
    return [[UIApplication sharedApplication] keyWindow];
}

- (UIViewController*) getRootViewController {
    return [[self keyWindow] rootViewController];
}

- (void) waitFor: (CGFloat) seconds {
    [[NSRunLoop currentRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:seconds]];
}

@end