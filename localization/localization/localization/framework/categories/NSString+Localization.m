//
//  NSString+Localization.m
//  localization
//
//  Created by Samuel Colak on 22.08.19.
//  Copyright © 2019 samcolak. All rights reserved.
//

#import "NSString+Localization.h"

@implementation NSString (Localization)

	- (NSString *) localize
	{
		return NSLocalizedString(self, nil);
	}

@end
