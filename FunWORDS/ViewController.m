//
//  ViewController.m
//  FunWORDS
//
//  Created by ardMac on 15/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //2. link button tap with function/action
    [self.button addTarget:self action:NSSelectorFromString(@"checkPalindrome") forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//1. create function
-(void)checkPalindrome {
    NSString *text = [self.textField.text lowercaseString]; //lowercase everything
    NSString *inputText = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSInteger length = [inputText length];
    NSInteger halflength = length / 2;
    
    BOOL isPalindrome = YES;
    
    for (int i=0; i < halflength; i++) {
        if ([inputText characterAtIndex:i] != [inputText characterAtIndex:(length - i - 1)]) {
            isPalindrome = NO;
        }
    }
    
    if (isPalindrome) {
        self.label.text = @"Yes it's a palindrome";
    } else {
        self.label.text = @"No it's not a palindrome";
    }
}
@end
