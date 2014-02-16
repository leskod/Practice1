//
//  Deck.m
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "Deck.h"

@interface Deck ()

//Declare an NSMutable array called cards as an instance variable.
@property (strong, nonatomic) NSMutableArray *cards;


@end


@implementation Deck


//Create a function called cards which returns the array of cards and initializes it if it doesn’t
//exist yet.
-(NSMutableArray *)cards
{
    if(!self.cards)
    {
        self.cards=[[NSMutableArray alloc]init];
    }
    return self.cards;
}


//The first inserts the Card object at the index=0 location in the array called cards,
-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
    
}

//the second just adds the object to the array.
-(void)addCard:(Card *)card
{
    [self.cards addObject:card];
    //code solution does this...didn't think of this.
    //[self addCard:card atTop:NO];
}


-(Card *)drawRandomCard
{
    Card *rnd;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        rnd = [self.cards objectAtIndex:index];
        [self.cards removeObject:rnd];
    }
    
    return rnd;
}



@end
