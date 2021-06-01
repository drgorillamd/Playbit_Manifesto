pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract PlayBITManifesto is ERC721 {

    uint256 MAX_ID = 15;
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    address recipient = 0x7BEBF57FAfcB0Df8E03647CBfF6DAb1b6CD2d53D;

    constructor() ERC721("PlayBIT.gg", "Manifesto") {
    	for (uint i = 1; i<=MAX_ID; i++) {
    		_tokenIds.increment();
        	_mint(recipient, _tokenIds.current());
        }
    }


    function tokenURI(uint256 token_id) public view override returns (string memory) {
    	require(_exists(token_id), "ERC721Metadata: URI query for nonexistent token");
        return "https://ipfs.io/ipfs/QmZqyrFhJgbjtgVPikNcJnZHMz6tuA4xvguXNjrVhYwbbp";
    }

    function totalSupply() external view returns (uint256) {
      return MAX_ID;
    }


}
