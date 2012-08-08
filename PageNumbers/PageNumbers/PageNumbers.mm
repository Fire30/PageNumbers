#line 1 "/Users/tj/Documents/iOSDevelopment/PageNumbers/PageNumbers/PageNumbers.xm"
#import "UIKit/UIKit.h"
#import "CoreGraphics/CoreGraphics.h"

#define prefpath @"/var/mobile/Library/Preferences/com.fire30.PageNumbersSettings.plist"


#include <substrate.h>
@class SBIconListPageControl; 
static UIImage * (*_logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$)(SBIconListPageControl*, SEL, int); static UIImage * _logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$(SBIconListPageControl*, SEL, int); static UIImage * (*_logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$)(SBIconListPageControl*, SEL, int); static UIImage * _logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$(SBIconListPageControl*, SEL, int); static UIImage * _logos_method$_ungrouped$SBIconListPageControl$imageFromText$(SBIconListPageControl*, SEL, NSString *); 

#line 7 "/Users/tj/Documents/iOSDevelopment/PageNumbers/PageNumbers/PageNumbers.xm"


int color;

int fontSize;

bool enabled;


static UIImage * _logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$(SBIconListPageControl* self, SEL _cmd, int page) {
    NSDictionary *prefs=[[NSDictionary alloc]initWithContentsOfFile:prefpath];
    
    enabled = [[prefs objectForKey:@"tweakEnabled"] boolValue];
    if(enabled)
    {

    NSString* lol = [NSString stringWithFormat:@" "];
    
    
    UIImage *image = [self imageFromText:lol];
    
    return image;
    }
    
    else return _logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$(self, _cmd, page);
}


static UIImage * _logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$(SBIconListPageControl* self, SEL _cmd, int page) {

    
    NSDictionary *prefs=[[NSDictionary alloc]initWithContentsOfFile:prefpath];
    
    enabled = [[prefs objectForKey:@"tweakEnabled"] boolValue];
    
    if(enabled)
        
    {
    
    NSString* lol = [NSString stringWithFormat:@"%i", page];
    
    
    UIImage *image = [self imageFromText:lol];
    
    return image;
    }
    
    else return _logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$(self, _cmd, page);
}



static UIImage * _logos_method$_ungrouped$SBIconListPageControl$imageFromText$(SBIconListPageControl* self, SEL _cmd, NSString * text) {
    
    NSDictionary *prefs=[[NSDictionary alloc]initWithContentsOfFile:prefpath];
    
    color = [[prefs objectForKey:@"LinkListCell7"] intValue];
    
    fontSize = [[prefs objectForKey:@"fontSize"] intValue];
    
    CGFloat fontSizeFloat = (CGFloat)fontSize;
    
    NSLog(@"Font Size = %i", fontSize);
    
    
    UIFont *font = [UIFont systemFontOfSize:fontSizeFloat];
    CGSize size  = [text sizeWithFont:font];
    

            UIGraphicsBeginImageContext(size);
            CGContextRef ctx = UIGraphicsGetCurrentContext();
            
            
    
    switch (color)
    
    {
        case 0:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor blackColor] CGColor]);
            
            break;
            
        case 1:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor darkGrayColor] CGColor]);
            
            break;
            
        case 2:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor lightGrayColor] CGColor]);
            
            break;
            
        case 3:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor whiteColor] CGColor]);
            
            break;
            
        case 4:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor grayColor] CGColor]);
            
            break;
            
        case 5:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor redColor] CGColor]);
            
            break;
            
        case 6:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor greenColor] CGColor]);
            
            break;
            
        case 7:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor blueColor] CGColor]);
            
            break;
            
        case 8:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor cyanColor] CGColor]);
            
            break;
            
        case 9:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor yellowColor] CGColor]);
            
            break;
            
        case 10:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor magentaColor] CGColor]);
            
            break;
            
        case 11:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor orangeColor] CGColor]);
            
            break;
            
        case 12:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor purpleColor] CGColor]);
            
            break;
            
        case 13:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor brownColor] CGColor]);
            
            break;
            
        case 14:
            
            CGContextSetFillColorWithColor(ctx, [[UIColor clearColor] CGColor]);
            
            break;
            
    }
            
            [text drawAtPoint:CGPointMake(0.0, 0.0) withFont:font];
    

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();    
    
    return image;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconListPageControl = objc_getClass("SBIconListPageControl"); MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(_pageIndicatorImageForPage:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorImageForPage$);MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(_pageIndicatorCurrentImageForPage:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$_pageIndicatorCurrentImageForPage$);{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(UIImage *), strlen(@encode(UIImage *))); i += strlen(@encode(UIImage *)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$SBIconListPageControl, @selector(imageFromText:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$imageFromText$, _typeEncoding); }}  }
#line 186 "/Users/tj/Documents/iOSDevelopment/PageNumbers/PageNumbers/PageNumbers.xm"
