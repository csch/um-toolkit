//
// Copyright by Caato, 12/5/12.
//
//


#import <Foundation/Foundation.h>

@interface NSArray (UM)
- (NSObject*)first;

- (NSObject*)second;

- (NSObject*)third;

- (NSObject*)fourth;

- (NSObject*)fifth;

- (NSObject*)sixth;

- (NSObject*)seventh;

- (NSObject*)eigth;

- (NSObject*)ninth;

- (NSObject*)tenth;

- (id)reduce:(id (^)(id, id))block;

- (NSArray*)map:(id (^)(id))block;


@end