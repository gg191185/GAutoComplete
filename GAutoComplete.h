//
//  GAutoComplete.h
//  GAutoComplete
//
//  Created by Girish G on 26/12/13.
//  Copyright (c) 2013 Girish G. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GAutoComplete : NSObject
{
    NSMutableArray *autoCompleteList;
}
-(GAutoComplete *)initWithArray:(NSArray *)initialArray;
-(NSMutableArray *)getList:(NSString *)stringFromTextField;
@end
