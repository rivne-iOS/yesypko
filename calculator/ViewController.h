//
//  ViewController.h
//  calculator
//
//  Created by user on 12/22/15.
//  Copyright © 2015 user. All rights reserved.
//

# import <UIKit/UIKit.h>
# import "Enums.h"


@interface ViewController : UIViewController

@property(nonatomic, retain) IBOutlet UITextField* textField;
@property double firstDiggit;
@property double secondDiggit;
@property(nonatomic, assign) enum EAction operation;


-(void)acPressed;
-(void)signPressed;
-(void)percentPressed;
-(void)divisionPressed;
-(void)multiplyPressed;
-(void)minusPressed;
-(void)plusPressed;
-(void)equalPressed;
-(void)assignOperation:(enum EAction)operation;

-(double)getDiggitFromTextField;

@end

