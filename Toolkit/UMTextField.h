//
// Copyright by Caato, 2/6/13.
//
//


#import <Foundation/Foundation.h>


/*
 * A plain old UITextField with a slim rounded rect border and a bit of padding for the text
 */
@interface UMTextField : UITextField


@property(nonatomic) int marginWidth;
@property(nonatomic) int marginHeight;

@property(nonatomic) int yOffset;
@property(nonatomic) int additionalWidth;
@end