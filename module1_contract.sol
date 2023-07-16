// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errorhandling{
    uint public coinbalance=0;
    uint public quotient=0;

    function RequireCheck(uint age, uint coins) public payable  {
        coinbalance+=coins;
        require(age>=18,"Age is less than 18. Transaction not possible");
        
        //coinbalance+=coins;


    }

    error Throwerror(string);
    function RevertCheck(uint age, uint coins)public payable  {
        coinbalance+=coins;
        if(age<18)
            revert Throwerror("Age is less than 18. Transaction not possible");
          //revert "Age is less than 18. Transaction not possible";

          //coinbalance+=coins;
    }

    

    function AssertCheck(uint a, uint b) public {
        assert(b!=0);

        quotient=a/b;



    }
    

}
