// src/router.ts
import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router'
import Login from "./domain/authentication/view/Login.vue";
import Ticket from "./domain/ticket/view/TicketList.vue";
import NewTicket from "./domain/ticket/view/NewTicket.vue";


const routes: Array<RouteRecordRaw> = [
    { path: '/login', component: Login },
    { path: '/list-ticket', component: Ticket },
    { path: '/newticket', component: NewTicket },

]

const router = createRouter({
    history: createWebHistory(),
    routes
})

export default router
