// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProduitCertifie {
    uint public compteurProduits = 0;

    struct Produit {
        uint id;
        string nom;
        string categorie;
        string description;
        uint dateArrivee; // timestamp
    }

    mapping(uint => Produit) public produits;

    event ProduitAjoute(uint id, string nom, string categorie, string description, uint dateArrivee);

    function ajouterProduit(string memory _nom, string memory _categorie, string memory _description) public {
        compteurProduits++;
        produits[compteurProduits] = Produit(
            compteurProduits,
            _nom,
            _categorie,
            _description,
            block.timestamp
        );
        emit ProduitAjoute(compteurProduits, _nom, _categorie, _description, block.timestamp);
    }

    function getProduit(uint _id) public view returns (uint, string memory, string memory, string memory, uint) {
        Produit memory p = produits[_id];
        return (p.id, p.nom, p.categorie, p.description, p.dateArrivee);
    }
}
