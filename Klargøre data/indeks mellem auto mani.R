---
  title: "Autoritære prædispositioner indeks"
author: "Eva Tryde"
date: "1/5/2021"
output:
  html_document: default
pdf_document: default
---

indeks <- samlet_ess%>%
  filter(!is.na(mnrgtjb) & !is.na(freehms))%>%
  dplyr::select(id, freehms, mnrgtjb)
indeks <- mutate_at(indeks, .vars=c("mnrgtjb"), flip)

cor(indeks$freehms, indeks$mnrgtjb, method = c("pearson"), use = "complete.obs")
alpha.indeks <- alpha(indeks[,2:3])