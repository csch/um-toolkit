//
// Copyright by Caato, 11/5/12.
//
//


#import "UMUtils.h"


@implementation UMUtils {

}


/// TIME STUFF

+ (NSString*) currentYearString {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"YYYY"];
    NSString* dateString = [dateFormat stringFromDate:[NSDate date]];
    return dateString;
}

+ (NSString*) currentWeekdayString {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"EEEE"];
    NSDate* now = [NSDate date];
    NSString* dateString = [dateFormat stringFromDate:now];
    return dateString;
}

+ (NSString*) currentTimeString {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"HH:mm"];
    NSDate* now = [NSDate date];
    NSString* dateString = [dateFormat stringFromDate:now];
    return dateString;
}

+ (NSString*) stringForDate: (NSDate*) date {
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd.MM.YYYY"];
    NSString* dateString = [dateFormat stringFromDate:date];
    return dateString;
}

// UIButton / ImageView Creation and Sizing

+ (UIButton*) customAutosizedButtonWithImagePath: (NSString*) imgPath {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* img = [UIImage imageNamed:imgPath];
    [button setImage:img forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return button;
}

+ (UIButton*) customAutosizedButtonWithImagePath: (NSString*) imgPath highlightedImagePath: (NSString*) highlightedImagePath {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* img = [UIImage imageNamed:imgPath];
    [button setImage:img forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImagePath] forState:UIControlStateHighlighted];
    button.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return button;
}

// FILES

+ (NSError*) createFolderIfNotExisting: (NSString*) path {
    NSFileManager* manager = [NSFileManager defaultManager];
    NSError* err = nil;
    if (![manager fileExistsAtPath:path]) {
        [manager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&err];
    }
    return err;
}

+ (BOOL) isFileExisting: (NSString*) path __unused {
    NSFileManager* manager = [NSFileManager defaultManager];
    return [manager fileExistsAtPath:path];
}

+ (NSString*) cachesDirectory {
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}


@end