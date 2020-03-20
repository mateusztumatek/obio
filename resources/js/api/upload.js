import request from '../utilies/Request'
import Vue from 'vue';
export function Upload(data, path) {
    Vue.prototype.$eventBus.$emit('startUploading');
    return request({
        url: base_url+'/upload/'+path,
        method: 'post',
        data: data
    })
}

export function getUploadFiles(data) {
    return request({
        url: base_url+'/admin/media/files',
        method: 'post',
        data: data
    })
}
