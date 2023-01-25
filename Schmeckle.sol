// contracts/SimpleToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract Schmeckle is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20("Schmeckle", "SHM") {
        _mint(0x05963f9eb2ed0470E2B25b287BEdc0e8c38ADB87, 80085000 * (10 ** uint256(decimals())));
    }
}
