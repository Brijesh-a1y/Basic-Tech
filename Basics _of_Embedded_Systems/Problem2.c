#include <stdio.h> // Standard input/output library (for printf)

int main() {
    int counter = 0; 	// Initialize counter variable
    int max_blinks = 5; 	// Maximum number of blinks
   
    
    // // Loop to blink the LED
   
    for(counter=0; counter<=max_blinks; counter++){
        if(counter%2==0){
            printf("LED ON (Counter: %d)\n", counter); 

        }
        else{
            printf("LED OFF (Counter: %d)\n", counter); 
        }
    }
        
      

    
    printf("Liftoff!\n");

    return 0; 	
} 