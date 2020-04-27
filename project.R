books <- read.csv("C:/Users/User/Documents/R/tacticaldataprep-master/tacticaldataprep-master/data_input/books_c.csv", stringsAsFactors = FALSE)
head(books)

nrow(books)

ncol(books)

dim(books)

cond1 <-books$X..num_pages <= 5
nrow(books[cond1, ])  ##same as books[cond1, 1:10]

colnames(books)

books$X..num_pages <= 5

sum(as.numeric(books$X..num_pages < 5))
summary(books[,c(4, 8:10)])

cond2 <- books$ratings_count > 0
reviewed <- books[cond2, ]
nrow(reviewed)

nrow(books) - nrow(reviewed)

## Reviewed Book filtering for books with ratings_count = 0
## filter on reviewed books for average rating = 0

cond3 <- reviewed$average_rating == 0
sum(cond3)

nrow(reviewed[cond3, ])
sum(books$X..num_pages <= 5)

table(books$X..num_pages < 5)


hist(books$average_rating, breaks = 30, col="hotpink", main="Average Rating Breakdown")



