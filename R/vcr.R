#' Samll internal function to make complex events. Ignore this.
#' @param x charcter to split
#' @param gis Is input from gistic. Logical.
#' @return split string
#' @export

vcr = function(x, gis = FALSE) {
  x = as.character(x)
  x = unique(x)
  xad = x[x %in% c('Amp', 'Del')]
  xvc = x[!x %in% c('Amp', 'Del')]

  if(gis){
    x = ifelse(test = length(xad) > 1, no = xad, yes = 'Complex')
  }else{
    if(length(xvc)>0){
      xvc = ifelse(test = length(xvc) > 1, yes = 'Multi_Hit', no = xvc)
    }
    x = ifelse(test = length(xad) == 1, yes = paste(xvc, xad, sep = ';'), no = xvc)
  }

  return(x)
}
