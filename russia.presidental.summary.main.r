# Reading data
pt <- read.table("presidental.turnouts.1991-2012.20171228.txt", h=TRUE, sep="\t")

# Checking data.frame dimensions
dim(pt)
# [1]  7 12

# Checking the column names
colnames(pt)
#  [1] "YEAR"     "VOTERS"   "VALID"    "INVALID"  "TURN.ABS" "TURN.REL"
#  [7] "WIN.ABS"  "WIN.REL"  "WINNER"   "DATE"     "SRC"      "SRC.2"   

# Adding calculated relative turnout and calculated winner's share
pt$TURN.REL.CALC <- pt$TURN.ABS/pt$VOTERS
pt$WIN.REL.CALC <- pt$WIN.ABS/pt$TURN.ABS

# Redraw figures (Russian)
source("russia.presidental.summary.plot.ru.r")
