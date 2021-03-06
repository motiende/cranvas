library(cranvas)

## BRFSS data
data(brfss)

qbrfss <- qdata(brfss)
qmval(names(brfss)[40:50], data = qbrfss)
qmval(51:68, data = qbrfss)
qmval(~poorhlth+fruit+greensal, data = qbrfss)

qparallel(100:110, data = qbrfss)

## TAO data
data(tao, package = 'tourr')

qtao <- qdata(tao, data = qtao)
qmval(~., data = qtao)
qmval(~., data = qtao, horizontal = FALSE, standardize = FALSE, main = 'horizontal plot with counts')
qscatter(longitude, latitude, data = qtao)
