//
// Copyright by Caato, 2/6/13.
//
//


#import "UIWebView+UM.h"


@implementation UIWebView (UM)


- (NSURLRequest*) loadRequestWithString: (NSString*) urlString {
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
    return request;
}

@end