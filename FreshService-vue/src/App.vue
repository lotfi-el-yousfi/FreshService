<template>
  <v-card>
    <v-layout>
      <v-app-bar color="primary">
        <v-app-bar-nav-icon variant="text" @click.stop="drawer = !drawer"></v-app-bar-nav-icon>

        <v-toolbar-title>Fresh Service</v-toolbar-title>

        <v-spacer></v-spacer>

        <template v-if="$vuetify.display.mdAndUp">
          <v-btn icon="mdi-plus" variant="text" @click="goNewTicket"></v-btn>
          <v-btn icon="mdi-magnify" variant="text"></v-btn>
          <v-btn icon="mdi-help" variant="text">
            <v-badge color="red" content="2"></v-badge>
          </v-btn>
          <v-btn icon="mdi-bell" variant="text">
            <v-badge color="red" content="99+"></v-badge>
          </v-btn>

        </template>

        <v-btn icon="mdi-dots-vertical" variant="text"></v-btn>
      </v-app-bar>

      <v-navigation-drawer
          v-model="drawer"
          location="left"
          temporary
      >
        <v-list density="compact">
          <v-list-subheader>REPORTS</v-list-subheader>

          <v-list-item
              @click="$router.push(item.link)"
              v-for="(item, i) in items"
              :key="i"
              :value="item"
              color="primary"
          >
            <template v-slot:prepend>
              <v-icon :icon="item.icon"></v-icon>
            </template>

            <v-list-item-title v-text="item.text"></v-list-item-title>
          </v-list-item>
        </v-list>
      </v-navigation-drawer>

      <v-main style="height: 2000%;">
        <router-view style="margin:30px"></router-view>
      </v-main>
    </v-layout>
  </v-card>
</template>
<script setup>
import {ref, watch} from 'vue'
import $router from "./router";

const items = [
  {text: 'ticket list', link: "/list-ticket", icon: 'mdi-clock'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
  {text: 'comming soon', link: "/", icon: 'mdi-stop'},
]
const drawer = ref(false)
const group = ref(null)
const goNewTicket = () => {
  $router.push('/newTicket')
}
watch(group, () => {
  drawer.value = false
})
</script>