library('stochvol')
log_returns <- read.csv("C:/Users/Sing/Desktop/study/study/ELEC/ELEC3180/project/aapl_log_rt.csv", header=TRUE)
roll <- svsample_roll(log_returns$Log.Return,n_ahead=1,forecast_length=417,refit_window="moving",refit_every=1,keep_draws=TRUE)
pred=c()
for (x in 1:length(roll)) {
    pred = append(pred,roll[[x]][["prediction"]][["vol"]][[1]][1])
}
write.csv(pred,file="C:/Users/Sing/Desktop/study/study/ELEC/ELEC3180/project/sv_prediction.csv",row.names=F)
