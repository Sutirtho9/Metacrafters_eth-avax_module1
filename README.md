# Functions and Errors - ETH + AVAX
This is a solidity program which contains a smart contract diplaying the basic functions of the require(), revert(), and assert functions.

## Description
This contract on solidity shows an ecample of the three major error handling functions in solidity that are require(), revert(), and assert functions. 
The program is based in a situation where we have to check the age of the user. 
If the age of the user i above 18, then the requested transaction of be done to their account, if not then the error will be handled using the functions.
And it will handle divide by zero error.

## Getting Started

### Executing the program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar.
Save the file with a .sol extension (e.g., contract.sol). Copy and paste the following code into the file:

```
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar.

Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile contract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contract from the dropdown menu, and then click on the "Deploy" button.

After that you can put your credentials that will be your age, amount of tokens you want, and 2 integers to perform division.

After that go onto each fucntions RequireCheck(), RevertCheck() and AssertCheck() put the required inputs and press transact.

## Authors 
Sutirtho Chakravorty


sutirthochakravorty@gmail.com
## Lisence
This project is licensed under the MIT License - see the LICENSE.md file for details
