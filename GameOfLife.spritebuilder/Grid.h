//
//  Grid.h
//  GameOfLife
//
//  Created by Vasco d'Orey on 24/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Grid : CCSprite

@property (nonatomic) int totalAlive;
@property (nonatomic) int generation;

@end
