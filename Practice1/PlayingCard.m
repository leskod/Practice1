//
//  PlayingCard.m
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "PlayingCard.h"



@implementation PlayingCard
@synthesize suit = _suit;
@synthesize rank = _rank;


-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}
-(NSString *)getSuit
{
    if (!_suit)
    {
        return @"?";
    }
    return _suit;
}

-(void)setRank:(NSUInteger)rank
{
    if(rank<=[PlayingCard maxRank])
    {
        _rank = rank;
    }
}
-(NSUInteger)getRank
{
    return _rank;
}


+(NSArray *)validSuits
{
    NSArray *arrVS = @[@"♥", @"♣", @"♦", @"♠"];
    return arrVS;
}

+(NSString *)rankStrings:(NSUInteger)rank
{
    switch (rank)
    {
        case 1:
            return @"A";
        case 2:
            return @"2";
        case 3:
            return @"3";
        case 4:
            return @"4";
        case 5:
            return @"5";
        case 6:
            return @"6";
        case 7:
            return @"7";
        case 8:
            return @"8";
        case 9:
            return @"9";
        case 10:
            return @"10";
        case 11:
            return @"J";
        case 12:
            return @"Q";
        case 13:
            return @"K";
        case 0:
            return @"?";
    }
    return @"?";
}

+(NSUInteger)maxRank
{
    return 13;
}

-(NSString *)contents
{
    return [NSString stringWithFormat:@"%@ %@", [PlayingCard rankStrings:_rank], _suit];
    //or shoudl these be self.rank and self.suit?
}


@end
