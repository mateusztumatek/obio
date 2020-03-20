import request from '../utilies/Request'

export function getRates(model, id) {
    return request({
        url: base_url+'/rates',
        method: 'get',
        params: {model: model, foreign_key: id}
    })
}
export function storeRate(data) {
    return request({
        url: base_url+'/rates',
        method: 'post',
        data: data
    })
}
export function deleteRate(id) {
    return request({
        url: base_url+'/rates/'+id,
        method: 'delete',
    })
}
