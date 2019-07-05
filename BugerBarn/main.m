//
//  main.m
//  BugerBarn
//
//  Created by Austin on 7/1/19.
//  Copyright © 2019 Austin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSDictionary *orderDict = @{
                                    @"burgers": @5,
                                    @"shakes":  @3,
                                    @"customers": @4,
                                    @"isTakeout": @NO,
                                    @"subtotal": @0.0,
                                    };
        float burgerPrice = 4;
        float shakePrice = 3;
        float subtotal;
        
        subtotal = (burgerPrice * [[orderDict valueForKey:@"burgers"]intValue]) + (shakePrice * [[orderDict valueForKey:@"shakes"]intValue]);
        NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary:orderDict];
        
        //example of NSMutableDictionary with values provided
        /*
        NSMutableDictionary *testDict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@5, @"burgers",@3, @"shakes", nil];
        */
        
        
        [outputDict setValue:@(subtotal) forKey:@"subtotal"];
        
        
        
        
        
        
    }
    return 0;
}

//The # of burgers
//the # of Shakes
//The # of customers
//If the order was for takeout
//The orders subtotal


