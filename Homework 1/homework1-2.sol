// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

/// @title Exercise2
/// @author Nicolas de Chambost

contract Exercise2{

    /// @param binString binary number as a string
    /// @return dec decimal integer
    /// @notice  function that intakes a binary number as a string and returns a decimal integer
    /// @dev For the sake of simplicity, we will assume that the string binary input is a positive (unsigned) binary number.

    function stringConverter(string calldata binString) public pure returns (uint dec) {
        bytes memory byteBin = bytes(binString);
        uint n = byteBin.length;
        for(uint i=0;i < n;i++){
            require((byteBin[i]=="0")||(byteBin[i]=="1"),"The string entered is not a binary string");
            if (byteBin[i]=="1"){
                dec = dec + 2**(n-i-1);
            }
        }
        return dec;
    }
    
    /// @param number an integer in [0,255]
    /// @return result an array of integers, that when added together, will give you the number you originally input to the function

    function bitShiftedMask(uint8 number) public pure returns (uint[8] memory result) {
        uint x = 1;
        for (uint i=0;i < 8;i++){
            result[i] = x & number;
            x = x << 1;
        }
        return result;
    }

}