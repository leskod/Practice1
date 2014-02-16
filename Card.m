//
//  Card.m
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "Card.h"

@implementation Card





-(int)match:(Card *)aCard
{
    if([aCard.contents isEqualToString:self.contents])
    {
        return 1;
    }
    return 0;
}




@end
