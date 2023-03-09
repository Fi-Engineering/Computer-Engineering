# Note to student: DO NOT EDIT THIS FILE
# Think of the DAO contract as immutable to you, the attacker

userBalances: public(HashMap[address,uint256])
    
@external
@payable
def deposit() -> bool:
    self.userBalances[msg.sender] += msg.value
    return True

@external
def withdraw() -> bool:

    # This is the vulnerability for reentrance
    raw_call(msg.sender, b"\0", value=self.userBalances[msg.sender])
    self.userBalances[msg.sender] = 0
    return True