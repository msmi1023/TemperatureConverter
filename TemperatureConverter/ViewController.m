//
//  ViewController.m
//  TemperatureConverter
//
//  Created by tstone10 on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tempField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *enteredUnits;
@property (weak, nonatomic) IBOutlet UILabel *output;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)convertClicked:(id)sender {
	
	NSString * enteredUnitType = [_enteredUnits titleForSegmentAtIndex:_enteredUnits.selectedSegmentIndex];
	
	if([enteredUnitType isEqualToString:@"Farhenheit"]) {
		//convert from F to C
		//(50°F - 32) x .5556 = 10°C
	
		_output.text = [NSString stringWithFormat:@"%.2f", (([_tempField.text floatValue] - 32) * 0.5556)];
	}
	else {
		//convert from C to F
		//30°C x 1.8 + 32 = 86°F
		
		_output.text = [NSString stringWithFormat:@"%.2f", ([_tempField.text floatValue] * 1.8 + 32)];
	}
}

@end
