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
        <v-list disabled>
          <v-list-subheader>REPORTS</v-list-subheader>

          <v-list-item
              v-for="(item, i) in items"
              :key="i"
          >
            <template v-slot:prepend>
              <v-btn
              >

                <v-icon @click="$router.push(item.link)"
                        :icon="item.icon"></v-icon>
              </v-btn>
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
  {text: 'Real-Time', link: "/", icon: 'mdi-clock'},
  {text: 'Audience', link: "/", icon: 'mdi-account'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
  {text: 'Conversions', link: "/", icon: 'mdi-flag'},
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