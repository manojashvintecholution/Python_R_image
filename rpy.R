library(reticulate)
source_python("./main/readcsv.py")

get_file = "./main/input_file/iris"
print(get_file)
iris_data = get_data(get_file)
print(head(iris_data$Species))	