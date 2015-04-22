//
//  FactoringParameterViewController.m
//  Mathemagics
//
//  Created by Leon Berni on 4/15/15.
//  Copyright (c) 2015 Leon Berni & Gabriel Nopper. All rights reserved.
//

#import "FactoringParameterViewController.h"
#import "ReceiveEquation.h"

@interface FactoringParameterViewController ()

@end

@implementation FactoringParameterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.numberTypeData = @[@"Naturais", @"Inteiros", @"Racionais", @"Reais", @"Fração"];
    
    self.numberTypeData2 = @[@"Desu", @"desune", @"subarashii"];
    
    self.parameterPicker.dataSource = self;
    self.parameterPicker.delegate = self;
    
    
    self.sliderValue.text = [NSString stringWithFormat:@"%.2f",self.sliderDesu.value*10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwindToFac:(UIStoryboardSegue*)unwindSegue{
    
}

// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return self.numberTypeData2.count;
    } else{
        
        return self.numberTypeData.count;
    }
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == 0) {
        return self.numberTypeData2[row];
    }
    return self.numberTypeData[row];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"OI OI Q TAL FUNFAR?");
    EquationInfos* equationToBeSent = [[EquationInfos alloc] init];
    NSNumber *complexity = [[NSNumber alloc] initWithFloat:self.sliderDesu.value];
    equationToBeSent.inputType = [self.numberTypeData2 objectAtIndex:[self.parameterPicker selectedRowInComponent:0]];
    equationToBeSent.awnserType = [self.numberTypeData objectAtIndex:[self.parameterPicker selectedRowInComponent:1]];
    equationToBeSent.complexity = complexity;
    equationToBeSent.equationName = [NSString stringWithFormat:@"%ld", self.eqName.tag];
    
    if ([equationToBeSent.inputType isEqual:@"Desu"]) {
        NSLog(@"Kawaii ne");
    }
    equationToBeSent.formulas = @[@"(a + b)^2 = a^2 + 2.a.b + b^2", @"(a - b)^2 = a^2 - 2.a.b + bˆ2"];
    equationToBeSent.phases = @[@"To", @"Be", @"Announced"];
    
    
    if ([[segue destinationViewController] conformsToProtocol:@protocol(ReceiveEquation)]) {
        [[segue destinationViewController] setEquation:equationToBeSent];
    }
}
- (IBAction)backToRootView:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)sliderComplexity:(id)sender {
        self.sliderValue.text = [NSString stringWithFormat:@"%.2f",self.sliderDesu.value*10];
}


@end
