export interface Ticket {
    id: number;  // Primary Key

    objet: string;
    demandeur: string;
    etat: "Ouvert" | "En cours" | "Résolu" | "Fermé" | "En attente";
    statut: "Nouveau" | "En cours" | "Résolu" | "Fermé";
    priorite: "Basse" | "Moyenne" | "Haute" | "Critique";
    assigneA?: string; // Optional because it may be null
    detailsStatut?: string;
    departement?: string;
    source?: string;

    dateCreation: string; // ISO 8601 format: "YYYY-MM-DDTHH:mm:ss.sssZ"
    dateDerniereModification: string;
    echeance?: string;
    dateFermeture?: string;
    statutApprobation: "Approuvé" | "En attente" | "Rejeté";

    dateDebutPlanifiee?: string;
    dateFinPlanifiee?: string;
    effortPlanifie?: number;

    typeAssociation?: string;
    emplacementDemandeur?: string;
    demandeurVip: boolean; // Boolean for VIP status
    dateResolution?: string;

    impact: "Faible" | "Moyen" | "Élevé" | "Critique";
    urgence: "Faible" | "Moyenne" | "Élevée" | "Critique";

    categorie?: string;
    sousCategorie?: string;
    element?: string;

    beneficiaire?: string; // If different from demandeur
    telephone?: string;
    categorisationClient?: string;
    beneficiaireIncident?: string;

    majorIncidentType?: string;
    impactedLocations?: string;
    noOfCustomersImpacted?: number;

    composants?: string;
    servicesConcernes?: string;
}
