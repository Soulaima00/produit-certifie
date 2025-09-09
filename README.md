# ProduitCertifié • Mini-dApp Blockchain

##  Contexte
Ce projet est un **mini-projet Blockchain** qui permet de **certifier l’arrivée des produits dans une usine**.  
Chaque produit est enregistré sur la blockchain avec :  
- un **ID auto-incrémenté**  
- un **nom**  
- une **catégorie**  
- une **description**  
- une **date d’arrivée**  

---

##  Objectifs
- Garantir l’**authenticité** et la **traçabilité** des produits.  
- Pouvoir consulter à tout moment si un produit est bien enregistré.  
- Montrer un exemple complet d’application décentralisée (**dApp**) avec **Smart Contract + Frontend + MetaMask**.

---

##  Technologies et Outils
- [Solidity](https://soliditylang.org/) → pour écrire le contrat intelligent.  
- [Hardhat](https://hardhat.org/) → framework pour compiler, tester et déployer.  
- [Node.js & NPM](https://nodejs.org/) → environnement JavaScript et gestion des dépendances.  
- [Ethers.js](https://docs.ethers.io/) → interaction entre frontend et contrat.  
- [MetaMask](https://metamask.io/) → portefeuille Ethereum pour signer les transactions.  
- [Hardhat Local Node](https://hardhat.org/hardhat-network) → blockchain locale pour les tests.  
- **HTML / CSS / JavaScript** → pour le frontend.  

---

##  Conception
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

##  Installation et Exécution

### 1. Cloner le projet
```bash
git clone https://github.com/<votre-username>/produit-certifie.git
cd produit-certifie
```
### 2. Initialiser le projet Node.js
```bash
npm install
```
### 3. Installer Hardhat
```bash
npm install --save-dev hardhat@2.22.10
```
### 4. Créer un projet Hardhat
```bash
npx hardhat
```
👉 Choisir : Create a JavaScript project.
### 5. Installer les dépendances utiles
```bash
npm install --save-dev @nomicfoundation/hardhat-toolbox ethers
```
### 6. Compiler le contrat
```bash
npx hardhat compile
```
### 7. Lancer un nœud local (blockchain locale)
```bash
npx hardhat node
```
👉 Garde cette console ouverte (c’est ta blockchain locale).
### 8. Déployer le contrat
Dans une nouvelle console, exécuter :
```bash
npx hardhat run scripts/deploy.js --network localhost
```

✅ Contrat déployé à l’adresse: 0x5F...................

---

## 🦊 Configuration MetaMask

1. **Ajouter un nouveau réseau :**

   -Nom : Hardhat Local

   -RPC URL : http://127.0.0.1:8545

   -Chain ID : 31337

   -Symbole : ETH

2.**Importer un compte avec une clé privée générée par Hardhat (npx hardhat node affiche les comptes + clés privées).**

3.**Vérifier que tu as bien 10,000 ETH (fictifs) sur ce compte.**
