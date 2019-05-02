//
//  Patient.m
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString*) name andAge: (int) age
{
    self = [super init];
    if (self) {
        _age = age;
        _name = name;
        _hasValidHealthCard = YES;
        _symptoms = [[NSMutableSet alloc]init];
        _medHistory = [[NSMutableArray alloc]init];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

@end
