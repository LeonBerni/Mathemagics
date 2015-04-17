//
//  EquationController.m
//  Mathemagics
//
//  Created by Leon Berni on 4/17/15.
//  Copyright (c) 2015 Leon Berni & Gabriel Nopper. All rights reserved.
//

#import "EquationController.h"

@interface EquationController ()

@end

@implementation EquationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog([NSString stringWithFormat:@" %@ ", self.receivedEquation.inputType]);
    NSLog([NSString stringWithFormat:@" %@ ", self.receivedEquation.awnserType]);
    NSLog([NSString stringWithFormat:@" %f ", self.receivedEquation.complexity.floatValue*10]);
    NSLog([NSString stringWithFormat:@" %@ ", [self.receivedEquation.formulas objectAtIndex:0]]);
    NSLog([NSString stringWithFormat:@" %@ ", [self.receivedEquation.phases objectAtIndex:0]]);
    NSLog([NSString stringWithFormat:@" %@ ", [self.receivedEquation.phases objectAtIndex:1]]);
    NSLog([NSString stringWithFormat:@" %@ ", [self.receivedEquation.phases objectAtIndex:2]]);
    
    
}
- (IBAction)goBackToEq:(id)sender {
    switch ([self.receivedEquation.equationName intValue]) {
        case 1:
            [self performSegueWithIdentifier:@"returnToBhaskhara" sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"returnToFirstD" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"returnToLog" sender:self];
            break;
        case 4:
            [self performSegueWithIdentifier:@"returnToFac" sender:self];
            break;
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setEquation:(EquationInfos *)equation{
    self.receivedEquation = equation;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
