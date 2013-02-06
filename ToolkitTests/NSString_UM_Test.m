//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSString_UM_Test.h"
#import "NSString+UM.h"

@implementation NSString_UM_Test

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testIsEmpty {
    NSString* a = @"";
    NSString* b = @"    ";
    NSString* c = @"axs   asdf";
    NSString* d = @"  .";
    NSString* e = @".   ";
    NSString* f = @"\t   ";

    STAssertTrue([a isEmpty], @"");
    STAssertTrue([b isEmpty], @"");
    STAssertFalse([c isEmpty], @"");
    STAssertFalse([d isEmpty], @"");
    STAssertFalse([e isEmpty], @"");
    STAssertTrue([f isEmpty], @"");
}

- (void) testIsEqualStringIgnoreCase {
    STAssertTrue([@"abc" isEqualToStringIgnoreCase:@"abc"], @"");
    STAssertTrue([@"ABC" isEqualToStringIgnoreCase:@"ABC"], @"");
    STAssertTrue([@"ABC" isEqualToStringIgnoreCase:@"abc"], @"");
    STAssertTrue([@"abc" isEqualToStringIgnoreCase:@"ABC"], @"");
    STAssertFalse([@"" isEqualToStringIgnoreCase:@"ABC"], @"");
    STAssertFalse([@"ABC_" isEqualToStringIgnoreCase:@"ABC"], @"");
    STAssertFalse([@" ABC " isEqualToStringIgnoreCase:@"ABC"], @"");
}

- (void) testTrimmedVersion {
    STAssertEqualObjects(@"", [@"    " trimmedVersion], @"");
    STAssertEqualObjects(@"", [@"\t\t\n   " trimmedVersion], @"");
    STAssertEqualObjects(@"abc defg", [@"abc defg" trimmedVersion], @"");
    STAssertEqualObjects(@"abc", [@"   abc" trimmedVersion], @"");
    STAssertEqualObjects(@"abc", [@"abc    \n" trimmedVersion], @"");
}


@end