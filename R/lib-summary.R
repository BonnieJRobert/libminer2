#' R Library Summary
#'
#' Provides a brief summary of the package libraries on your machine
#'
#' @return A data.frame containing the count of packages in each of your libraries
#' @param sizes a boolean value indicating whether to report the total filesize
#' @export
#'
#' @examples
#' lib_summary()
lib_summary <- function(sizes = FALSE){
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[,"LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("library", "n_packages")

  if (sizes) {
    pkg_df$lib_size <- map_dbl(
      pkg_df$library,
      ~ sum(fs::file_size(fs::dir_ls(.x, recurse =TRUE)))
    )
  }

  pkg_df
}
