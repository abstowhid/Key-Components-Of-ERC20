_update(address(0), 0x1234, 1000);
//from,to,value
// 0 address will be used as=>
            1.as from address=> when minting(coming token from no where(0))
            2.as to address => when burning (deleting token to no wehre(0))

//example: for minting
from = address(0) → Tokens are coming from nowhere (minting).

to = 0x1234 → The user (0x1234) is receiving tokens.

value = 1000 → 1000 tokens are being created.

purpose=>===========================(means the things need to do)
Increases total supply (totalSupply += value).

Increases 0x1234's balance (balances[0x1234] += 1000).

Emits a Transfer event → Transfer(address(0), 0x1234, 1000);


///

