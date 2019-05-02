//
//  main.m
//  DoctorAndPatient
//
//  Created by Dayson Dong on 2019-05-01.
//  Copyright © 2019 Dayson Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *aDoc = [[Doctor alloc]initWithName:@"doctor" andSpecialization:@"A"];
        Doctor *bDoc = [[Doctor alloc]initWithName:@"doctorbbb" andSpecialization:@"B"];
        Patient *aPat = [[Patient alloc]initWithName:@"patient" andAge:10];
        [aPat setHealthCardNumber:@"123456"];
        [aDoc patientVisit:aPat];
        
        Patient *pattient2 = [[Patient alloc]initWithName:@"someonesick" andAge:10];
        [[aPat symptoms] addObject:@"Sym1"];
        [aDoc requestMedicationForPatient:aPat];
        [[aPat symptoms] addObject:@"Sym2"];
        [aDoc requestMedicationForPatient:aPat];
        [aDoc patientVisit:pattient2];
        [[pattient2 symptoms] addObject:@"Sym1"];
        [aDoc requestMedicationForPatient:pattient2];
        [[pattient2 symptoms] addObject:@"Sym2"];
        [aDoc requestMedicationForPatient:pattient2];
        NSLog(@"History %@",[pattient2 medHistory]);
//        NSLog(@"info:%@",[aDoc healthCardInfo]);
//        NSLog(@"%@",[aDoc patients]);
//        NSLog(@"MedHistory:%@",[aPat medHistory]);

    }
    return 0;
}
