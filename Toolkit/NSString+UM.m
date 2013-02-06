//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSString+UM.h"


@implementation NSString (UM)

- (NSString*) trimmedVersion {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL) isEqualToStringIgnoreCase: (NSString*) other {
    return [self caseInsensitiveCompare:other] == NSOrderedSame;
}

- (Boolean) isEmpty {
    return [self trimmedVersion].length == 0;
}

@end