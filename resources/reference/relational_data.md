

### Relational data: Thinking in Multiple Tables!

You've seen how hard it is to organize everything - this is in part because of how the data is related to each other.

Because of the relations between tables, they are often organized in a database - such as SQL. dplyr join commands allow us to do a lot of SQL-like functionality in order to have this happen.

To understand this, we need to understand the idea of a **key**. This is what connects tables. 
Each table should have a **primary key**, the variable or variables that uniquely identify an observation, and **foreign keys** that help map between tables. This is what you will be joining on! 

A couple things - we can de-duplicate using primary keys. We should also make sure that a table has some type of primary key.