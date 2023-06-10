import mariadb
import dbcreds
# run procedure function to be used in app that takes two arguements for sql and arguements for sql
def run_procedure(sql,args):
    # try to connect to db and get results
    try:
        results = None
        conn = mariadb.connect(**dbcreds.conn_params)
        cursor = conn.cursor()
        cursor.execute(sql,args)
        results = cursor.fetchall()
    # except errors for Programming, Operational and a catch all error
    except mariadb.ProgrammingError as error:
        print('there is an issue with the db code: ',error)
    except mariadb.OperationalError:
        print('there is an issue with connection to the DB',error)
    except Exception as error:
        print('there was an unknown error',error)
    # closes conn and cursor if set to anything other than none
    finally:
        if(cursor!=None):
            cursor.close()
        if(conn != None):
            conn.close()
        return results