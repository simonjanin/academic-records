// Simplified contract
// NOT UP TO DATE
// [do not use in production]

contract diploma {
    struct Universities {
        string name;
        address owner;
        bytes32 pubkey_hash; // Useful to keep ethereum address and certification separate for the university
        mapping(uint => bytes32) diplomas;
        // possibly add a voting weight, but should prob be abstracted away by using external multisig contract
    }
    
    mapping(uint => Universities) signatories;
    
    function add_university(uint callerUniversityId, uint universityId, string name, address owner, bytes32 pubkey_hash) {
        // we'll need to create a consensus algorithm to modify the Universities struct, prob maj voting
        if (msg.sender == signatories[callerUniversityId].owner || callerUniversityId == 0) {
            // not safe! But easier to debug. Future: just one multi-sig to modify contract.
            // direct check that msg.sender == 0x???? for the multisig. Then we can remove callerUniversityId
            signatories[universityId].name = name;
            signatories[universityId].owner = owner;
            signatories[universityId].pubkey_hash = pubkey_hash;
        } else {
            // not authorized to modify the struct
        }
    }
    
    function add_diploma(uint universityId, uint diplomaId, bytes32 diploma_ipfs_link) {
        // diploma and certificate validity have to be checked externally
        if (signatories[universityId].owner == msg.sender) {
            signatories[universityId].diplomas[diplomaId] = diploma_ipfs_link;
        }
    }
    
    // Commands to update the state
    function modify_university() {}
    function modify_diploma() {}
    
    // Queries
    function authorized_to_modify() {} // only the multisig and the concerned university can modify.
    function get_diploma_mapping() {}
    function get_university_mapping() {}
    function get_diploma_hash(uint universityId, uint diplomaId) {}
    function get_owner_address() {}
    function get_university_name(uint universityId) {}
    // more queries
}
