<%

class NilTest extends Test {
    def test_to_s {
        assert_equal("", nil.to_s);
    }
    
    def test_inspect {
        assert_equal("nil", nil.inspect);
    }
    
    def test_equality {
        assert_equal(nil, Nil.new);
        assert_unequal(nil, false);
        assert(Nil.new == Nil.new, "Expected two different instances of Nil to be considered equal");
    }
    
    def test_is_falsish {
        flunk() if nil;
        assert(!nil, "not nil is true");
    }
    
    def test_class {
        assert_equal(Nil, nil.class);
    }
}