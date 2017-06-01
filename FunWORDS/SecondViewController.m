//
//  SecondViewController.m
//  FunWORDS
//
//  Created by ardMac on 15/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button addTarget:self action:NSSelectorFromString(@"checkIsogram") forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//1. Create
-(void)checkIsogram {
    NSString *word = [self.textField.text lowercaseString]; //lowercase everything
    
    for (NSUInteger index =0; index < [word length] -1; index++) {
        char letter = [word characterAtIndex:1];
        
        for (NSUInteger followingIndex = index + 1; followingIndex < [word length]; followingIndex++) {
            char comparedLetter = [word characterAtIndex:followingIndex];
            
            if (letter == comparedLetter){
                self.label.text = @"Not an Isogram";
                return;
            }
        }
    } self.label.text = @"It's an Isogram";
    
   
}
@end
