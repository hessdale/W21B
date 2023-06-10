import json
import mariadb
import dbcreds
import dbhelper
from flask import Flask, request
app = Flask(__name__)

########## Philosophers ##########

@app.get('/api/philosopher')
def get_philosopher():
    try:
        results = dbhelper.run_procedure('call get_philosophers()',[])
        if(type(results) == list):
            return json.dumps(results,default=str)
        else:
            return 'something went wrong'
    #except errors: Type, UnboundLocal and Value with respective error messages
    except TypeError:
        print('invalid input type, try again.')
    except UnboundLocalError:
        print('coding error')
    except ValueError:
        print('value error, try again')

@app.post('/api/philosopher')
def new_philosopher():
    try:
        req_data = ["name","bio","date_of_birth","date_of_death","image_url"]
        for data in req_data:
            if(request.json.get(data) == None):
                return f"The {data} must be sent"
        results = dbhelper.run_procedure('call new_philosopher(?,?,?,?,?)',[request.json.get("name"),request.json.get("bio"),request.json.get("date_of_birth"),request.json.get("date_of_death"),request.json.get("image_url")])
        if(type(results) == list):
            return json.dumps(results,default=str)
        else:
            return 'something went wrong'
    except TypeError:
        print('invalid input type, try again.')
    except UnboundLocalError:
        print('coding error')
    except ValueError:
        print('value error, try again')

########## Quotes ##########

@app.get('/api/quote')
def get_quotes():
    try:
        req_data = ["id"]
        for data in req_data:
            if(request.json.get(data) == None):
                return f"The {data} must be sent"
        results = dbhelper.run_procedure('call get_quotes()',[request.json.get("id")])
        if(type(results) == list):
            return json.dumps(results,default=str)
        else:
            return 'something went wrong'
    #except errors: Type, UnboundLocal and Value with respective error messages
    except TypeError:
        print('invalid input type, try again.')
    except UnboundLocalError:
        print('coding error')
    except ValueError:
        print('value error, try again')


@app.post('/api/quote')
def post_quote():
    try:
        req_data = ["id","content"]
        for data in req_data:
            if(request.json.get(data) == None):
                return f"The {data} must be sent"
        results = dbhelper.run_procedure('call get_quotes()',[request.json.get("id"),request.json.get("content")])
        if(type(results) == list):
            return json.dumps(results,default=str)
        else:
            return 'something went wrong'
    #except errors: Type, UnboundLocal and Value with respective error messages
    except TypeError:
        print('invalid input type, try again.')
    except UnboundLocalError:
        print('coding error')
    except ValueError:
        print('value error, try again')


app.run(debug=True)
