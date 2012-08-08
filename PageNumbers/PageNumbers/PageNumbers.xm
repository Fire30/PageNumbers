#import "UIKit/UIKit.h"
#import "CoreGraphics/CoreGraphics.h"

#define prefpath @"/var/mobile/Library/Preferences/com.fire30.PageNumbersSettings.plist"


%hook SBIconListPageControl

int color;

int fontSize;

bool enabled;

- (UIImage *)_pageIndicatorImageForPage:(int)page
{
    NSDictionary *prefs=[[NSDictionary alloc]initWithContentsOfFile:prefpath];
    
    enabled = [[prefs objectForKey:@"tweakEnabled"] boolValue];
    if(enabled)
    {

    NSString* lol = [NSString stringWithFormat:@" "];
    
    
    UIImage *image = [self imageFromText:lol];
    
    return image;
    }
    
    else return %orig;
}

- (UIImage *)_pageIndicatorCurrentImageForPage:(int)page
{

    
    NSDictionary *prefs=[[NSDictionary alloc]initWithContentsOfFile:prefpath];
    
    enabled = [[prefs objectForKey:@"tweakEnabled"] boolValue];
    
    if(enabled)
        
    {
    
    NSString* lol = [NSString stringWithFormat:@"%i", page];
    
    
    UIImage *image = [self imageFromText:lol];
    
    return image;
    }
    
    else return %orig;
}

%new
-(UIImage *)imageFromText:(NSString *)text
{
    // set the font type and size
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

%end