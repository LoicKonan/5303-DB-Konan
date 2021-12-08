import json
import copy
#create custom object of json object sample 
MyCustomObject = {
        "Col": "",
        "Crn": "",
        "Subj": "",
        "Crse": "",
        "Sect": "",
        "Title": "",
        "PrimaryInstructor": "",
        "Max": 0,
        "Curr": 0,
        "Aval": 0,
        "Days": " ",
        "Begin": " ",
        "End":" ",
        "Bldg": " ",
        "Room": " ",
        "Year": 0,
        "Semester": " "
}

#open file 
f = open('sample.json')
#read json
data = json.load(f)
#Create a empty list to append mycustomobject after normalization
empty_list = []


#loop on json strings
for i in data:  
    #not all the json objects are same just year and Semester are present in every object so if's on all the variables
    if("Col" in i):
        MyCustomObject['Col'] = i['Col']
    if("Crn" in i):
        MyCustomObject['Crn'] = i['Crn']
    if("Subj" in i):
        MyCustomObject['Subj'] = i['Subj']
    if("Crse" in i):
        MyCustomObject['Crse'] = i['Crse']
    if("Sect" in i):
        MyCustomObject['Sect'] = i['Sect']
    if("Title" in i):
        MyCustomObject['Title'] =  i['Title']
    if("PrimaryInstructor" in i):
        MyCustomObject['PrimaryInstructor'] =  i['PrimaryInstructor']
    if("Max" in i):
        MyCustomObject['Max'] = i['Max']
    if("Curr" in i):
        MyCustomObject['Curr'] = i['Curr']
    if("Aval" not in i):
        MyCustomObject["Aval"] = None
    if("Aval" in i):
        MyCustomObject['Aval'] = i['Aval']
    # if("Aval" not in i):
    #     # if(i["Aval"] not in i):
    #     #     MyCustomObject["Aval"] = -1
    #     # else:
    #     MyCustomObject['Aval'] = i['Aval']
    if("Days" not in i):
        MyCustomObject["Days"] = None
    if("Days" in i):
        MyCustomObject['Days'] = i['Days']
    if("Begin" not in i):
        MyCustomObject["Begin"] = None
    if("Begin" in i):
        MyCustomObject['Begin'] = i['Begin']
    # if("Begin" in i):
    #     MyCustomObject['Begin'] =  i['Begin']
    if("End" not in i):
        MyCustomObject["End"] = None
    if("End" in i):
        MyCustomObject['End'] = i['End']
    # if("End" in i):
    #     MyCustomObject['End'] =  i['End']
    if("Bldg" not in i):
        MyCustomObject["Bldg"] = None
    if("Bldg" in i):
        MyCustomObject['Bldg'] = i['Bldg']
    # if("Bldg" in i):
    #     MyCustomObject['Bldg'] =  i['Bldg']
    if("Room" not in i):
        MyCustomObject["Room"] = None
    if("Room" in i):
        MyCustomObject['Room'] = i['Room']
    # if("Room" in i):
    #     MyCustomObject['Room'] = i['Room']
    MyCustomObject['Year'] = i['Year']
    MyCustomObject['Semester'] = i['Semester']
    #append the json object to the empty list
    empty_list.append(copy.deepcopy(MyCustomObject))
    #promt nay variable value of this
    # print(MyCustomObject['Bldg'])
    
with open('outfile.json',"w") as file:
    json.dump(empty_list, file, indent=4)



file.close()