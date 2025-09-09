async function main() {
    const ProduitCertifie = await ethers.getContractFactory("ProduitCertifie");
    const produit = await ProduitCertifie.deploy();
    await produit.deployed();
    console.log("✅ Contrat déployé à l’adresse:", produit.address);
  }
  
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
  