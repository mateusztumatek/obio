import request from '../utilies/Request'

export function Login(data) {
    return request({
        url: base_url+'/login',
        method: 'post',
        data: data
    })
}
export function Register(data) {
    return request({
        url: base_url+'/register',
        method: 'post',
        data: data
    })
}

export function Logout(data) {
    return request({
        url: base_url+'/logout',
        method: 'post',
    })
}
export function UpdateUser(data, id) {
    return request({
        url: base_url+'/user/'+id,
        method: 'put',
        data: data
    })
}

export function getUserOrders(params) {
    return request({
        url: base_url+'/user/orders',
        method: 'get',
        params: params
    })
}
