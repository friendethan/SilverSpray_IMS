#written by Nathan Heath Patterson (https://github.com/NHPatterson)
#only works for Cardinal 1.2 in R 3.4.4

sampleROIs<-function(cardinaldata, XMLdata="myxml.xml",width=3){
  
  require(XML)
  
  XMLspots<-xmlToList(XMLdata)
  
  spots <-lapply(XMLspots[which(names(XMLspots) == "Class")],function(x){
    spots <- list()
    for(i in 1:(length(x == "Element") -1)){
      spots[[i]] <- x[[i]][["Spot"]]
    }
    spots <-unlist(spots)
    spots <-substr(spots,6,100)
    return(spots)})
  names(spots) <- NULL
  sampnames <- sapply(XMLspots[which(names(XMLspots) == "Class")],function(x)x$.attrs[["Name"]])
  
  
  cardinaldatas <- lapply(spots,function(x){
    cardinaldataf <- cardinaldata[,paste0("X",formatC(coord(cardinaldata)[,1], width = width, format = "d", flag = "0"),"Y",formatC(coord(cardinaldata)[,2], width = width, format = "d", flag = "0")) %in% x]
    return(cardinaldataf)
  })
  
  
  for(i in 1:length(cardinaldatas)){
    levels(cardinaldatas[[i]]$sample) <- sampnames[i]
    protocolData(cardinaldatas[[i]]) <- AnnotatedDataFrame(data=data.frame(row.names=sampleNames(cardinaldatas[[i]])))
    cardinaldatas[[i]] <- regeneratePositions(cardinaldatas[[i]])
    print(validObject(cardinaldatas[[i]]))
  }
  
  cardinaldata<-do.call(Cardinal::combine,cardinaldatas)
  return(cardinaldata)}
