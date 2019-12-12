import request from '../utilies/Request'

export function storeOrder(data) {
    return request({
        url: base_url+'/orders',
        method: 'post',
        data: data
    })
}
export function getOrder(hash) {
    return request({
        url: base_url+'/orders/'+hash,
        method: 'GET',
    })
}

