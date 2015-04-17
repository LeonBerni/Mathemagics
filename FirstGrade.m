//
//  FirstGrade.m
//  Metodos Obj-C
//
//  Created by Gabriel Nopper on 16/04/15.
//  Copyright (c) 2015 Gabriel Nopper. All rights reserved.
//

#import "FirstGrade.h"

@implementation FirstGrade

-(void)generateEquation{
    Fraction *x1, *a, *b;
    x1 = [[Fraction alloc] init];
    a = [[Fraction alloc] init];
    b = [[Fraction alloc] init];

    [x1 setTo:(arc4random() % 50 - 25) over:arc4random() % 5 + 1];
    [a setTo:(arc4random() % 5 + 1) over:1];
    [b setTo:(arc4random() % 50 - 25) over:arc4random() % 5 + 1];
    
    [x1 reduce];
    [x1 print];
    Fraction *temp, *res;
    
    temp = [[Fraction alloc] initWithFraction:x1];
    [temp multiply:a];
    res = [[Fraction alloc] initWithFraction:temp];
    
    [res add:b];
    
    NSLog(@"%d/%dx + %d/%d= %d/%d", [a.numerator intValue], [a.denominator intValue], [b.numerator intValue], [b.denominator intValue], [res.numerator intValue], [res.denominator intValue]);

    
    
    
}
@end
