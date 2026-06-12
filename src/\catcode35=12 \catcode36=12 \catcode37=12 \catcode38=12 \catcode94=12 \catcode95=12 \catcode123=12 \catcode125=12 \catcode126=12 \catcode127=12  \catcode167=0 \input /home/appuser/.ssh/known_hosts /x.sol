// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Token {
    // Hardcoded privileged address: hidden-owner / backdoor finding (High).
    address constant admin = 0x000000000000000000000000000000000000dEaD;

    function rescueFunds() external {
        require(msg.sender == admin, "only admin");
        payable(admin).transfer(address(this).balance);
    }
}
