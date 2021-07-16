###############################1###################################
###################################################################
ds<-read.csv("glass_csv.csv")
ds
plot(ds$Na, ds$Ca, xlab = "sodium Concentration", ylab = "calcium Concentration", 
main = "Relation between sodium and calcium ",col = "blue")
###############################2###################################
###################################################################
ds<-read.csv("glass_csv.csv")
ds
hist(ds$Si,xlim = c(71,74),xlab = "Silicon Concentration",
main = "Frequency of Silicon", col = "blue")
#############################3#####################################
###################################################################
ds<-read.csv("glass_csv.csv")
ds
boxplot(ds$Na,main = "sodium in glass",xlab = "Parts Per Billion"
, ylab = "Na Material Concentration",col="blue")
############################4######################################
###################################################################
ds<-read.csv("glass_csv.csv")
ds
aggregateMg<-aggregate(ds$Mg,list(ds$Type),max)
print(aggregateMg)
barplot(aggregateMg$x,names.arg = aggregateMg$Group.1,main="Mg per type"
,col = "blue")
############################5#######################################
####################################################################
ds<-read.csv("glass_csv.csv")
ds
tableType<-table(ds$Type)
view(tableType)
barplot(tableType,col = "blue")
############################6#######################################
####################################################################
ds<-read.csv("glass_csv.csv")
ds
res<-as.data.frame(table(ds$Type))
res$Freq
percent<-round(res$Freq/sum(res$Freq)*100,1)
percent
labs<-res$Var1
labs<-paste(labs,percent)
labs<-paste(labs,"%",sep = "")
pie(res$Freq,labels = labs,col = rainbow(length(labs)))
##########################7#########################################
####################################################################
ds<-read.csv("glass_csv.csv")
ds
par(mfcol = c(1,2))
plot(density(ds$Al),main = "Ai Material Destribution")
plot(density(ds$Ba),main = "Ba Material Destribution")
#######################8############################################
####################################################################
ds<-read.csv("glass_csv.csv")
ds
numericValToType=as.factor((ds$Type))
dotchart(ds$Mg,groups = numericValToType,
labels=row.names(ds),cex= 0.5,col="blue"
,xlab ="Ba Concentration",main ="Ba Concentration per each Glass Type")
#######################9#############################################
#####################################################################
#first
ds<-read.csv("glass_csv.csv")
ds
color<-c("Black","yellow","blue","Brown")
Vectors<-ds[-c(4,5,6,7,8,10)]
pairs(Vectors,col=color,pch=16)
#Second
ds<-read.csv("glass_csv.csv")
ds
color<-c("Black","yellow","blue","Brown")
Vectors<-ds[-c(4,5,6,7,8,10)]
pairs(Vectors,col=color,pch=16,oma=c(4,3,3,2))
legend(0.9,0.27,legend =c("RI","Na","Mg","Fe"),pch=16,col = color)
######################10#############################################
#####################################################################
par(mfrow=c(3,3))
#1
ds<-read.csv("glass_csv.csv")
ds
plot(ds$Na, ds$Ca, xlab = "sodium Concentration", ylab = "calcium Concentration",main = "Relation between sodium and calcium ",col = "blue")
#2
hist(ds$Si,xlim = c(71,74),xlab = "Silicon Concentration",main = "Frequency of Silicon", col = "blue")
#3
boxplot(ds$Na,main = "sodium in glass",xlab = "Parts Per Billion", ylab = "Na Material Concentration",col="blue")
#4
aggregateMg<-aggregate(ds$Mg,list(ds$Type),max)
print(aggregateMg)
barplot(aggregateMg$x,names.arg = aggregateMg$Group.1,main="Mg per type",col = "blue")
#5
tableType<-table(ds$Type)
view(tableType)
barplot(tableType,col = "blue")
#6
res<-as.data.frame(table(ds$Type))
res$Freq
percent<-round(res$Freq/sum(res$Freq)*100,1)
percent
labs<-res$Var1
labs<-paste(labs,percent)
labs<-paste(labs,"%",sep = "")
pie(res$Freq,labels = labs,col = rainbow(length(labs)))
#7
plot(density(ds$Al),main = "Ai Material Destribution")
plot(density(ds$Ba),main = "Ba Material Destribution")
#8
numericValToType=as.factor((ds$Type))
dotchart(ds$Mg,groups = numericValToType,
labels=row.names(ds),cex= 0.5,col="blue",xlab ="Ba Concentration",main ="Ba Concentration per each Glass Type")
