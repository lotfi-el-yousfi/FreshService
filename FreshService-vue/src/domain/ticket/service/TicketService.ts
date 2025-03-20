import axios from 'axios';
export function GetAllTickets() {

    return axios.get('api/ticket');

}