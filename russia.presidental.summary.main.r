# Reading data
pt <- read.table("presidental.turnouts.1991-2012.20171228.txt", h=TRUE, sep="\t")
pt.chr <- read.table("pres.chr.2000-2012.txt", h=TRUE, sep="\t")

# Checking data.frame dimensions
dim(pt)
# [1]  7 12
dim(pt.chr)
# [1]  4 10

# Checking the column names
colnames(pt)
#  [1] "YEAR"     "VOTERS"   "VALID"    "INVALID"  "TURN.ABS" "TURN.REL"
#  [7] "WIN.ABS"  "WIN.REL"  "WINNER"   "DATE"     "SRC"      "SRC.2"   
colnames(pt.chr)
#  [1] "YEAR"     "VOTERS"   "VALID"    "INVALID"  "TURN.ABS" "TURN.REL"
#  [7] "WIN.ABS"  "WIN.REL"  "WINNER"   "DATE"    

# Adding calculated relative turnout and calculated winner's share
pt$TURN.REL.CALC <- pt$TURN.ABS/pt$VOTERS
pt$WIN.REL.CALC <- pt$WIN.ABS/pt$TURN.ABS

pt.chr$TURN.REL.CALC <- pt.chr$TURN.ABS/pt.chr$VOTERS
pt.chr$WIN.REL.CALC <- pt.chr$WIN.ABS/pt.chr$TURN.ABS

# Redraw figures (Russian)
source("russia.presidental.summary.plot.ru.r")
