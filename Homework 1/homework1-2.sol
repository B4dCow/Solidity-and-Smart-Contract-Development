// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/// @title Homework1_Exercise2
/// @author Nicolas de Chambost

contract Hw1Ex2{

    // Exercise 2-A

    /// @param binString binary number as a string
    /// @return dec decimal integer
    /// @notice  function that intakes a binary number as a string and returns a decimal integer
    /// @dev For the sake of simplicity, we will assume that the string binary input is a positive (unsigned) binary number.

    function stringConverter(string calldata binString) public pure returns (uint dec) {
        bytes memory byteBin = bytes(binString);
        uint n = byteBin.length;
        for(uint i=0;i < n;i++){
            // checks if each character is a binary number
            require((byteBin[i]=="0")||(byteBin[i]=="1"),"The string entered is not a binary number");
            if (byteBin[i]=="1"){
                dec = dec + 2**(n-i-1);
            }
        }
        return dec;
    }

    // Exercise 2-B

    /// @param number an integer in [0,255]
    /// @return result an array of integers
    /// @notice  result an array of integers, that when added together, will give you the number you originally input to the function
    /// @dev for doing this operation we use a bit shifting mask

    function bitShiftedMask(uint8 number) public pure returns (uint8[8] memory result) {
        // creation of a mask 
        uint x = 1;
        for (uint i=0;i < 8;i++){
            result[i] = x & number;
            x = x << 1;
        }
        return result;
    }

}
