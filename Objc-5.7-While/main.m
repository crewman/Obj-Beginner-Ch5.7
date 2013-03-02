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


 
 // A neat use of mod, used here to reverse the digits of an entered integer:

 /*
      So the way this works, as I understand it: 
  
      input a number: 1024
      
        1024 % 10  = 4  
        1024 / 10 = 102.4 (but because these are integers it's actually) = 102
            
            102 % 10 = 2
            102 / 10 = 10
                
                10 % 10 = 0
                10 / 10 = 1
                    
                    1 % 10 = 1
                    1 / 10 = 0
 
  In each iteration the value of inputnumber % 10 = flipped integer, and can then be printed. This 
  would result in a program that outputs in reverse order the number the user inputs. 
  
  My thought is possibly using arrays, take the input:
  
    input a number: 1024
                    ^  ^
                    |  |__ input[1,3]
            input[1,0]
 
 
  I guess you'd need a loop of sorts to count the max array filled with info you care about:
  
  for (i = 0, i ,  ){
  
      max_num = 0 + 1; \\ When assigning digits to an array, keep a an array counter.
  
  }
  
 
  and then print the output by reversing the input: for ( something | i,j| ) { printf input[1,maxnum - j] } 
  or something:
  ß
  so like:
  
                #1: printf( input[1,3] );
                    
                    #2: printf( input[1,2] );
  
                        #3: printf( input[1,1] );
                        
                            #4: printf( input[1,0] );

  
  
  Anyway, it seems clunkier than the way the book did it, with at least one, probably 2 loops. I am not sure if there is any advantage to my method either, but it's nifty!

  
  */

/*
 
 // The While Approach:
 
 
 @autoreleasepool 
 {
 
  int inputnumber, flipped_number;
 
 NSLog(@"Enter your number Puny Earthling: ");
 scanf("%i", &inputnumber);
 
 while( inputnumber != 0 )
 
    {
        flipped_number = inputnumber % 10;
        NSLog (@"%i", flipped_number);
            inputnumber /= 10;
 
    }
 
 }
 
 
 
 
 // The Do Approach - have the condition at the end, remember when inputnumber = 0, it's all over:
 
 
 @autoreleasepool
 {
    int inputnumber, flipped_number;
    NSLog(@"Enter your number, Puny Earthling: ");
    scanf("%i", &inputnumber);
    
    do {
 
        flipped_number = inputnumber % 10;
        NSLog(@"%i", flipped_number);
        inputnumber /= 10;
 
 
 
        }
        
    while ( number != 0);
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 */


