import pymongo
con = pymongo.MongoClient("mongodb://localhost:27017/")
db = con['college1']
studlist1 = db['studlist']

# dic =[{"name":"asha", "age":21}]
# studlist1.insert_many(dic)
# print(con.list_database_names())
# {"name":{"fname":"aswin", "lname":"c"}}

# for x in studlist1.find({"gender":"female", "course":"MCA"}):
#     print(x['name']['fname'])

# for x in studlist1.find({"course":"MCA"}).sort('mark',-1).limit(1):
#     print(x['name'])

# for x in studlist1.find({"grade":"A+", "gender":"male"}):
#     print (x["name"])

# for x in studlist1.find({"course":"Mechanical"}).sort('mark',-1).limit(3):
#     print(x['name']['fname'])

# for x in studlist1.find({"gender":"female", "mark":{'$gt':90}}):
#     print(x['name'],x['grade'], x['mark'], x['phone'])

# for x in studlist1.find({"mark":{'$gt':80, '$lt':90}}):
#     print(x)

# for x in studlist1.find({"name.fname":{"$regex":"^V"}}):
#     print(x)

# for x in studlist1.find({'address.city':"Kollam"}):
#     print(x['name']['fname'])

# for x in studlist1.find({"address.city":{"$nin":["Kollam", "Thiruvananthapuram"]}}):
#     print(x['name']['fname'])

# for x in studlist1.find({"address.city":{"$in":["Kollam", "Thiruvananthapuram"]}}):
#     print(x['name']['fname'])

# studlist1.update_one({"name.fname":"Athira", "mark":80}, {'$set':{"mark":812}})

# dicc = [{"name":"jhon","age":23}, {"name":"honaayi","age":24}]
# studlist1.insert_many(dicc)

# for x in studlist1.find({"name":"jhon"}):
#     print(x)

# studlist1.delete_many({"name":"jhon"})