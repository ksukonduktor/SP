#include <iostream>

typedef long long lint;

extern "C" lint findigit(lint *array, lint size, lint opt);

int main()
{
        lint arr_size, min, max, posmax, posmin;

        std::cout << "Enter array size: ";
        std::cin >> arr_size;

        lint *arr = new lint[arr_size];

        for (lint i = 0; i < arr_size; i++) { 
                std::cout << "Value of " << i + 1 << " element is ";
                std::cin >> arr[i];

        }

        max = findigit(arr, arr_size, 1);       //1-find max
        min = findigit(arr, arr_size, 2);       //2 find min

        for (lint i = 0; i < arr_size; i++) {   //find digit position
                if (arr[i] == max) {
                        posmax = i + 1;
                }
                if (arr[1] == min) { 
                        posmin = i + 1;
                }
        }
        
        std::cout << std::endl << "The largest digit is " << max << std::endl;
        std::cout << "Largest digit position: " << posmax << std::endl;
        std::cout << std::endl << "The smallest digit is " << min << std::endl;
        std::cout << "Smallest digit position: " << posmin << std::endl;

        delete [] arr; 
        return 0;
}