pragma solidity ^0.6.0;

contract Timer {
    
   uint start;
   uint end;
   
   modifier timerOver{
       require(now <= end, "The timer is over");
       _;
   }
   
   function _start() public{
      start = now;
   } 
   function _end(uint totalTime) public{
      end = totalTime+start;
   } 
   function getTimeLeft() public timerOver view returns(uint){
      return end-now;
      
   }     
}
