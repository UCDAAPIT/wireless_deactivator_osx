//
//  main.m
//  WirelessDeactivator
//
//  Created by Andrew Smiley on 6/2/14.
//  Copyright (c) 2014 University of Cincinnati. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreWLAN/CoreWLAN.h>

int main(int argc, const char * argv[])
{
    NSError *error;
    NSArray *interfaces = [[CWInterface interfaceNames] allObjects];
     for (int i = 0; i < [interfaces count]; i++) {
         CWInterface *interface = [[CWInterface alloc] initWithInterfaceName:[interfaces objectAtIndex:i]];
     [interface setPower:NO error:&error];
     NSLog(@"%@", [interface interfaceName]);
    
}

    return NSApplicationMain(argc, argv);
}
