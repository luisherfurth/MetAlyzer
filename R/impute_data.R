#' Zero imputation
#'
#' This function performs zero imputation with the minimal positive value times
#' perc_of_min.
#'
#' @param vec A numeric vector containing the concentration values
#' @param perc_of_min A numeric value below 1
#' @param impute_NA Logical value whether to impute NA values
#'
#' @keywords internal
zero_imputation <- function(vec, perc_of_min, impute_NA) {
  non_zero <- vec[vec > 0 & !is.na(vec)]
  imp_v <- ifelse(length(non_zero) > 0, min(non_zero) * perc_of_min, NA)
  vec[vec == 0] <- imp_v
  if (impute_NA) {
    vec[is.na(vec)] <- imp_v
  }
  return(vec)
}

#' @title Impute aggregated data
#'
#' @description This function imputes zero concentration values
#' with a percentage of the minimal positive value. If all values
#' are zero or NA, they are set to NA. The imputed values are added
#' to plotting_data in an extra column imputed_Conc.
#'
#' @param aggregated_data aggregated_data tibble data frame
#' @param perc_of_min A numeric value between 0 and 1. Percentage
#' of the minimal positive value, that is taken for imputation
#' @param impute_NA Logical value whether to impute NA values
#' @return An updated aggregated_data tibble data frame
#' @export
impute_data <- function(
    aggregated_data,
    perc_of_min = 0.2,
    impute_NA = FALSE
  ) {
  cat("Impute concentrations (groupwise: Metabolite) with",
      paste0(round(perc_of_min * 100), "%"),
      "of the minimal positive value...  ")

  grouping_vars <- as.character(groups(aggregated_data))
  aggregated_data <- aggregated_data %>%
    group_by(Metabolite) %>%
    mutate(imputed_Conc = zero_imputation(
      Concentration, perc_of_min, impute_NA),
           .after = Concentration) %>%
    group_by_at(grouping_vars)

  cat("finished!\n")
  return(aggregated_data)
}
