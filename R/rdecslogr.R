#' ECS日志更新
#'
#' @return 更新结果
#' @export
#'
#' @examples ecslog()
ecslog <- function() {
  #注册python模板
  mdl <- tsda::import('pyecslog.update_FMessage')
  #调用python函数，将.替代为$
  noa <- mdl$NOAccount()
  res <- noa$update_FMessage()
  #返回结果
  return('同步成功')
}
