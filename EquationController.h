//
//  EquationController.h
//  Mathemagics
//
//  Created by Leon Berni on 4/17/15.
//  Copyright (c) 2015 Leon Berni & Gabriel Nopper. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReceiveEquation.h"
#import "EquationInfos.h"

@interface EquationController : UIViewController <ReceiveEquation>

@property EquationInfos* answerType;

@end
