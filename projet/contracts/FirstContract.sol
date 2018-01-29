pragma solidity ^0.4.0;

  /**
   * Mon premier Smart Contract
   * @dev Charles Azanlekor <contact@grydl.com>
   * 2018.01.20
   * V 1.0
   */
contract FirstContract {

   //Variable qui stocke la valeur de l'Ether reçue
   uint public solde;

  /**
   * @dev Fallback function qui permet de recevoir les Ethers
   * <msg.value> permet de retrouver la valeur d'Ether reçu 
   * C'est cette fonction qui est appelée lorsque l'utilisateur envoie des Ethers aux
   * Smart Contract sans appeler aucune fonction
   */
   function () public payable {
    setEther(msg.value);
   }

  /**
   * Méthode permattant d'affeter une valeur à la variable <solde> 
   * Nous pouvons ainsi affecter la valeur de l'Ether reçue à la variable <solde>
   */
   function setEther (uint valeur) public payable {
       solde = valeur;
   }

   /**
    * Méthode permettant de retrouver la valeur de la variable <solde>
    * Nous pouvons ainsi retrouver la valeur stockée dans la variable <solde>
    */
   function getEther() public constant returns (uint) {
       return solde;       
   }

   /**
    * Méthode permettant de retrouver la balance ou le solde d'Ether du Smart Contract
    */
   function getTotal() public constant returns (uint) {
       return this.balance;
   }
    
}