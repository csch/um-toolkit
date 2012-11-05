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

+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath;

+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath highlightedImagePath:(NSString*)highlightedImagePath;

+ (NSError*)createFolderIfNotExisting:(NSString*)path;

+ (NSString*)cachesDirectory;

@end