require 'mongo'
require 'open-uri'
class AlokController < ApplicationController
  def index
  	mongo_client = Mongo::MongoClient.new("localhost", 27017)
  	db = mongo_client.db("mydb")
  	coll = db.collection("testCollection")
  	coll = db["testCollection"]
  	
    json = open('MOCK_DATA.json') { |f| f.read }

  	jsonData = JSON.parse(json)
    
    jsonData.each do |variable|
	   coll.insert(variable)
    end
  end
  def getDbData
    mongo_client = Mongo::MongoClient.new("localhost", 27017)
    db = mongo_client.db("mydb")
  	coll = db.collection("testCollection")
  	coll = db["testCollection"]
    retrieve = coll.find({:id => params[:i]});

  end
end
