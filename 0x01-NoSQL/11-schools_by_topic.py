#!/usr/bin/env python3
'''working with mongodb'''


def schools_by_topic(mongo_collection, topic):
    '''returns the list of school having a specific topic'''
    filter_topic = {'topic': {'$elemMatch': {'$eq': topic}}}
    return [sch for sch in mongo_collection.find(filter_topic)]
