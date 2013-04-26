//
//  C4WorkSpace.m
//  Gryphon
//
//  Created by Bardia Doust on 13-04-24.
//  Copyright (c) 2013 Bardia Doust. All rights reserved.
//

#import "C4WorkSpace.h"
#import "ColorButton.h"

@interface C4WorkSpace()
    -(void)updateColorButtonBG;
@end    

@implementation C4WorkSpace{
    NSMutableArray *buttonArray;
    NSMutableArray *colorArray;
}

-(void)setup {
    
    //Create an array with a capacity of 20 to hold buttons
    buttonArray = [[NSMutableArray alloc]initWithCapacity:15];
    
    //Create another array that holds color values
    colorArray = [[NSMutableArray alloc]initWithCapacity:15];
    
    CGFloat colorVal = 0.1;
    
    for(int i = 0 ; i < 15 ; i++){
        
        
        
        /* Set Initial Color Values in Array
        ///////////////////////////////////*/
        
        //Create temp color object
        UIColor *tempColor = [UIColor colorWithRed:0.7 green:0.3 blue:colorVal alpha:1.0];
        
        //add to array
        [colorArray addObject:tempColor];
        
        //increment colorVal variable
        colorVal += 0.05;
        
        
        /* Populate Array with Button Objects
        ///////////////////////////////////*/
        
        //Create temp object to hold button
        ColorButton *button = [[ColorButton alloc]initWithColor:[colorArray objectAtIndex:i] atX:20+(i*40) atY:20];
        
        //add Button to array
        [buttonArray addObject:button];
        
        //add every button in the array to the canvas
        for (button in buttonArray){
            [self.canvas addShape:button.shape];
        }
    }
    
    [[buttonArray objectAtIndex:1] changeColorTo:[colorArray objectAtIndex:13]];

}

-(void)updateColorButtonBG{
}

@end