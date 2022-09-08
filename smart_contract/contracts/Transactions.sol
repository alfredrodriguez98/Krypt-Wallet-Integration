// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

//import "../node_modules/hardhat/console.sol";

contract Transactions {
    uint256 transactionCounter;
    //event is like a function we call at later point
    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );
    //custom data structure to hold all relevant values
    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    //storing all the transactions in an array
    TransferStruct[] transactions;

    //Appends new transaction data to Blockchain
    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCounter += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );
        // Triggering the event using emit keyword
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    //Displays all the transactions occured so far
    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    // Returns total number of transactions - returns a number
    function getTransactionCount() public view returns (uint256) {
        return transactionCounter;
    }
}
