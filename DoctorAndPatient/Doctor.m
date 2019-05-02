//
//  Doctor.m
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
@implementation Doctor

- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}

@end
