import os,requests

event_type='python-sql-step3-ex'
myname='test'
myid='123'



stream = os.popen('python3 interest.py')
stream2 = os.popen('cat expected.txt')
output1 = stream.read()
output2 = stream2.read()
if output1 == output2:
    try:
        f1 = open("myname", "r")
        f2 = open("myid", "r")   
        myname=f1.read().strip()
        myid=f2.read().strip()
        print(myname)
        print(myid)
        
        event_type='python-sql-step3-ex'
        
        url=f"https://a2pops3li6.execute-api.us-east-2.amazonaws.com/v1?type={event_type}&myid={myid}&name={myname}"
        print(url)
        r = requests.get(url) 
        print(r)
        print("\ndone\n")
    except Exception as e:
        print(e)
else:
    print("different")
