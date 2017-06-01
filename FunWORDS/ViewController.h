//
//  ViewController.h
//  FunWORDS
//
//  Created by ardMac on 15/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/*
//value type use assign
//int, float, double, BOOL
//NSInteger, NSUInteger
@property (nonatomic, assign) NSInteger number;

//object type use strong
//NSObject, NSString, NSArray...
//"C" for object. "T" for value
// "*" represents a pointer. only object/class has pointers
@property (nonatomic, strong) NSString *words;

//*/


@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

