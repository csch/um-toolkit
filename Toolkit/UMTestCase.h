
#import <Foundation/Foundation.h>
#import <SenTestingKit/SenTestingKit.h>

#define STAssertEqualInts(a,b,description) STAssertEquals((int)a, (int)b, description)
#define STAssertEqualFloats(a,b,description) STAssertEquals((float)a, (float)b, description)

@interface UMTestCase : SenTest

- (NSIndexPath*) firstRowIndexPath;

- (UIWindow*)keyWindow;

- (UIViewController*)getRootViewController;

- (void) waitFor: (CGFloat) seconds;

@end