export default {
  identify(params) {
    return request({
      url: `/baidu`,
      method: 'get',
      params: params //params
    })
  }
}
