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
    switch ([self.answerType.equationName intValue]) {
        {case 1:
            [self initBhaskara];
            break;
        }
        {case 2:
            [self initFirstD];
            break;
        }
        {case 3:
            [self initLog];
            break;
        }
        {case 4:
            [self initFac];
            break;
        }
        {default:
            break;
        }
    }
}
- (IBAction)goBackToEq:(id)sender {
    switch ([self.answerType.equationName intValue]) {
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
- (IBAction)showAnswer:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setEquation:(EquationInfos *)equation{
    self.answerType = equation;
}

- (void) initBhaskara{
    NSDictionary *underline = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    int teste = self.view.frame.size.width/6;
    UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 40, 100, 21)];
    num1.textAlignment = NSTextAlignmentCenter;
    [num1 setText:@"55555x^2"];
    [self.view addSubview:num1];
    UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 25, 40, 100, 21)];
    num2.textAlignment = NSTextAlignmentCenter;
    [num2 setText:@"+ 55555x"];
    [self.view addSubview:num2];
    UILabel* num3 = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-50 + 35, 40, 100, 21)];
    num3.textAlignment = NSTextAlignmentCenter;
    [num3 setText:@"+ 55555"];
    [self.view addSubview:num3];
    UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-55 + 20, 40, 100, 21)];
    eqEquals.textAlignment = NSTextAlignmentCenter;
    [eqEquals setText:@" = "];
    [self.view addSubview:eqEquals];
    UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*5-50, 40, 100, 21)];
    num4.textAlignment = NSTextAlignmentCenter;
    [num4 setText:@"00000"];
    [self.view addSubview:num4];
    
    if (self.answerType.answerType == 4) {
        num1.attributedText = [[NSAttributedString alloc] initWithString:num1.text attributes:underline];
        num2.attributedText = [[NSAttributedString alloc] initWithString:num2.text attributes:underline];
        num3.attributedText = [[NSAttributedString alloc] initWithString:num3.text attributes:underline];
        num4.attributedText = [[NSAttributedString alloc] initWithString:num4.text attributes:underline];
        UILabel* denum1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 60, 100, 21)];
        [denum1 setText:@"1000"];
        denum1.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum1];
        UILabel* denum2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 25, 60, 100, 21)];
        [denum2 setText:@"1000"];
        denum2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum2];
        UILabel* denum3 = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-50 + 35, 60, 100, 21)];
        [denum3 setText:@"1000"];
        denum3.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum3];
        UILabel* denum4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*5-50, 60, 100, 21)];
        [denum4 setText:@"1000"];
        denum4.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum4];
    }
    NSLog(@"Bhaskara");
    
    
    
    UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
    [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
    [formulas1 sizeToFit];
    UILabel* formulas2 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 490, 100, 100)];
    [formulas2 setText:[self.answerType.formulas objectAtIndex:1]];
    [formulas2 sizeToFit];
    
    [self.view addSubview:formulas1];
    [self.view addSubview:formulas2];

}
- (void) initFirstD{
    NSDictionary *underline = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSLog(@"FirstD");
    int teste = self.view.frame.size.width/6;
    UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 40, 100, 21)];
    num1.textAlignment = NSTextAlignmentCenter;
    [num1 setText:@"55555x"];
    [self.view addSubview:num1];
    UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 25, 40, 100, 21)];
    num2.textAlignment = NSTextAlignmentCenter;
    [num2 setText:@"+ 55555"];
    [self.view addSubview:num2];
    UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-50 + 20, 40, 100, 21)];
    eqEquals.textAlignment = NSTextAlignmentCenter;
    [eqEquals setText:@" = "];
    [self.view addSubview:eqEquals];
    UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50, 40, 100, 21)];
    num4.textAlignment = NSTextAlignmentCenter;
    [num4 setText:@"00000"];
    [self.view addSubview:num4];
    if (self.answerType.answerType == 4) {
        num1.attributedText = [[NSAttributedString alloc] initWithString:num1.text attributes:underline];
        num2.attributedText = [[NSAttributedString alloc] initWithString:num2.text attributes:underline];
        num4.attributedText = [[NSAttributedString alloc] initWithString:num4.text attributes:underline];
        UILabel* denum1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 60, 100, 21)];
        [denum1 setText:@"1000"];
        denum1.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum1];
        UILabel* denum2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 20, 60, 100, 21)];
        [denum2 setText:@"1000"];
        denum2.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum2];
        UILabel* denum4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50, 60, 100, 21)];
        [denum4 setText:@"1000"];
        denum4.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:denum4];
    }
    
    UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
    [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
    [formulas1 sizeToFit];
    
    [self.view addSubview:formulas1];
}
- (void) initLog{
    NSDictionary *underline = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    NSLog(@"Log");
    int teste = self.view.frame.size.width/6;
    UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(60, 49, 100, 21)];
    num1.textAlignment = NSTextAlignmentCenter;
    [num1 setText:@"log"];
    [self.view addSubview:num1];
    UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(80, 62, 100, 21)];
    num2.textAlignment = NSTextAlignmentCenter;
    [num2 setText:@"10"];
    [self.view addSubview:num2];
    UILabel* num3 = [[UILabel alloc] initWithFrame:CGRectMake(110, 49, 100, 21)];
    num3.textAlignment = NSTextAlignmentCenter;
    [num3 setText:@"10000"];
    [self.view addSubview:num3];
    UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(160, 49, 100, 21)];
    eqEquals.textAlignment = NSTextAlignmentCenter;
    [eqEquals setText:@" = "];
    [self.view addSubview:eqEquals];
    UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(220, 49, 100, 21)];
    num4.textAlignment = NSTextAlignmentCenter;
    [num4 setText:@"10000"];
    [self.view addSubview:num4];
    NSLog(@"Log");
    
    
    UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
    [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
    [formulas1 sizeToFit];
    
    [self.view addSubview:formulas1];
}
- (void) initFac{
    NSDictionary *underline = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    
    switch (self.answerType.inputType) {
        {case 0:
            if(1);
            int teste = self.view.frame.size.width/6;
            UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 40, 100, 21)];
            num1.textAlignment = NSTextAlignmentCenter;
            [num1 setText:@"555"];
            [self.view addSubview:num1];
            UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 25, 40, 100, 21)];
            num2.textAlignment = NSTextAlignmentCenter;
            [num2 setText:@"(555x"];
            [self.view addSubview:num2];
            UILabel* num3 = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-50 + 35, 40, 100, 21)];
            num3.textAlignment = NSTextAlignmentCenter;
            [num3 setText:@"+555y)"];
            [self.view addSubview:num3];
            UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50 + 20, 40, 100, 21)];
            eqEquals.textAlignment = NSTextAlignmentCenter;
            [eqEquals setText:@" = "];
            [self.view addSubview:eqEquals];
            UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*5-50, 40, 100, 21)];
            num4.textAlignment = NSTextAlignmentCenter;
            [num4 setText:@"00000"];
            [self.view addSubview:num4];
            if (self.answerType.answerType == 4) {
                num1.attributedText = [[NSAttributedString alloc] initWithString:num1.text attributes:underline];
                num2.attributedText = [[NSAttributedString alloc] initWithString:num2.text attributes:underline];
                num4.attributedText = [[NSAttributedString alloc] initWithString:num4.text attributes:underline];
                UILabel* denum1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 60, 100, 21)];
                [denum1 setText:@"1000"];
                denum1.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum1];
                UILabel* denum2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 20, 60, 100, 21)];
                [denum2 setText:@"1000"];
                denum2.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum2];
                UILabel* denum4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50, 60, 100, 21)];
                [denum4 setText:@"1000"];
                denum4.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum4];
            }
            
            UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
            [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
            [formulas1 sizeToFit];
            
            [self.view addSubview:formulas1];
            break;
        }
        {case 1:
            if(1);
            int teste = self.view.frame.size.width/6;
            UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-75, 40, 100, 21)];
            num1.textAlignment = NSTextAlignmentCenter;
            [num1 setText:@"(5555x"];
            [self.view addSubview:num1];
            UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-75 + 25, 40, 100, 21)];
            num2.textAlignment = NSTextAlignmentCenter;
            [num2 setText:@"+5555)"];
            [self.view addSubview:num2];
            UILabel* num3 = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-75 + 35, 40, 100, 21)];
            num3.textAlignment = NSTextAlignmentCenter;
            [num3 setText:@"(5555x"];
            [self.view addSubview:num3];
            UILabel* num5 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-75 + 35, 40, 100, 21)];
            num5.textAlignment = NSTextAlignmentCenter;
            [num5 setText:@"+5555)"];
            [self.view addSubview:num5];
            UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(teste*5-75 + 20, 40, 100, 21)];
            eqEquals.textAlignment = NSTextAlignmentCenter;
            [eqEquals setText:@" = "];
            [self.view addSubview:eqEquals];
            UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*6-75, 40, 100, 21)];
            num4.textAlignment = NSTextAlignmentCenter;
            [num4 setText:@"00000"];
            [self.view addSubview:num4];
            if (self.answerType.answerType == 4) {
                num1.attributedText = [[NSAttributedString alloc] initWithString:num1.text attributes:underline];
                num2.attributedText = [[NSAttributedString alloc] initWithString:num2.text attributes:underline];
                num3.attributedText = [[NSAttributedString alloc] initWithString:num3.text attributes:underline];
                num5.attributedText = [[NSAttributedString alloc] initWithString:num5.text attributes:underline];
                num4.attributedText = [[NSAttributedString alloc] initWithString:num4.text attributes:underline];
                UILabel* denum1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-75 + 10, 60, 100, 21)];
                [denum1 setText:@"1000"];
                denum1.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum1];
                UILabel* denum2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-75 + 20, 60, 100, 21)];
                [denum2 setText:@"1000"];
                denum2.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum2];
                UILabel* denum3 = [[UILabel alloc] initWithFrame:CGRectMake(teste*3-75 + 35, 60, 100, 21)];
                [denum3 setText:@"1000"];
                denum3.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum3];
                UILabel* denum5 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-75 + 35, 60, 100, 21)];
                [denum5 setText:@"1000"];
                denum5.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum5];
                UILabel* denum4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*6-75, 60, 100, 21)];
                [denum4 setText:@"1000"];
                denum4.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum4];
            }
            
            UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
            [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
            [formulas1 sizeToFit];
            
            [self.view addSubview:formulas1];

            break;
        }
        {case 2:
            if(1);
            int teste = self.view.frame.size.width/6;
            UILabel* num1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 40, 100, 21)];
            num1.textAlignment = NSTextAlignmentCenter;
            [num1 setText:@"(555x"];
            [self.view addSubview:num1];
            UILabel* num2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 25, 40, 100, 21)];
            num2.textAlignment = NSTextAlignmentCenter;
            [num2 setText:@"+ 555x)^2"];
            [self.view addSubview:num2];
            UILabel* eqEquals = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50 + 20, 40, 100, 21)];
            eqEquals.textAlignment = NSTextAlignmentCenter;
            [eqEquals setText:@" = "];
            [self.view addSubview:eqEquals];
            UILabel* num4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*5-50, 40, 100, 21)];
            num4.textAlignment = NSTextAlignmentCenter;
            [num4 setText:@"00000"];
            [self.view addSubview:num4];
            if (self.answerType.answerType == 4) {
                num1.attributedText = [[NSAttributedString alloc] initWithString:num1.text attributes:underline];
                num2.attributedText = [[NSAttributedString alloc] initWithString:num2.text attributes:underline];
                num4.attributedText = [[NSAttributedString alloc] initWithString:num4.text attributes:underline];
                UILabel* denum1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50 + 10, 60, 100, 21)];
                [denum1 setText:@"1000"];
                denum1.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum1];
                UILabel* denum2 = [[UILabel alloc] initWithFrame:CGRectMake(teste*2-50 + 20, 60, 100, 21)];
                [denum2 setText:@"1000"];
                denum2.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum2];
                UILabel* denum4 = [[UILabel alloc] initWithFrame:CGRectMake(teste*4-50, 60, 100, 21)];
                [denum4 setText:@"1000"];
                denum4.textAlignment = NSTextAlignmentCenter;
                [self.view addSubview:denum4];
            }
            
            UILabel* formulas1 = [[UILabel alloc] initWithFrame:CGRectMake(teste-50+10, 460, 100, 100)];
            [formulas1 setText:[self.answerType.formulas objectAtIndex:0]];
            [formulas1 sizeToFit];
            
            [self.view addSubview:formulas1];

            break;
        }
            
        {default:
            break;
        }
    }

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
