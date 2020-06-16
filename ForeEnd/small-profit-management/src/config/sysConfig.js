//时间格式化
export const TIME_FORMAT='YYYY-MM-DD HH:mm:ss'
//分页相关参数
export const PAGINATION={
  defaultCurrent:1,
  defaultPageSize:6,
  pageSizeOptions:['6', '10', '15', '30'],
  showTotal:(total)=>{
    return `共 ${total} 条 `
  },
  //是否展示 pageSize 切换器
  showSizeChanger:true,
  //是否可以快速跳转至某页
  showQuickJumper:true,
}
