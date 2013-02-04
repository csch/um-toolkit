//
// Copyright by Caato, 12/5/12.
//
//


#import "NSArray+UM.h"


@implementation NSArray (UM)

- (NSObject*) first {
    return [self objectAtIndex:0];
}

- (NSObject*) second {
    return [self objectAtIndex:1];
}

- (NSObject*) third {
    return [self objectAtIndex:2];
}
- (NSObject*) fourth {
    return [self objectAtIndex:3];
}

- (NSObject*) fifth {
    return [self objectAtIndex:4];
}

- (NSObject*) sixth {
    return [self objectAtIndex:5];
}

- (NSObject*) seventh {
    return [self objectAtIndex:6];
}

- (NSObject*) eigth {
    return [self objectAtIndex:7];
}

- (NSObject*) ninth {
    return [self objectAtIndex:8];
}

- (NSObject*) tenth {
    return [self objectAtIndex:9];
}

- (NSArray *)map:(id (^)(id obj))block {
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    for (id item in self) {
        [array addObject:block(item)];
    };
    return array; //[NSArray arrayWithArray:array];
}

@end