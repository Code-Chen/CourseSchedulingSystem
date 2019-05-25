import axios from 'axios';
import qs from 'qs';

const $axios = axios.create({
    baseURL:'http://localhost:8080',
    responseType:'json',
    timeout:10000,
    headers:{
        'Content-Type':'application/json;charset=utf-8'
    }
});
let http = {
    get: '',
    post: '',
};

http.post = function (api, data) {
    return new Promise((resolve, reject) => {
        $axios.post(api, data).then((res) => res.data).catch((error) => {
            reject(error)
        });
    })
};

export default http;