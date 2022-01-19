// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Oracle{

struct Request{
bytes data;
function(bytes memory) external callback;
}
Request[] requests;
event NewRequest(uint);
function query(bytes memory data, function(bytes memory) external callback) public{
requests.push(Request(data,callback));
emit NewRequest(requests.length - 1);

}
function reply(uint requestID,bytes memory response) public{
  requests[requestID].callback(response);
}

}
contract OracleUser {
  Oracle constant oracle = Oracle(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
  function buySomething() public{
    oracle.query("USD",this.oracleResponse);
  }
  function oracleResponse(bytes memory response) public{
    require(
      msg.sender == address(oracle),
      "Only oracle can call this."

    );
  }

}
