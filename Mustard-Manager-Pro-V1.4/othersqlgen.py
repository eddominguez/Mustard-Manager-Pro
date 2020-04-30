import random
import pyperclip
cur_rat_id = 0
depid = 0
finalout = ""
for i in range(100001,102601):
    if i<100521: 
        cur_rat_id = 101
    elif i>100520 and i<100781: 
        cur_rat_id = 102
    elif i>100780 and i<101561: 
        cur_rat_id = 103
    elif i>101560 and i<101821: 
        cur_rat_id = 104
    elif i>101820 and i<101951: 
        cur_rat_id = 105
    elif i>101950 and i<102081: 
        cur_rat_id = 106
    elif i>102080 and i<102341: 
        cur_rat_id= 107
    else: 
        cur_rat_id = 108
    depid = random.randint(1001,1004)
    #s1 = s1 + str1 + str(depid) + str2 + str(cur_rat_id) + str3 + str(i) + str4 + "\n"
    currentIDUpdate = "UPDATE public.\"Employee\" SET \"DEPARTMENT_ID\"="+str(depid)+",\"CURRENT_RATING_ID\"="+str(cur_rat_id)+" WHERE \"EMPLOYEE_ID\"="+str(i)+";\n"
    finalout = finalout + currentIDUpdate
print(finalout)
pyperclip.copy(finalout)