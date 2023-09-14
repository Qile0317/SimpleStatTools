# the return type should be a dataframe

parametric_result_skeleton <- function() {
    data.frame("test", "result", "is_sig")
}

# test result is_sig
# ANOVA
# Shapiro
# levene
# tukey
# FDR

is_parametric <- function(df, verbose = TRUE) {
    anova_res <- aov(df[, 2] ~ df[, 1])
    levenes_res <- leveneTest(df[, 2] ~ df[, 1])
    #sw_res <- 
}

parametric_workflow <- function(df) {

}

nonparametric_workflow <- function(df) {

}

do_stat_analysis <- function(df, group_col = 1) {

}