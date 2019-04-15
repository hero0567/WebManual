## WebManual
WebManual help user easy find all manual from one place.
WebManual try to use electronic manual to repalce paper manual. 
Electronic manual have lots of advantages 
1. it could save paper to reduce cost
2. it could protect environment
3. it's easy to find and never miss
4. it's easy to collection all manual in one place.


## WorkFlow
1. a crawer running at backend it will collect PDF resource from the whole internet.
2. Save PDF or Link into Mysql database and relative meta data, such as the machine name or model.
3. Springboot will provide authentication. User need create an account and login by this account.
4. initialize category and sub category into Mysql, it will help create menu and sub menu dynamic
5. User could search manual by category, sub category, machine's attribute then faviate or view it.


## Technology stack
1. Springboot, spring security, spring rest, spring jpa
2. angularjs
3. crawlerj
4. Javascript PDF plugin
5. MySQL
6. Maven


## Run locally
1. install mysql
2. import initial data(category, sub catetory, branch)
3. execute Application or mvn springboot:run
