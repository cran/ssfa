print.summary.ssfa <- function(x, ...)
  {
  if(x$rho==0)
  {
  cat("Stochastic frontier analysis model\n")
  cat("\n")
  printCoefmat(x$coef.table, digits = 6, signif.stars = getOption("show.signif.stars"), 
               na.print = "NA")
  cat("\n")
  cat(paste("sigma2 =", round(x$sigma2t, digits=6)))
  cat("\n")
  cat("\n")
  cat(paste("Inefficiency parameter Lambda (sigmau/sigmav):", round(x$lambda, digits=6)))
  cat("\n")
  cat("\n")
  cat(paste("Moran I statistic:", round(x$moran_test$estimate[1], digits=6)))
  cat("\n")
  cat("\n")
  cat(paste("Mean efficiency:", round(x$mean.eff, digits=6)))
  cat("\n")
  cat("\n")
  cat("LR-test: sigmau2 = 0 (inefficiency has no influence to the model)")
  cat("\n")
  cat("H0: sigmau2 = 0 (beta_ssfa = beta_ols)")
  cat("\n")
  cat("\n")
  print(x$test.table)
  cat("\n")
  cat(paste("Value LR-Test:", x$LR))
  cat(paste(" p-value", round(x$pvalue_eff, digits = 3)))
  cat("\n")
  cat("\n")
  cat("AIC: ", round(x$AIC_ssfa, digits=5), ", (AIC for lm: ", 
      round(x$AIC_ols, digits=5), ")\n", sep = "")
  }
  
  if(x$rho!=0)
  {
    cat("Spatial Stochastic frontier analysis model\n")
    cat("\n")
    printCoefmat(x$coef.table, digits = 6, signif.stars = getOption("show.signif.stars"), 
                 na.print = "NA")
    cat("\n")
    cat("Pay attention:")
    cat("\n")
    cat(paste("1 - classical SFA sigmau2 = sigmau2_dmu + sigmau2_sar:", round(x$sigmau2, digits=6), "where sigmau2_sar:", round(x$sigmau2_sar, digits=6)))          
    cat("\n")
    cat(paste("2 - sigma2 = sigmau2_dmu + sigmau2_sar + sigmav2:", round(x$sigma2t, digits=6)))
    cat("\n")
    cat("\n")
    cat(paste("Inefficiency parameter Lambda = sigmau_dmu/sigmav:", round(x$lambda, digits=6)))
    cat("\n")
    cat("\n")
    cat(paste("Spatial parameter Rho:", x$rho))
    cat("\n")
    cat("\n")
    cat(paste("Moran I statistic:", round(x$moran_test$estimate[1], digits=6)))
    cat("\n")
    cat("\n")
    cat(paste("Mean efficiency:", round(x$mean.eff, digits=6)))
    cat("\n")
    cat("\n")
    cat("LR-test: sigmau2_dmu = 0 (inefficiency has no influence to the model)")
    cat("\n")
    cat("H0: sigmau2_dmu = 0 (beta_ssfa = beta_ols)")
    cat("\n")
    cat("\n")
    print(x$test.table)
    cat("\n")
    cat(paste("Value LR-Test:", x$LR))
    cat(paste(" p-value", round(x$pvalue_eff, digits = 3)))
    cat("\n")
    cat("\n")
    cat("AIC: ", round(x$AIC_ssfa, digits=5), ", (AIC for lm: ", 
        round(x$AIC_ols, digits=5), ")\n", sep = "")
  }
}