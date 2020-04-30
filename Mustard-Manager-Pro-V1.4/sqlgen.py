import random
import pyperclip

def createjobs():
    titlelist = ['Software Developer','Consulting Advisor','Secretary','Relations Associate','Accountant','Statistics Analyst','Risk Managment Professional','Network Technician','Database Admin','Advertising Consultant']
    sqlstart = '''
    INSERT INTO public."Jobs"(
	"JOB_ID", "JOB_NAME", "JOB_RANK", "SALARY_RANGE_BOTTOM", "SALARY_RANGE_TOP")
	VALUES
    '''
    sqlstart = sqlstart + ' (\'1\',\'CEO\',NULL,45000000,45000000),'
    sqlstart = sqlstart + ' (\'2\',\'Director\',NULL,5000000,5000000),'
    sqlstart = sqlstart + ' (\'3\',\'Executive Supervisor\',NULL,250000,250000),'
    sqlstart = sqlstart + ' (\'4\',\'Manager\',NULL,100000,100000),'
    sqlstart = sqlstart + ' (\'5\',\'Project Manager\',NULL,700000,90000),'
    for i in range(0,len(titlelist)):
        for j in range(5):
            sqlstart = sqlstart + ' (\''+str((5*(i+1))+j+1)+'\',\''+titlelist[i]+'\','+str(j+1)+','+str(50000+(9000*j))+','+str(59000+(9000*j))+'),'
    output = sqlstart[:len(sqlstart)-1] + ';'
    print(output)
    pyperclip.copy(output)

def createEmp2600(): #This function creates a query for 2600 employees

    #This string is the into part of the query
    sqlstart = '''
    INSERT INTO public."Employee"(
	"EMPLOYEE_ID", "EMPLOYEE_FIRST_NAME", "EMPLOYEE_LAST_NAME", "EMPLOYEE_MIDDLE_INITIAL", "JOB_ID", "DEPARTMENT_ID", "REVIEW_PERIOD_START", "REVIEW_PERIOD_END","CURRENT_RATING_ID", "CURRENT_SALARY")
	VALUES 
    '''

    #This line is hardcoded to add the CEO
    sqlstart = sqlstart + '('+str(100001)+',\'Dick\',\'Richardson\',\'M\',1,NULL,NULL,NULL,NULL,NULL),'
    
    #This for loop creates all of the directors
    for i in range(8):
        fn,ln,mi=rollName()
        sqlstart = sqlstart + '('+str(100001+i+1)+',\''+fn+'\',\''+ln+'\',\''+mi+'\',2,NULL,NULL,NULL,NULL,NULL),'
    #This for loop creates all of the executive supervisors
    for i in range(128):
        fn,ln,mi=rollName()
        sqlstart = sqlstart + '('+str(100009+i+1)+',\''+fn+'\',\''+ln+'\',\''+mi+'\',3,NULL,NULL,NULL,NULL,NULL),'
    #This for loop creates all of the managers
    for i in range(256):
        fn,ln,mi=rollName()
        sqlstart = sqlstart + '('+str(100137+i+1)+',\''+fn+'\',\''+ln+'\',\''+mi+'\',4,NULL,NULL,NULL,NULL,NULL),'
    #This for loop creates all of the project managers
    for i in range(264):
        fn,ln,mi=rollName()
        sqlstart = sqlstart + '('+str(100393+i+1)+',\''+fn+'\',\''+ln+'\',\''+mi+'\',5,NULL,NULL,NULL,NULL,NULL),'
    #This for loop creates all of the other staff
    for i in range(1943):
        fn,ln,mi=rollName()
        sqlstart = sqlstart + '('+str(100657+i+1)+',\''+fn+'\',\''+ln+'\',\''+mi+'\','+str(random.randint(6,55))+',NULL,NULL,NULL,NULL,NULL),'
    output = sqlstart[:len(sqlstart)-1] + ';' #This line cuts off the last comma and adds a semi-colon to compleate the query.
    print(output) 
    pyperclip.copy(output)

def rollName():
    firstnames=['James','John', 'Jimmy', 'Clyde', 'Ivanis', 'Denise', 'Tram', 'Mariya' , 'Ashish', 'Ashish', 'Cal', 'Tariq', 'Paulo','Vorkath','Illidian','Nex','Ian', 'Crab', 'Bernard', 'Shayna', 'Kenny', 'Brian', 'Samir', 'Chebbine'
    'Robert','Michael','William','Dimitri','David','Richard','Joseph','Tomas','Thomas','Charles','Christopher','Kirby','Daniel','Matthew','Anthony','Donald','Mark','Paul','Steven','Andrew','Kenneth','Joshua','George','Kevin','Brian','Edward','Mary','Patricia','Jennifer','Linda','Elizabeth','Barbara','Susan','Jessica','Sarah','Karen','Nancy','Margaret','Lisa','Betty','Dorothy','Sandra','Ashley','Kimberly','Donna','Emily','Michelle','Carol','Amanda','Melissa','Deborah']
    lastnames=['Johnson','James','Olson','Jackson','Dominguez','Smith','Williams','Anderson','Brown','Jones','Miller','Blue','Davis','Zezima','Parker','Storm Rage','Ronaldo','Ashihama','Zulrah','Venenatis','Callisto','Loredo','S','Zaros','Carlson','Chebbine','Samir','People','Melonis','Xia','Julius','Dell','Wilson','Li','Jensen','Ivonkov','Yilmaz','Garcia','Murphy','Hansen','Borg','Papadopoulous','Stojanovski','Melnik','Tamm','Tamn','Veltsos','Krasniqi','Silva']
    letters=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',]
    fn = firstnames[random.randint(0,len(firstnames))-1]
    ln = lastnames[random.randint(0,len(lastnames))-1]
    mi = letters[random.randint(0,len(letters))-1]
    return fn,ln,mi

createEmp2600()