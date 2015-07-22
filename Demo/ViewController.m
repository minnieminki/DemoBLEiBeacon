//
//  ViewController.m
//  Demo
//
//  Created by KieuPTN on 7/22/15.
//  Copyright (c) 2015 KieuPTN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) CBCentralManager *centralManager;
@property (nonatomic, strong) CBPeripheral *periplheral;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _centralManager = [[CBCentralManager alloc]initWithDelegate:self queue:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)centralManagerDidUpdateState:(CBCentralManager *)central {
    if (central.state == CBCentralManagerStatePoweredOn) {
        [_centralManager scanForPeripheralsWithServices:nil options:@{ CBCentralManagerScanOptionAllowDuplicatesKey : @YES }];
        NSLog(@"Scan");
    }
}

@end
