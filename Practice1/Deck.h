//
//  Deck.h
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//


#import <Foundation/Foundation.h>

#import "Card.h"


@interface Deck : NSObject




//Declare two methods for Deck
//1.	a void function accepting two arguments; a Card object and a boolean  object  called atTop
//2.	a method which returns a Card object called drawRandomCard
//-(void)atTop:(Card *)aCard b:(BOOL)b;

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;






@end
