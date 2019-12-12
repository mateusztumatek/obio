import request from '../utilies/Request'

export function getFonts(params) {
    return request({
        url: base_url+'/fontss',
        method: 'get',
        params: params
    })
}

