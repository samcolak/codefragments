//
//  BaseViewController.m
//  localization
//
//  Created by Samuel Colak on 22.08.19.
//  Copyright © 2019 samcolak. All rights reserved.
//

#import "BaseViewController.h"
#import "UIView+Localization.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

	- (void) setup
	{
		
	}

	- (void) localize
	{
		[self.view localize];
	}

	- (void) viewWillAppear:(BOOL)animated
	{
		[super viewWillAppear:animated];
		[self localize];
	}

	- (instancetype) init
	{
		self = [super init];
		if (self) {
			[self setup];
		}
		return self;
	}

	- (instancetype) initWithView:(UIView*)view;
	{
		self = [super init];
		if (self) {
			[self setup];
			self.view = view;
		}
		return self;
	}

	- (instancetype) initWithCoder:(NSCoder *)aDecoder
	{
		self = [super initWithCoder:aDecoder];
		if (self) {
			[self setup];
		}
		return self;
	}

	- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
	{
		self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
		if (self) {
			[self setup];
		}
		return self;
	}

@end
