#!/usr/bin/env python3
'''python database storage'''


def insert_school(mongo_collection, **kwargs):
    '''inserts a new doc in a collection based on kwargs'''
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
