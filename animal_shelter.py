from pymongo import MongoClient
from bson.objectid import ObjectId


class AnimalShelter(object):
    """ CRUD operations for Animal collection in MongoDB """

    def __init__(self, username, password):
        # Initializing the MongoClient. This helps to
        # access the MongoDB databases and collections.
        self.username = username
        self.password = password
        self.client = MongoClient('mongodb://' + self.username + ':' + self.password + '@localhost:33529/AAC')
        self.database = self.client['AAC']

    # Complete this create method to implement the C in CRUD.
    def create(self, data):
        if data is not None:    # data should be dictionary
            try:
                self.database.animals.insert_one(data)  # create data document
                return True
            except:
                return False
        else:
            raise Exception("Nothing to save, because data parameter is empty")
            
    # Create method to implement the R in CRUD return many results
    def read(self, data):
        result = []
        query = self.database.animals.find(data,{"_id":False})  # query database using find method with input data
        for animal in query:
            # print(animal)
            result.append(animal)
        return result

    # Update method to implement the U in CRUD.
    def update(self, query_data, update_data):
        if query_data is not None and update_data is not None:  # data should be dictionary
            result = self.database.animals.update_many(query_data, update_data)  # find and update many with input data
            # print(result.raw_result)
            return result.raw_result
        else:
            raise Exception("Nothing to save, because data parameter is empty")

    # Delete method to implement the D in CRUD.
    def delete(self, data):
        if data is not None:  # data should be dictionary
            result = self.database.animals.delete_many(data)  # find and delete many with input data
            # print(result.raw_result)
            return result.raw_result
        else:
            raise Exception("Nothing to delete, because data parameter is empty")
