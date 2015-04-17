//
//  Bhaskara.m
//  Metodos Obj-C
//
//  Created by Gabriel Nopper on 08/04/15.
//  Copyright (c) 2015 Gabriel Nopper. All rights reserved.
//

#import "Bhaskara.h"
#import "Fraction.h"

@implementation Bhaskara

-(void)generateBhaskhara{
    
    Fraction *x1, *x2;
    
    x1 = [[Fraction alloc] init];
    x2 = [[Fraction alloc] init];
    
    [x1 setTo:(arc4random() % 50 - 25) over:arc4random() % 5 + 1];
    [x2 setTo:(arc4random() % 50 - 25) over:arc4random() % 5 + 1];

    [x1 reduce];
    [x2 reduce];
//    [x1 setTo:4 over:1];
//    [x2 setTo:8 over:3];
    [x1 print];
    [x2 print];
    int a, b, c;
    
//    a = [[Fraction alloc] init];
//    b = [[Fraction alloc] init];
//    c = [[Fraction alloc] init];

    Fraction *temp1, *temp2;
    
    temp1 = [[Fraction alloc] initWithFraction:x1];
    temp2 = [[Fraction alloc] initWithFraction:x1];
    
    
    [temp1 add:x2];
    
    [temp2 multiply:x2];
    
    [Fraction applyMMC:temp1 Fraction2:temp2];

    b = -[temp1 getNumerator];
    c = [temp2 getNumerator];
    
//    [Fraction applyMMC:temp1 Fraction2:temp2];
    a = [temp1 getDenominator];

    
    printf("%d x^2 + %d x + %d = 0, \n", a, b, c);
    
    Fraction* newA = [[Fraction alloc] initWithNumerator:a denominator:1];
    Fraction* newB = [[Fraction alloc] initWithNumerator:b denominator:1];
    Fraction* newC = [[Fraction alloc] initWithNumerator:c denominator:1];

    
    //[self resolveBhaskharaWithA:newA B:newB C:newC];
}


-(void)resolveBhaskharaWithA:(Fraction*) a B:(Fraction*) b C:(Fraction*) c{
    int delta = pow([b getNumerator], 2) - (4 * [a getNumerator] * [c getNumerator]);
    NSLog(@"delta = %d, sqrtD = %f", delta, sqrt(delta));
    Fraction* result1 = [[Fraction alloc] initWithNumerator:(-[b getNumerator] + sqrt(delta)) denominator:2*[a getDenominator]];
    //NSLog(@"%d + %d / %d", -[b getNumerator], sqrt(delta), 2*[a getDenominator]);
    Fraction* result2 = [[Fraction alloc] initWithNumerator:(-[b getNumerator] - sqrt(delta)) denominator:2*[a getDenominator]];
    [result1 reduce];
    [result2 reduce];
    
    [result1 print];
    [result2 print];
}

@end
