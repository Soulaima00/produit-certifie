# ProduitCertifié • Mini-dApp Blockchain

## 📌 Contexte
Ce projet est un **mini-projet Blockchain** qui permet de **certifier l’arrivée des produits dans une usine**.  
Chaque produit est enregistré sur la blockchain avec :  
- un **ID auto-incrémenté**  
- un **nom**  
- une **catégorie**  
- une **description**  
- une **date d’arrivée**  

---

## 🎯 Objectifs
- Garantir l’**authenticité** et la **traçabilité** des produits.  
- Pouvoir consulter à tout moment si un produit est bien enregistré.  
- Montrer un exemple complet d’application décentralisée (**dApp**) avec **Smart Contract + Frontend + MetaMask**.

---

## 🛠️ Technologies et Outils
- [Solidity](https://soliditylang.org/) → pour écrire le contrat intelligent.  
- [Hardhat](https://hardhat.org/) → framework pour compiler, tester et déployer.  
- [Node.js & NPM](https://nodejs.org/) → environnement JavaScript et gestion des dépendances.  
- [Ethers.js](https://docs.ethers.io/) → interaction entre frontend et contrat.  
- [MetaMask](https://metamask.io/) → portefeuille Ethereum pour signer les transactions.  
- [Hardhat Local Node](https://hardhat.org/hardhat-network) → blockchain locale pour les tests.  
- **HTML / CSS / JavaScript** → pour le frontend.  

---

## 📐 Conception
1. **Smart Contract (`contracts/ProduitCertifie.sol`)**  
   - `ajouterProduit(string nom, string categorie, string description)` → ajoute un produit.  
   - `getProduit(uint id)` → récupère les infos d’un produit.  
   - Mapping `id → Produit`.  

2. **Déploiement (`scripts/deploy.js`)**  
   - Déploie le contrat sur le réseau local Hardhat.  
   - Affiche l’adresse du contrat dans la console.  

3. **Frontend (`frontend.html`)**  
   - Formulaire pour ajouter un produit.  
   - Section pour consulter un produit par ID.  
   - Table pour afficher la liste des produits.  
   - Connexion avec **MetaMask**.  

---

## 🚀 Installation et Exécution

### 1. Cloner le projet
```bash
git clone https://github.com/<votre-username>/produit-certifie.git
cd produit-certifie
