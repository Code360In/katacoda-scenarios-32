import os,requests
output2= """ 
{'CustomerID': 1, 'Interest': 'badminton'}
{'CustomerID': 1, 'Interest': 'tennis'}
{'CustomerID': 2, 'Interest': 'travel'}
{'CustomerID': 2, 'Interest': 'programming'}
"""
        
        

event_type='python-sql-step3-ex'
myname='test'
myid='123'

stream = os.popen('python3 interest.py')
output1 = stream.read()

#output2 = open("expected.txt", "r").read().strip()   

if output1.strip() == output2.strip():
    try:
        f1 = open(".myname", "r")
        f2 = open(".myid", "r")   
        myname=f1.read().strip()
        myid=f2.read().strip()
        
        event_type='python-sql-step3-ex'
        
        url=f"https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1?type={event_type}&myid={myid}&name={myname}"
        
        r = requests.get(url) 
        
        print("done")
    except Exception as e:
        print(e)
else:
    print("different")
