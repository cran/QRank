\name{QRank-package}
\alias{QRank-package}
\docType{package}
\title{
A Novel Quantile Regression Tool for eQTL discovery
}
\description{
A Quantile Rank-score (QRank) based test for the identification of expression quantitative trait loci (eQTLs). 
}
\details{
We use a Quantile Rank-score (QRank) based test to identify the expression quantitative trait loci (eQTLs) that are associated with the conditional quantile function of gene expressions. 
}
\author{

\packageAuthor{QRank}

Maintainer: \packageMaintainer{QRank}
}
\references{
Xiaoyu Song, Gen Li, Zhenwei Zhou, Xianling Wang, Iuliana Ionita-Laza and Ying Wei (2016). QRank: A Novel Quantile Regression Tool for eQTL Discovery. \emph{Under revision for Bioinformatics.} 
}

\keyword{ package }

\examples{
set.seed(123)                                                                        #
n=300                                                                                #
x=rbinom(n, 2, 0.2)                                                                  #
y=rnorm(n, mean=0, sd=1)                                                             #
z=cbind(rbinom(n, 1, 0.3), rnorm(n, mean=2, sd=2))                                   # 
taus=c( 0.25, 0.5, 0.75)                                                             # 

# - run the proposed QRank approach                                                  #
QRank(gene=y, snp=x, cov=z, tau=taus)                                                #

# - output                                                                           #
#Composite.pvalue:                                                                   #
#[1] 0.2241873                                                                       #

#Quantile.specific.pvalue:                                                           #
#    0.25       0.5      0.75                                                        #
#0.5452044 0.1821452 0.5938421                                                       #
}


