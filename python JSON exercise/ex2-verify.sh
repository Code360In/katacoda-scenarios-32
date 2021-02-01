cp /tests/ex_test.py /root
pytest  -k test_ex2 >test.log && echo "done"
rm /tests/ex_test.py