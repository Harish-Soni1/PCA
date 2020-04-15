library(jpeg)
library(imager)
library(pixmap)

img <- readJPEG("D:/tony/IMG_20181104_135753.jpg")

ncol(img)
nrow(img)

r <- img[,,1]
g <- img[,,2]
b <- img[,,3]

img.r.pca <- prcomp(r, center = FALSE)
img.g.pca <- prcomp(g, center = FALSE)
img.b.pca <- prcomp(b, center = FALSE)

rgb.pca <- list(img.r.pca, img.g.pca, img.b.pca)
pca.img <- sapply(rgb.pca, function(j) {  compressed.img <- j$x[,1:10] %*% t(j$rotation[,1:10])}, simplify = 'array')
a<-pixmap::pixmapRGB(pca.img)
windows();plot(a)
