//
//  PlayingCardDeck.m
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    if (self) {
        for (NSString *s in [PlayingCard validSuits])
        {
            for (NSUInteger r =1; r<[PlayingCard maxRank] ; r++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                
                card.rank = r;
                card.suit = s;
                
                [self addCard:card];
            }
        }
    }
    return self;
}






@end
