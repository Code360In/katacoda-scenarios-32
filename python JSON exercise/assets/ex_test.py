import pytest


def test_ex2():
    import ex2
    assert ex2.f2(100) == 7   
    assert ex2.f2(500) == 3 
    assert ex2.f2(800) == 1
    
def test_ex3():
    import ex3
    assert ex3.f3(101) == 20
    assert ex3.f3(112) == 4  
    assert ex3.f3(118) == 1
    
def test_ex4():
    import ex4
    assert abs(ex4.f4(1)-775.74)<0.1
    assert abs(ex4.f4(3)-283.9)<0.1
    assert abs(ex4.f4(6)-560.0)<0.1
    