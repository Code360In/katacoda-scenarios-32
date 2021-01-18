import os,requests
event_type='python-sql-step3-ex'
myname='test'
myid='123'

stream = os.popen('python3 interest.py')
output1 = stream.read().strip()

output2 = open("expected.txt", "r").read().strip()   

if output1 == output2:
    try:
        f1 = open("myname", "r")
        f2 = open("myid", "r")   
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
