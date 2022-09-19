// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract DataStructure {
  constructor() { }

  // Customer
  struct Customer {
    uint256 id;
    string name;
    string email;
  }

  // Customer Static Frank
  Customer client = Customer(1, "frank", "frank7rojas@gmail.com");
 
  // Array of uints, fixed length to 5
  uint256 [5] public ids_fixed_length = [1,2,3,4,5];   
  
  // Array of uints, dynamic length
  uint256 [] public ids_dynamic_length;  

  // Dynamic Array of customers
  Customer [] public dynamic_customers;
   
  // Insert new Client, first form
  function insertCustomer(uint256 _id, string memory _name, string memory _email) public {
    dynamic_customers.push(Customer(_id, _name, _email));
  }

  // Insert new Client, second form
  function insertCustomer2(uint256 _id, string memory _name, string memory _email) public {
    Customer memory tempCustomer = Customer(_id, _name, _email);
    dynamic_customers.push(tempCustomer );
  }

  // Mappings
  mapping(address => uint256) public tokens;
  mapping(string => uint256[]) public listTokens;
  mapping(address => Customer) public addressDataStructure;
  
  // Assign a number to an address
  function assignNumber(uint256 _number) public {
    tokens[msg.sender] = _number; 
  }

  // Insert to a list of numbers to an string
  function assignNumberToString(string memory _name, uint256 _number) public {
    listTokens[_name].push(_number);
  }

  // Assign Customer Struct to an Address 
  function assignCustomerToAddress(uint256 _id, string memory _name, string memory _email) public {
    addressDataStructure[msg.sender] = Customer(_id, _name, _email);
  }  
  
} 