// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

/// @title String Conversion
/// @author Nicolas de Chambost
/// @notice  function that intakes a binary number as a string and returns a decimal integer
/// @dev For the sake of simplicity, we will assume that the string binary input is a positive (unsigned) binary number.


/// @param binString binary number as a string
/// @return dec decimal integer
function stringConverter(string calldata binString) pure returns (uint dec) {
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