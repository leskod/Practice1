//
//  Card.h
//  Practice1
//
//  Created by Lesko, Dereck on 2/16/14.
//  Copyright (c) 2014 Lesko, Dereck. All rights reserved.
//

//#import <Foundation/Foundation.h>
@import Foundation;


@interface Card : NSObject


@property (nonatomic, strong) NSString *contents;
@property (nonatomic)	BOOL matched;
@property (nonatomic)	BOOL chosen;




-(int)match:(Card *)aCard;



@end
