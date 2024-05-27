const { expect } = require('chai');

describe("Token Contract", function () {
    it('should transfer tokens between two accounts', async function () {
        const [owner, recipient] = await ethers.getSigners(); // getSigners from ethers libary are two addresses involved in this contract


        // deploy the contract 
        const hardhatToken = await ethers.deployContract("Token", [1000000]);
        // transfer the token from owner to recipient
        const amountToTransfer = 100;
        await hardhatToken.transfer(recipient.address, amountToTransfer);

        // check balances
        const ownerBalanceAfterTransfer = await hardhatToken.balanceOf(owner.address);
        const recipientBalanceAfterTransfer = await hardhatToken.balanceOf(recipient.address);

        expect(ownerBalanceAfterTransfer).to.equal(1000000 - amountToTransfer);
        expect(recipientBalanceAfterTransfer).to.equal(amountToTransfer);

    });
});