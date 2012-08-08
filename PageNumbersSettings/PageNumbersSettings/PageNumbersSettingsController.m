//
//  PageNumbersSettingsController.m
//  PageNumbersSettings
//
//  Created by tj on 8/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PageNumbersSettingsController.h"
#import <Preferences/PSSpecifier.h>


#define kUrl_MakeDonation @"https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=tjcorley30%40hotmail%2ecom&lc=US&item_name=Fire30&item_number=Tweaks&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted"



@implementation PageNumbersSettingsController



- (void)makeDonation:(PSSpecifier *)specifier
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:kUrl_MakeDonation]];
}

- (id)specifiers
{
	if (_specifiers == nil)
		_specifiers = [[self loadSpecifiersFromPlistName:@"PageNumbersSettings" target:self] retain];
	
	return _specifiers;
}

- (id)init
{
	if ((self = [super init]))
	{
	}
	
	return self;
}

- (void)dealloc
{
	[super dealloc];
}

@end