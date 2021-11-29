# DataFi

## Inspiration
With the internet industry and platform economy thriving, data, which is almost everywhere in our lives, become valuable. When people disclose their data, they should have control on their own data and get appropriate payoff. Thus, the best way to make data worth is to BUILD A DATA MARKET!

## What it does
- Allow people to mint data as NFT (newly defined ERC721D standard)
- Allow people to control the concerning rights with smart contracts

## How we built it
We implement an extended standard ERC721D which is the data version of ERC721. The main difference is that we add a storage mapping and the function read, which can read the data from the Data NFT. And the data could only be accessed by the address with authorization. So we add a series of authorization functions "authorize", "getAuthorized", "setAuthorizationForAll" like the approval funtions. The main difference is that the address approved can transfer the NFT while the address authorized can only access the data.

To show the use of ERC721D, we implement a Scholar System including 2 contracts. The first one is ScoreData contract which is used to store the score of students. After the score data is minted, the second contract is Scholarship Contract, which access data from the Score Contract and automatically award the scholarship to student who own the score.

## Challenges we ran into
We would like to mint this score with the API from Chainlink, but there are some bugs in Mumbai Network so we failed to finish it before this deadline. We'll try to fix it in the future to enhance the trust of the data.

## Accomplishments that we're proud of
Created the ERC721D standard
Deployed a demo on Polygon

## What we learned
We learned to think more about our data, and design a new standard which maybe be proposed as an EIP. Also we learned a lot from the customized API from Chainlink, including how to set an Oracle and a Job and get the response from URI.

## What's next for DataFi
Integrating Chainlink customized API into our minting process.
Provide more private protecting/ secured services enabling/ market failing preventing/ data trading services.

## Built With
chainlink mumbai solidity truffle
