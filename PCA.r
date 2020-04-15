universities<-read.csv("C:/Users/sonih/Downloads/Universities.csv")

pca<-princomp(universities[,2:7], cor = TRUE,scores = TRUE, covmat = NULL)
#cor = corelation
#covmat = co-veriance matrix
summary(pca)
pca$scores
new_data<-pca$scores[,1:4]
#pca$loadings

plot(pca$scores[,1:2],col="Blue",cex = 0.2)
text(pca$scores[,1:2], labels=c(1:25), cex= .7)