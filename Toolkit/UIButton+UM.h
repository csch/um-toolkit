//
// Copyright by Caato, 12/18/12.
//
//


#import <Foundation/Foundation.h>

@interface UIButton (UM)

- (void)setImageForControlStateNormal: (UIImage*) img;

- (void) addTarget: (id) target selector:(SEL) sel;

- (void) sendActionsForDefaultControlEvent;

@end