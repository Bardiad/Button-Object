//
//  C4WorkSpace.m
//  Gryphon
//
//  Created by Bardia Doust on 13-04-24.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "C4WorkSpace.h"
#import "ColorButton.h"

@implementation C4WorkSpace

-(void)setup {
    
    UIColor *TColor = [UIColor yellowColor];
    ColorButton *buttonOne = [[ColorButton alloc]initWithColor:TColor];
    [self.canvas addShape:buttonOne.shape];
    
    
    
    
    
}
					
@end
