package com.freshservice.backend.ticket.dto;

import com.freshservice.backend.ticket.entity.Ticket;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
public class TicketDTO {
    private Long id;
    private String objet;
    private Long demandeurId;
    private Long assigneAId;
    private Long groupeId;
    private Ticket.Etat etat;
    private Ticket.Statut statut;
    private Ticket.Priorite priorite;
    private String detailsStatut;
    private String departement;
    private String source;
    private LocalDateTime dateCreation;
    private LocalDateTime dateDerniereModification;
    private LocalDateTime echeance;
    private LocalDateTime dateFermeture;
    private Ticket.StatutApprobation statutApprobation;
    private LocalDateTime dateDebutPlanifiee;
    private LocalDateTime dateFinPlanifiee;
    private Integer effortPlanifie;
    private String typeAssociation;
    private Boolean demandeurVip;
    private Ticket.Impact impact;
    private Ticket.Urgence urgence;
    private String categorie;
    private String sousCategorie;
    private String telephone;
    private String majorIncidentType;
    private Integer noOfCustomersImpacted;
}
