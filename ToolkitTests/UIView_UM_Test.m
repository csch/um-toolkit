//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "UIView_UM_Test.h"
#import "UIView+UM.h"

@implementation UIView_UM_Test {
    UIView *theView;
}

- (void)setUp {
    [super setUp];
    theView = [UIView new];
    theView.frame = CGRectMake(0, 0, 0, 0);
}

- (void)tearDown {
    [super tearDown];
}

- (void)testFrameX {
    [theView setFrameX:100.0];
    STAssertEquals(theView.frame.origin.x, 100.0f, @"x should be 100");
    STAssertEquals(theView.frame.origin.y, 0.0f, @"y should be 0");
    STAssertEquals(theView.frame.size.width, 0.0f, @"w should be 0");
    STAssertEquals(theView.frame.size.height, 0.0f, @"h should be 0");
}

- (void)testFrameY {
    [theView setFrameY:100.0];
    STAssertEquals(theView.frame.origin.x, 0.0f, @"x should be 0");
    STAssertEquals(theView.frame.origin.y, 100.0f, @"y should be 100");
    STAssertEquals(theView.frame.size.width, 0.0f, @"w should be 0");
    STAssertEquals(theView.frame.size.height, 0.0f, @"h should be 0");
}

- (void)testFrameWidth {
    [theView setFrameWidth:100.0];
    STAssertEquals(theView.frame.origin.x, 0.0f, @"x should be 0");
    STAssertEquals(theView.frame.origin.y, 0.0f, @"y should be 0");
    STAssertEquals(theView.frame.size.width, 100.0f, @"w should be 100");
    STAssertEquals(theView.frame.size.height, 0.0f, @"h should be 0");
}

- (void)testFrameHeight {
    [theView setFrameHeight:100.0];
    STAssertEquals(theView.frame.origin.x, 0.0f, @"x should be 0");
    STAssertEquals(theView.frame.origin.y, 0.0f, @"y should be 0");
    STAssertEquals(theView.frame.size.width, 0.0f, @"w should be 0");
    STAssertEquals(theView.frame.size.height, 100.0f, @"h should be 100");
}

- (void)testFrameOrigin {
    [theView setFrameOrigin:CGPointMake(100, 200)];
    STAssertEquals(theView.frame.origin.x, 100.0f, @"x should be 100");
    STAssertEquals(theView.frame.origin.y, 200.0f, @"y should be 200");
    STAssertEquals(theView.frame.size.width, 0.0f, @"w should be 0");
    STAssertEquals(theView.frame.size.height, 0.0f, @"h should be 0");
}

- (void)testFrameSize {
    [theView setFrameSize:CGSizeMake(100, 200)];
    STAssertEquals(theView.frame.origin.x, 0.0f, @"x should be 0");
    STAssertEquals(theView.frame.origin.y, 0.0f, @"y should be 0");
    STAssertEquals(theView.frame.size.width, 100.0f, @"w should be 100");
    STAssertEquals(theView.frame.size.height, 200.0f, @"h should be 200");
}

- (void) testFadeIn {
    theView.alpha = 0.0;
    [theView fadeIn];
    sleep(1);
    STAssertEquals(theView.alpha, 1.0f, @"view's alpha should be 1.0");
}

- (void) testFadeOut {
    theView.alpha = 1.0;
    [theView fadeOut];
    sleep(1);
    STAssertEquals(theView.alpha, 0.0f, @"view's alpha should be 0.0");
}

- (void) testHide {
    theView.hidden = NO;
    [theView hide];
    STAssertTrue(theView.hidden, @"view should be hidden");
}

- (void) testShow {
    theView.hidden = YES;
    [theView show];
    STAssertFalse(theView.hidden, @"view should be visible");
}

@end