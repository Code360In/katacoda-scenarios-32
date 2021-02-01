cp /tests/ex_test.py /root
pytest  -k test_ex4 >test.log && echo "done"
rm /root/ex_test.py