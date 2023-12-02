#[contract] //Keyword to show that it's a Cairo contract
 
//mod - keyword defining a module
mod Voting {
    use starknet::get_caller_address;
    use starknet::ContractAddress;

    struct Storage {
        name: felt252,
        //Mapping between voters and proposals
        //vote: LegacyMap::<ContractAddress, u128>,
        proposalVotes: LegacyMap::<u128, felt252>,
    }