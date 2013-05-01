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
    -(void)testMethod;
@end



@implementation C4WorkSpace{
    NSMutableArray *buttonArray;
    NSMutableArray *colorArray;
}



-(void)setup {
    

    //Var to hold capacity
    int capacity = 9;
    
    //Create array to hold buttons
    buttonArray = [[NSMutableArray alloc]initWithCapacity:capacity];
    
    
    
    
    
    //For loop for Row 1
    
    for(int i = 0 ; i < capacity ; i++){
        
        /* Populate buttonArray with button objects
        ///////////////////////////////////////////
        /////////////////////////////////////////*/
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width;
        ColorButton *button = [[ColorButton alloc]initWithColor:[UIColor orangeColor] atX:10+(0.1469f*width)*i atY:10];
        

        
        
        //add Button to array
        [buttonArray addObject:button];
        
        
        //add every button in the array to the canvas
    }
    
    
    //For loop for Row 2
    for(int i = 0 ; i < capacity ; i++){
        
        /* Populate buttonArray with button objects
         ///////////////////////////////////////////
         /////////////////////////////////////////*/
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width;
        ColorButton *button = [[ColorButton alloc]initWithColor:[UIColor brownColor] atX:10+(0.1469f*width)*i atY:120];
        
        
        
        
        //add Button to array
        [buttonArray addObject:button];
        
        
        //add every button in the array to the canvas
    }
    
    
    //For loop for Row 3
    for(int i = 0 ; i < capacity ; i++){
        
        /* Populate buttonArray with button objects
         ///////////////////////////////////////////
         /////////////////////////////////////////*/
        
        //Create object to hold button, color value assigned from array & position set
        
        int width = self.canvas.width;
        ColorButton *button = [[ColorButton alloc]initWithColor:[UIColor purpleColor] atX:10+(0.1469f*width)*i atY:120+110];
        
        
        
        
        //add Button to array
        [buttonArray addObject:button];
        
        //add every button in the array to the canvas & add a gesture control for them
        for (button in buttonArray){
            [button.shape addGesture:TAP name:@"tap" action:@"tapped"];
            [self.canvas addShape:button.shape];
            [self listenFor:@"tapped" fromObjects:buttonArray andRunMethod:@"testMethod"];
        }

        
        
        
    }
    
    
    //TESTING STUFF

}




-(void)testMethod{
    NSLog(@"notification test");
}



-(void)updateColorButtonBG{
    for (int i = 0 ; i < [buttonArray count] ; i++){
            ColorButton *button = [buttonArray objectAtIndex:i];
            [self.canvas addShape:button.shape];
    }
    
}





//The following 3 methods are used just to test the updateColorButtonBG method using touch as the trigger

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

        UIColor *yetAnotherColor = [UIColor redColor];
        [[buttonArray objectAtIndex:3] changeColorTo:yetAnotherColor];
        [self updateColorButtonBG];
    
        
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UIColor *color5 = [UIColor colorWithRed:0.3 green:0.2 blue:0.5 alpha:0.3];
    [[buttonArray objectAtIndex:15] changeColorTo:color5];
    [self updateColorButtonBG];
}


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UIColor *Color4 = [UIColor blueColor];
    [[buttonArray objectAtIndex:20] changeColorTo:Color4];
    [self updateColorButtonBG];
}


@end