//
//  main.m
//  Objc-5.7-While
//
//  Created by Leif Petersen on 13-02-28.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//
//  Playing with While loops and using the method to find the GCD as an excuse, for added fun
//  we tack on scanf - oddly similar from c...
//  This program comes from ObjC 4th edition, 5.7



#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  
    

    @autoreleasepool {
        
        
        // Declaring variables needed, a, b, and temp. Because I can!
        
        unsigned int a, b, temp;
        
        // Asking for that most dangerous thing of all - user input...I know, I know...
        
        NSLog(@"Hello Puny Earthling, Please type 2 non negative integers AND NOT CHAR's!: ");
        
        // scanf ye time has come
        
        scanf("%u%u", &a, &b);
        
        // the while loop.
        
        while (b != 0) {
            
            temp = a % b;
            a = b;
            b = temp;
        }
        
        
        NSLog(@"Their GCD is %u", a);
        
    }
    return 0;
}

