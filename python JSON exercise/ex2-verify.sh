cp tests/test_ex.py /root
pytest  -k test_ex2 >test.log && echo "done"
rm /test/test_ex.py