pragma solidity ^0.5.0;

contract Owned {
    address public owner;
 
    
    constructor () public {
        owner = msg.sender;
    }
 

    modifier onlyOwner {
        require (msg.sender == owner);
        _;
    }
 
    function transferOwnership(address newOwner) onlyOwner public {
        if (newOwner != address(0)) {
        owner = newOwner;
      }
    }
}