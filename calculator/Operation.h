//
//  Operation.h
//  calculator
//
//  Created by user on 12/23/15.
//  Copyright © 2015 user. All rights reserved.
//

#ifndef Operation_h
#define Operation_h

# import "Enums.h"

@interface Operation : NSObject

@property enum EAction operation;

+(enum EAction)AC;
+(enum EAction)SIGN;
+(enum EAction)PERCENT;
+(enum EAction)DIVISION;
+(enum EAction)MULTIPLY;
+(enum EAction)MINUS;
+(enum EAction)PLUS;
+(enum EAction)EQUAL;

@end


#endif /* Operation_h */
