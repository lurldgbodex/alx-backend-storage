#!/usr/bin/env python3
'''working on NoSql'''


def list_all(mongo_collection):
    '''lists all documents in a collection'''
    return [document for document in mongo_collection.find()]
