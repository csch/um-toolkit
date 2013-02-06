//
// Copyright by Caato, 11/5/12.
//
//


#import <Foundation/Foundation.h>


@interface UMUtils : NSObject

+ (NSString*)currentYearString;

+ (NSString*)currentWeekdayString;

+ (NSString*)currentTimeString;

+ (NSString*)stringForDate:(NSDate*)date;

+ (UIImageView*)cachedAutosizedImageViewWithPath:(NSString*)imgPath;

+ (UIImageView*)nonCachedAutosizedImageViewWithPath:(NSString*)imgPath;

+ (UIImageView*)nonCachedAutosizedImageViewWithAbsolutePath:(NSString*)imgPath;


+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath;

+ (UIButton*)nonCachedCustomAutosizedButtonWithAbsoluteImagePath:(NSString*)imgPath;


+ (UIButton*)nonCachedCustomAutosizedButtonWithImagePath:(NSString*)imgPath;


+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath highlightedImagePath:(NSString*)highlightedImagePath;

+ (UILabel*)autosizedBlackLabelWithText:(NSString*)text size:(int)size isBold:(BOOL)isBold;

+ (UILabel*) autosizedWhiteLabelWithText: (NSString*) text size:(int) size isBold:(BOOL) isBold;

+ (NSError*)removeFileIfExisting:(NSString*)path;

+ (NSError*)createFolderIfNotExisting:(NSString*)path;

+ (void)copyFileFrom:(NSString*)srcPath to:(NSString*)dstPath;

+ (NSArray*)contentFileNamesOfDirectory:(NSString*)directory;


+ (BOOL)isFileExisting:(NSString*)path;

+ (NSString*)cachesDirectory;

+ (NSString*)documentsDirectory;

+ (UIColor*)randomBrightColor;

+ (UIImage*)nonCachedImageWithAbsolutePath:(NSString*)path;


+ (UIAlertView*)showAlertWithTitle:(NSString*)atitle msg:(NSString*)msg;

+ (UIImage*)nonCachedImageWithPath:(NSString*)string;

@end