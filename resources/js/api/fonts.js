import request from '../utilies/Request'

export function getFonts(params) {
    return request({
        url: base_url+'/fonts',
        method: 'get',
        params: params
    })
}

