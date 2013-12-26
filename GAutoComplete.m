//
//  GAutoComplete.m
//  GAutoComplete
//
//  Created by Girish G on 26/12/13.
//  Copyright (c) 2013 Girish G. All rights reserved.
//

#import "GAutoComplete.h"

@implementation GAutoComplete

- (GAutoComplete *)initWithArray:(NSArray *)initialArray
{
	self = [super init];
	if (self)
	{
		autoCompleteList = [[NSMutableArray alloc] initWithArray:initialArray];
		
	}
	
	return self;
}

-(NSMutableArray *)getList:(NSString *)stringFromTextField{
    if ([stringFromTextField length] == 0)
	{
		return autoCompleteList;
	}
	
	NSPredicate *startPredicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@", stringFromTextField];
	return [NSMutableArray arrayWithArray:[autoCompleteList filteredArrayUsingPredicate:startPredicate]];
}
@end
