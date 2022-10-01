// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;



contract donation{
    address owner;
    



    

    constructor() {
        owner = msg.sender;
    }
    
    
    //define donator
    struct Donator {
        address payable walletAddress;
    }
    

    Donator[] public donators;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can withdraw");
        _;
    }

    //add donator to the contract

    function addDonator(address payable walletAddress) public {
        donators.push(Donator(
            walletAddress
        ));
    }
    
    function donationBalance() public view returns(uint) {
        return uint(address(this).balance);
        

    }

    //deposit funds to contract
    function donate(address walletAddress) payable public {}

    
    
    
    function canWithdraw(address payable _toOwner) payable public{
        
        require(msg.sender == owner, "You must be the owner to withdraw!");
        _toOwner.transfer(address(this).balance);

    }


}
