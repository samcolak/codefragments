//
//  UIView+Localization.m
//  localization
//
//  Created by Samuel Colak on 22.08.19.
//  Copyright © 2019 samcolak. All rights reserved.
//

#import "UIView+Localization.h"
#import <objc/runtime.h>

static void *UIViewLocaleId;

@implementation UIView (Localization)

	- (void) setLocaleId:(NSString *)localeId
	{
		if ([localeId isEqualToString:self.localeId]) return;
		objc_setAssociatedObject(self, &UIViewLocaleId, localeId, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
	}

	- (NSString*) getLocaleId
	{
		NSString *result = objc_getAssociatedObject(self, &UIViewLocaleId);
		return result;
	}

	- (void) localize
	{
		
		if (self.localeId) {
			
			if ([self isKindOfClass:[UILabel class]]) {
				((UILabel*)self).text = self.localeId.localize;
			} else if ([self isKindOfClass:[UITextField class]]) {
				((UITextField*)self).placeholder = self.localeId.localize;
			}
			
		}
		
		for (UIView *_child in self.subviews) {
			[_child localize];
		}
	}

@end
