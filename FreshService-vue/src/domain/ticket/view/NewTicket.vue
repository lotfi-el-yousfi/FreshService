<script setup>
import {ref} from 'vue'

const form = ref(null);

const ticket = ref({});

const priorities = ['Low', 'Medium', 'High', 'Critical'];
const statuses = ['New', 'In Progress', 'Resolved', 'Closed'];

const rules = {
  required: value => !!value || 'This field is required',
};

const submitForm = async () => {
  const {valid} = await form.value.validate();

  if (valid) {
    console.log('Form submitted:', ticket.value);
    // Perform API call or further actions
  }
};
</script>
<template>
  <v-sheet class="mx-auto" width="600">
    <h2>
      Add a new ticket
    </h2>
    <v-form ref="form">
      <!-- Title -->


      <v-text-field v-model="objet" label="objet"></v-text-field>
      <v-text-field v-model="demandeur" label="demandeur"></v-text-field>
      <v-select v-model="etat" label="etat" :items="['Ouvert', 'En cours', 'Résolu', 'Fermé', 'En attente']"></v-select>
      <v-select v-model="statut" label="statut" :items="['Nouveau', 'En cours', 'Résolu', 'Fermé']"></v-select>
      <v-select v-model="priorite" label="priorite" :items="['Basse', 'Moyenne', 'Haute', 'Critique']"></v-select>
      <v-text-field v-model="assigneA" label="assigneA  because it may be null"></v-text-field>
      <v-text-field v-model="detailsStatut" label="detailsStatut"></v-text-field>
      <v-text-field v-model="departement" label="departement"></v-text-field>
      <v-text-field v-model="source" label="source"></v-text-field>

      <v-text-field v-model="dateCreation" label="dateCreation"></v-text-field>
      <v-text-field v-model="dateDerniereModification" label="dateDerniereModification"></v-text-field>
      <v-text-field v-model="echeance" label="echeance"></v-text-field>
      <v-text-field v-model="dateFermeture" label="dateFermeture"></v-text-field>
      <v-select v-model="statutApprobation" label="statutApprobation"
                :items="['Approuvé', 'En attente', 'Rejeté']"></v-select>

      <v-text-field v-model="dateDebutPlanifiee" label="dateDebutPlanifiee"></v-text-field>
      <v-text-field v-model="dateFinPlanifiee" label="dateFinPlanifiee"></v-text-field>
      <v-text-field v-model="effortPlanifie" label="effortPlanifie"></v-text-field>

      <v-text-field v-model="typeAssociation" label="typeAssociation"></v-text-field>
      <v-text-field v-model="emplacementDemandeur" label="emplacementDemandeur"></v-text-field>
      <v-checkbox v-model="demandeurVip" label="demandeurVip  for VIP status"></v-checkbox>
      <v-text-field v-model="dateResolution" label="dateResolution"></v-text-field>

      <v-select v-model="impact" label="impact" :items="['Faible', 'Moyen', 'Élevé', 'Critique']"></v-select>
      <v-select v-model="urgence" label="urgence" :items="['Faible', 'Moyenne', 'Élevée', 'Critique']"></v-select>

      <v-text-field v-model="categorie" label="categorie"></v-text-field>
      <v-text-field v-model="sousCategorie" label="sousCategorie"></v-text-field>
      <v-text-field v-model="element" label="element"></v-text-field>

      <v-checkbox v-model="beneficiaire" label="beneficiaire  If different from demandeur"></v-checkbox>
      <v-text-field v-model="telephone" label="telephone"></v-text-field>
      <v-text-field v-model="categorisationClient" label="categorisationClient"></v-text-field>
      <v-text-field v-model="beneficiaireIncident" label="beneficiaireIncident"></v-text-field>

      <v-text-field v-model="majorIncidentType" label="majorIncidentType"></v-text-field>
      <v-text-field v-model="impactedLocations" label="impactedLocations"></v-text-field>
      <v-text-field v-model="noOfCustomersImpacted" label="noOfCustomersImpacted"></v-text-field>

      <v-text-field v-model="composants" label="composants"></v-text-field>
      <v-text-field v-model="servicesConcernes" label="servicesConcernes"></v-text-field>

      <!-- Submit Button -->
      <v-btn color="primary" block class="mt-3" @click="submitForm">
        Submit Ticket
      </v-btn>
    </v-form>
  </v-sheet>
</template>

<style scoped>

</style>