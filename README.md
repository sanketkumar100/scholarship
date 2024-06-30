# Token

This Solidity contract determines scholarship eligibility based on annual income by using functionalities require(), assert() and revert() .

## Description

The contract, named Scholarship, includes functionalities to set the annual income, and check eligibility for a scholarship using different error-handling functions. The contract makes use of three important error-handling mechanisms require(), assert(), and revert(). The statements statement checks a condition and throws an exception if it evaluates to false. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., To.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "hardhat/console.sol";

contract Scholarship {
    uint public income;

    function setannualincome(uint _income) public{
        income = _income;
    }

    function testAssert() public view{
        assert(income >= 1000000 && income <= 5000000);
        console.log("Congratulations! You are eligible for the scholarship.");
    }

    function testRequire() public view{
        require(income >= 1000000, "Your Annual income must be between 10LPA to 50LPA for the scholarship" );
        console.log("Congratulations! You are eligible for the scholarship.");
    }

    function testRevert() public view{
        if ( income< 1000000 || income > 5000000){
            revert("Your Annual income must be between 10LPA to 50LPA for the scholarship");
        }
        else{
            console.log("Congratulations! You are eligible for the scholarship.");
        }
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "scholarship.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. After that enter the Annual income and click on setannualincome button, Then check whether the scholarship eligibility criteria is passed or not by clicking on the testassert, testrequire, and testrevert button. 
