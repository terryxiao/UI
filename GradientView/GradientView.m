//
//  GradientView.m
//  GradientView
//
//  Created by Terry Xiao on 1/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GradientView.h"
#import <QuartzCore/QuartzCore.h>

@implementation GradientView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame color:(UIColor *)color1 color:(UIColor *)color2 {
    self = [super initWithFrame:frame];

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[color1 CGColor], (id)[color2 CGColor], nil];
    [self.layer insertSublayer:gradient atIndex:0];
    return self;
}



@end
