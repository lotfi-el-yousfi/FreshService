<script setup>
import {ref} from 'vue'
import router from "../../../router.js";

const userName = ref('username')
const userNameRules = [
  value => {
    if (value?.length >= 5) return true
    return 'user name must be at least 3 characters.'
  },
]

const passWord = ref('password')
const passWordRules = [
  value => {
    if (/[^0-9]/.test(value)) return true
    return 'password can not contain digits.'
  },
]

const login = () => {
  console.log(userName.value)
  console.log(passWord.value)
  router.push('/')
}
</script>
<template>
  <v-sheet class="mx-auto" width="300">
    <v-form fast-fail @submit.prevent="login()">
      <v-text-field
          v-model="userName"
          :rules="userNameRules"
          label="user name"
      ></v-text-field>

      <v-text-field
          v-model="passWord"
          :rules="passWordRules"
          label="password"
          type="password"
      ></v-text-field>

      <v-btn class="mt-2" type="submit"
             color="success"
             block>login
      </v-btn>
    </v-form>
  </v-sheet>
</template>

<style scoped>

</style>