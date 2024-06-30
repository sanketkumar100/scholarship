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
