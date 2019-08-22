//
//  UIView+Localization.h
//  localization
//
//  Created by Samuel Colak on 22.08.19.
//  Copyright © 2019 samcolak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSString+Localization.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Localization)

	@property (nonatomic, retain, getter=getLocaleId, setter=setLocaleId:) IBInspectable NSString *localeId;

	- (void) localize;

@end

NS_ASSUME_NONNULL_END
