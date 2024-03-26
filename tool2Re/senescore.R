predict.senescore <- function(exp, modelPath='model.rda') {
load(modelPath)
common <- intersect(names(model.RNA$w), rownames(exp))
X <- exp[common, ]
w <- model.RNA$w[common]
score <- apply(X, 2, function(z) {cor(z, w, method='sp', use='complete.obs')})
score <- score - min(score)
score <- score / max(score)
}