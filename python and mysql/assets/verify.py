import os
stream = os.popen('python3 interest.py')
stream2 = os.popen('cat expected.txt')
output1 = stream.read()
output2 = stream2.read()
if output1 == output2:
    print("done")
else:
    print("different")

