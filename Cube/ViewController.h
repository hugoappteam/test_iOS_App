//
//  ViewController.h
//  Cube
//
//  Created by Gerrit on 29.10.14.
//  Copyright (c) 2014 HugoAppTeam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *button;
    
    __weak IBOutlet UIImageView *point1;
    __weak IBOutlet UIImageView *point2;
    __weak IBOutlet UIImageView *point3;
    
    __weak IBOutlet UIImageView *point4;
    
    __weak IBOutlet UIImageView *point5;
    
    __weak IBOutlet UIImageView *point6;

    __weak IBOutlet UIImageView *point7;
}


- (IBAction)pressed:(id)sender;

-(void) show:(int)random;


@end

