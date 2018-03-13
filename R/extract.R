#' extract_d_matrix
#'
#' Load the dihedral D5 matrix into memory. One of the matrices used in
#' check digit calculation
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' extract_d_matrix()

extract_d_matrix <- function(){
  d5_matrix
}


#' extract_f_matrix
#'
#' Load the F matrix into memory. One of the matrices used in
#' check digit calculation
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' extract_f_matrix()

extract_f_matrix <- function(){
  f_matrix
}


#' extract_inv_vector
#'
#' Load the INV matrix into memory. One of the matrices used in
#' check digit calculation
#'
#' @return A dataframe
#' @export
#'
#' @examples
#' extract_inv_matrix()

extract_inv_matrix <- function(){
  inv_vector
}


#' load_matrices
#'
#' Add all matrices for verhoeff calculation into memory
#'
#' @return Three dataframes
#' @export
#'
#' @examples
#' load_matrices()

load_matrices <- function(){
  d5_matrix
  f_matrix
  inv_vector
}
