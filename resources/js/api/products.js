import request from '../utilies/Request'

export function getProducts(params) {
    return request({
        url: base_url+'/produkty',
        method: 'get',
        params: params
    })
}

