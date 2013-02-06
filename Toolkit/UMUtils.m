//
// Copyright by Caato, 11/5/12.
//
//


#import "UMUtils.h"
// #import "AppDelegate.h"


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

+ (UIImageView*) cachedAutosizedImageViewWithPath: (NSString*) imgPath {
    UIImage* img = [UIImage imageNamed:imgPath];
    UIImageView* imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return imgView;
}

+ (UIImageView*) nonCachedAutosizedImageViewWithPath: (NSString*) imgPath {
    UIImage* img = [UMUtils nonCachedImageWithPath:imgPath];
    UIImageView* imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return imgView;
}

+ (UIImageView*) nonCachedAutosizedImageViewWithAbsolutePath: (NSString*) imgPath {
    UIImage* img = [UMUtils nonCachedImageWithAbsolutePath:imgPath];
    UIImageView* imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return imgView;
}

+ (UIButton*) customAutosizedButtonWithImagePath: (NSString*) imgPath {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* img = [UIImage imageNamed:imgPath];
    [button setImage:img forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return button;
}

+ (UIButton*) nonCachedCustomAutosizedButtonWithAbsoluteImagePath: (NSString*) imgPath {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* img = [UIImage imageWithContentsOfFile:imgPath];
    // if (img == nil) NSLog(@"Error: Couldn't find image [%@] for custom UIButton.", imgPath);
    [button setImage:img forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return button;
}


+ (UIButton*) nonCachedCustomAutosizedButtonWithImagePath: (NSString*) imgPath {
    NSString* path = [[NSBundle mainBundle] pathForResource:imgPath ofType:nil];
    return [UMUtils nonCachedCustomAutosizedButtonWithAbsoluteImagePath:path];
}

+ (UIButton*) customAutosizedButtonWithImagePath: (NSString*) imgPath highlightedImagePath: (NSString*) highlightedImagePath {
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* img = [UIImage imageNamed:imgPath];
    [button setImage:img forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highlightedImagePath] forState:UIControlStateHighlighted];
    button.frame = CGRectMake(0, 0, img.size.width, img.size.height);
    return button;
}

+ (UILabel*) autosizedBlackLabelWithText: (NSString*) text size:(int) size isBold:(BOOL) isBold {
    UILabel* label = [UMUtils autosizedWhiteLabelWithText:text size:size isBold:isBold];
    label.textColor = [UIColor blackColor];
    return label;
}

+ (UILabel*) autosizedWhiteLabelWithText: (NSString*) text size:(int) size isBold:(BOOL) isBold {
    UILabel* label = [UILabel new];
    label.text = text;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor whiteColor];

    if (isBold) {
        label.font = [UIFont boldSystemFontOfSize:size];
    }
    else {
        label.font = [UIFont systemFontOfSize:size];
    }

    CGSize labelSize = [text sizeWithFont:label.font];
    label.frame = CGRectMake(0, 0, labelSize.width, labelSize.height);
    return label;
}

// FILES

+ (NSError*)removeFileIfExisting: (NSString*) path {
    NSFileManager* manager = [NSFileManager defaultManager];
    NSError* err = nil;
    if ([manager fileExistsAtPath:path]) {
        [manager removeItemAtPath:path error:&err];
    }
    return err;
}

+ (NSError*) createFolderIfNotExisting: (NSString*) path {
    NSFileManager* manager = [NSFileManager defaultManager];
    NSError* err = nil;
    if (![manager fileExistsAtPath:path]) {
        [manager createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&err];
    }
    return err;
}

+ (void) copyFileFrom: (NSString*) srcPath to:(NSString*) dstPath {
    NSFileManager* manager = [NSFileManager defaultManager];
    NSError* err = nil;
    [manager copyItemAtPath:srcPath toPath:dstPath error:&err];
    if (err != nil) {
        NSLog(@"ERROR: %@", err);
    }
}

+ (NSArray*) contentFileNamesOfDirectory: (NSString*) directory {
    NSFileManager* manager = [NSFileManager defaultManager];
    NSError* err = nil;
    NSArray* items = [manager contentsOfDirectoryAtPath:directory error:&err];
    if (err != nil) {
        NSLog(@"ERROR: %@", err);
    }
    return items;
}

+ (BOOL) isFileExisting: (NSString*) path {
    NSFileManager* manager = [NSFileManager defaultManager];
    return [manager fileExistsAtPath:path];
}

+ (NSString*) cachesDirectory {
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}


+ (NSString*) documentsDirectory {
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

+ (UIColor*)randomBrightColor {
    float colors[3];
    for (int i = 0; i < 3; i++) {
        colors[i] = 0.8 + (rand() + i) % 10 * 0.1;
        if (colors[i] > 1.0) colors[i] = 1.0;
    }
    return [UIColor colorWithRed:colors[0] green:colors[1] blue:colors[2] alpha:1.0];
}

+ (UIImage*)nonCachedImageWithAbsolutePath:(NSString*) path {
    return [UIImage imageWithContentsOfFile:path];
}

+ (UIAlertView*) showAlertWithTitle: (NSString*) atitle msg:(NSString*) msg {
    UIAlertView *alert = [[UIAlertView alloc] init];
    [alert setTitle:atitle];
    [alert setMessage:msg];
    [alert addButtonWithTitle:@"OK"];
    [alert show];
    return alert;
}

+ (UIImage*)nonCachedImageWithPath:(NSString*) path {
    path = [[NSBundle mainBundle] pathForResource:path ofType:nil];
    return [UMUtils nonCachedImageWithAbsolutePath:path];
}


@end