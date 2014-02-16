//
//  PlayingCard.h
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong)NSString *suit;
@property(nonatomic)NSUInteger rank;

+(NSArray *)validSuits;
+(NSString *)rankStrings:(NSUInteger)rank;
+(NSUInteger)maxRank;

@end
