// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Token {
    string public name = "MagdaJankowskaToken"; // any name for your own token
    string public symbol = "MJT";
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    // transfer name of the event , these two inside are the parameters of the event
    // indicating addresses involved and uint 256 indicate the value of that transfer
    event Transfer(address indexed from, address indexed to, uint256 value);

    // we are getting total supply from the constractor

    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
    }

    function transfer(
        address _to,
        uint256 _value
    ) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Not enough tokens");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}
