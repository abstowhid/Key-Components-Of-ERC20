contract MyToken is ERC20 {
    function mint(address to, uint256 amount) public {
        _update(address(0), to, amount); // Mint tokens
    }
    
    function _update(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            totalSupply += value;  // Increase total supply
        } else {
            balances[from] -= value; // Reduce sender's balance
        }

        if (to == address(0)) {
            totalSupply -= value;  // Reduce total supply for burning
        } else {
            balances[to] += value; // Increase receiver's balance
        }

        emit Transfer(from, to, value); // Log the event
    }
}


//when minting new token, that means it coming from 0 adrress
//when i'm minting(deleting) existing token,that means it going back to 0 address(means don't exist anymore)
//so,
whle minting new token, 
                1.it will be added to the total supply
                2.it will be added to the receiver address
while burning existing token,
                1.the amount will be removed from the total suply
                2.the amount will be removed from the from address.(who burn)
