//
//  ViewController.m
//  calculator
//
//  Created by user on 12/22/15.
//  Copyright © 2015 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)diggitPressed:(UIButton*)sender {
    NSString *tempStr = self.textField.text;
    
    if ([tempStr  isEqual: @"0"] || [tempStr isEqual:@"ERROR"])
        self.textField.text = @"";
    
    self.textField.text = [self.textField.text stringByAppendingString:sender.currentTitle];
}
- (IBAction)operationPressed:(id)sender {
    
    NSInteger senderID = [sender tag];
    
    switch (senderID) {
        case AC:
            [self acPressed];
            break;
        case SIGN:
            [self signPressed];
            break;
        case PERCENT:
            [self percentPressed];
            break;
        case DIVISION:
            [self divisionPressed];
            break;
        case MULTIPLY:
            [self multiplyPressed];
            break;
        case MINUS:
            [self minusPressed];
            break;
        case PLUS:
            [self plusPressed];
            break;
        case EQUAL:
            [self equalPressed];
            break;
    }
}

-(void)assignOperation:(enum EAction)operation {
    _firstDiggit = [self getDiggitFromTextField];
    _operation = operation;
    
    self.textField.text = [NSString stringWithFormat:@""];
    
}

-(double)getDiggitFromTextField {
    double diggit = [self.textField.text doubleValue];
    
    return diggit;
}

-(void)acPressed {
    self.textField.text = @"0";
}

-(void)signPressed {
    double diggit = [self getDiggitFromTextField];
    
    diggit *= -1;
    
    self.textField.text = [NSString stringWithFormat:@"%f", diggit];
}

-(void)percentPressed {
    double diggit = [self getDiggitFromTextField];
    
    diggit /= 100.0f;
    
    if (diggit < 0) {
        self.textField.text = [NSString stringWithFormat:@"ERROR"];
        return;
    }
    
    self.textField.text = [NSString stringWithFormat:@"%f", diggit];
    
}

-(void)divisionPressed {
    [self assignOperation:DIVISION];
}

-(void)multiplyPressed {
    [self assignOperation:MULTIPLY];
}

-(void)minusPressed {
    [self assignOperation:MINUS];
}

-(void)plusPressed {
    [self assignOperation:PLUS];
}

-(void)equalPressed {
    _secondDiggit = [self getDiggitFromTextField];
    
    double result = 0.0;
    
    switch (_operation) {
        case DIVISION:
            result = _firstDiggit / _secondDiggit;
            break;
        case MULTIPLY:
            result = _firstDiggit * _secondDiggit;
            break;
        case MINUS:
            result = _firstDiggit - _secondDiggit;
            break;
        case PLUS:
            result = _firstDiggit + _secondDiggit;
    }
    
    self.textField.text = [NSString stringWithFormat:@"%f", result];
    
}

@end
