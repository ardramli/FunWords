//
//  ThirdViewController.m
//  FunWORDS
//
//  Created by ardMac on 15/03/2017.
//  Copyright © 2017 ardMac. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.button addTarget:self action:NSSelectorFromString(@"checkAnagram") forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)checkAnagram
//    {
//        NSString *string1 = [self.textField.text lowercaseString];
//        NSString *string2 = [self.textField2.text lowercaseString];
//        NSString *inputText = [string1 stringByReplacingOccurrencesOfString:@" " withString:@""];
//        self.textField.text = string1;
//        self.textField2.text = string2;
//        NSInteger length = [inputText length];
//        
//        if (length != string2.length)
//        {
//            return;
//        }
//        
//        for (int i=0; i <length; i++)
//        {
//            int h = 0;
//            int q = 0;
//            for (int k = 0;  k < length ; k++)
//            {
//                if ([string1 characterAtIndex:i] == [string1 characterAtIndex:k])
//                {
//                    h++;
//                }
//                if ([string1 characterAtIndex:i] == [string2 characterAtIndex:k])
//                {
//                    q++;
//                }
//            }
//            NSLog(@"h = %i",h);
//            NSLog(@"q = %i",q);
//            
//            if (h!=q)
//            {
//                self.label.text=@"No anagram";
//            }else {
//                self.label.text=@"Yes Anagram";
//            }
//        }
//        self.label.text=@"No anagram";
//    }

//sergio's solution

-(void)checkAnagram {
    
    NSString *word1 = [[self.textField.text lowercaseString]
                       stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *word2 = [[self.textField2.text lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""];
 
    if ([word1 length] != [word2 length]) {
        self.label.text =@"Not an Anagram";
        return;
    }
 
    for(NSUInteger index = 0; index <[word1 length]; index++){
        char letter = [word1 characterAtIndex:index];
        NSRange letterRange = [word2 rangeOfString:[NSString stringWithFormat:@"%c", letter]];
        if(letterRange.location == NSNotFound){
            self.label.text = @"Not an Anagram!";
            return;
        }else {
            word2 = [word2 stringByReplacingCharactersInRange:letterRange withString:@""];
        }
 }
 self.label.text =@"An Anagram!";
 
 }


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
