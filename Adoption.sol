pragma solidity ^0.5.0;

contract Adoption {
  address public adopters;
  function adopt() public {
    adopters = msg.sender;
  }
}

contract TestAdoption {
  event TestEvent(bool indexed name, string message);
   Adoption adoption;
   constructor(Adoption _adoption) public {
     adoption = _adoption;
   }

  // Testing the adopt() function
  function testGetAdopterAddressByPetId() public returns (address result) {
    adoption.adopt();
    return adoption.adopters();
  }
}

