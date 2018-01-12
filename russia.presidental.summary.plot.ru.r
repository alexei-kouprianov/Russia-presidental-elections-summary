
png("russia.pt.1991-2012.abs.official.png", height=500, width=500)
plot(pt$YEAR, pt$VOTERS/1000000, type="l",
ylim=c(0,max(pt$VOTERS/1000000)),
main="Официальные результаты выборов президентов РСФСР/РФ", xlab="Годы", ylab="Избиратели, млн. чел.")
points(pt$YEAR, pt$VOTERS/1000000, pch=20)
points(pt$YEAR, pt$VOTERS/2000000, type="l", lty=2)
points(pt$YEAR, pt$VOTERS/2000000, pch=20)
points(pt$YEAR, pt$TURN.ABS/1000000, type="l", col="blue")
points(pt$YEAR, pt$TURN.ABS/1000000, pch=20, col="blue")
points(pt$YEAR, pt$WIN.ABS/1000000, type="l", col="red")
points(pt$YEAR, pt$WIN.ABS/1000000, pch=20, col="red")
legend("bottomright", lty=c(1,2,1,1), col=c("black","black","blue","red"), legend=c("Внесено в списки для голосования","50% избирателей","Выдано бюллетеней","Голосовало за победителя"), bty="n")
dev.off()

png("russia.pt.1991-2012.rel.official.png", height=500, width=500)
plot(pt$YEAR, pt$TURN.REL.CALC, type="l",
ylim=c(0,1),
col="blue",
main="Официальные результаты выборов президентов РСФСР/РФ", xlab="Годы", ylab="Явка / доля голосовавших")
points(pt$YEAR, pt$TURN.REL.CALC, pch=20, col="blue")
points(pt$YEAR, pt$WIN.REL.CALC, type="l", col="red")
points(pt$YEAR, pt$WIN.REL.CALC, pch=20, col="red")
abline(h=.7, lty=2, col="black")
legend("bottomright", lty=c(2,1,1), col=c("black","blue","red"), legend=c("70% уровень","Явка","Доля голосовавших за победителя"), bty="n")
dev.off()

png("russia.pt.1991-2012.rel.official.vs.chr.png", height=500, width=500)
plot(pt$YEAR, pt$TURN.REL.CALC, type="l",
ylim=c(0,1),
col="blue",
lty=3,
main="Официальные результаты выборов президентов РСФСР/РФ\nсопоставленные с 14 честными регионами", xlab="Годы", ylab="Явка / доля голосовавших")
points(pt$YEAR, pt$TURN.REL.CALC, pch=21, col="blue")
points(pt$YEAR, pt$WIN.REL.CALC, type="l", lty=3, col="red")
points(pt$YEAR, pt$WIN.REL.CALC, pch=21, col="red")
points(pt.chr$YEAR, pt.chr$TURN.REL.CALC, type="l", col="blue")
points(pt.chr$YEAR, pt.chr$TURN.REL.CALC, pch=20, col="blue")
points(pt.chr$YEAR, pt.chr$WIN.REL.CALC, type="l", col="red")
points(pt.chr$YEAR, pt.chr$WIN.REL.CALC, pch=20, col="red")
abline(h=.7, lty=2, col="black")
legend("bottomright", lty=c(2,1,1), col=c("black","blue","red"), legend=c("70% уровень","Явка","Доля голосовавших за победителя"), bty="n")
dev.off()
