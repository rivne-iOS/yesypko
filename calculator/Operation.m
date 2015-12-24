//
//  Operation.m
//  calculator
//
//  Created by user on 12/23/15.
//  Copyright © 2015 user. All rights reserved.
//

#import <Foundation/Foundation.h>

# import "Operation.h"

@implementation Operation

+(enum EAction)AC {
    self.operation = AC;
    
    return self.operation;
}
+(enum EAction)SIGN;
+(enum EAction)PERCENT;
+(enum EAction)DIVISION;
+(enum EAction)MULTIPLY;
+(enum EAction)MINUS;
+(enum EAction)PLUS;
+(enum EAction)EQUAL;
@end