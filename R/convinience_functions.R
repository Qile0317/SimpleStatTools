#' Move a column to the front of a dataframe.
#'
#' This function allows you to move a specified column to the front of a
#' dataframe, either by providing the column name as a string or the column index
#' as an integer.
#'
#' @param df A dataframe.
#' @param col_identifier The column name (as a string) or the column index (as an integer)
#'   that you want to move to the front.
#'
#' @return A dataframe with the specified column moved to the front.
#'
#' @examples
#' # Create a sample dataframe
#' df <- data.frame(
#'   A = c(1, 2, 3),
#'   B = c(4, 5, 6),
#'   C = c(7, 8, 9)
#' )
#'
#' # Move column "C" to the front by name
#' df <- move_group_col_front(df, "C")
#'
#' # Move column at index 2 (B) to the front
#' df <- move_group_col_front(df, 2)
#'
#' @export
move_group_col_front <- function(df, col_identifier) {
    if (is.numeric(col_identifier)) {
    if (col_identifier < 1 || col_identifier > ncol(df)) {
      stop("Invalid column index")
    }
    column_name <- names(df)[col_identifier]
  } else if (is.character(col_identifier)) {
    if (!col_identifier %in% names(df)) {
      stop("Column not found in dataframe")
    }
    column_name <- col_identifier
  } else {
    stop("Invalid column identifier")
  }

  # Reorder columns to move the specified column to the first position
  df[, c(column_name, names(df)[-which(names(df) == column_name)])]
}

summarize_group <- function(df, group, group_col_id = 1) {

}
