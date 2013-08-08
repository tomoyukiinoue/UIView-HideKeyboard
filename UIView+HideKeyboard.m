//
//  UIView+HideKeyboard.m
//  NearSNS
//
//  Created by 井上 智敬 on 2013/08/08.
//  Copyright (c) 2013年 Global Software CO.,LTD. All rights reserved.
//

#import "UIView+HideKeyboard.h"

@implementation UIView (HideKeyboard)

- (void)hideKeyboard
{
    for (UIView *v in self.subviews){
        if ([v isFirstResponder] ) {
            [v resignFirstResponder];
            return;
        }
        [v hideKeyboard];
    }
}

@end
