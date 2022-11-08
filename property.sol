//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./PriceConverter.sol";
error notOwner();
contract property{
    address[] public seller;
    address public buyers;
    uint256 public initialamount;
    uint256 public price;
    uint256 public minprice;
    string need;
    string r="rent";
    string b="Buy";
    mapping (address => uint256) public sells;
    constructor(){
        seller=msg.sender;
    }
    modifier OnlyOwner{
        if(msg.sender !=owner){
            revert notOwner;
        }
        _;
    }
    function sell() public OnlyOwner{
        require(msg.sender == owner);
    }
    function add() public {
    seller.push(msg.sender);
    }

  function getTheLastUser() external view returns(address) {
    uint lastIndex = seller.length-1;
    return seller[lastIndex];
  }

  function getLengthArray() external view returns(uint) {
    return seller.length;
  }

    function propertybuy() OnlyBuyer{
        if(msg.value>=price){
            address public currentowner = getTheLastUser();
        }
        else{
            propertyNegotiate();
        }
    }
    function propertyNegotiate() public payable{
        if(msg.value>=minprice);{
            currentowner =getTheLastUser();
        }
        else{

        }
    }
    function propertysell() onlyseller{
        if(keccak256(abi.encodePacked(need)) == keccak256(abi.encodePacked(r))){
            propertyrent();
        }
        else{
            propertybuy();
        }
    }
    function propertyrent() OnlyOwner{
        
    }
}
