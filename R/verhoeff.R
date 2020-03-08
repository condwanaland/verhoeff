#' verhoeff_calculate
#'
#' @param number The vector of numbers you want a check digit for
#' @param as_list Return the results as a list? Defaults to false
#'
#' @return
#' @export
#'
#' @examples
#' verhoeff_calculate(1234)
verhoeff_calculate <- function(number, as_list = FALSE){

  v_matrices <- create_verhoeff_matrices()


  check_digit <- lapply(number,
                       calculate_digit,
                       d5 = v_matrices$d5,
                       d5_p = v_matrices$d5_p,
                       inv_v = v_matrices$inv_v)

  if (!as_list){
    check_digit <- unlist(check_digit)
  }

  return(check_digit)
}


# verhoeff_validate <-

#verhoeff_calculate(c(1234, 4321, 7635, 783435), as_list = F)
