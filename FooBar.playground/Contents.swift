protocol FooBar {
    //required
    func foo() -> Void
}

extension FooBar {
    //default implementation of foo
    func foo(){
        print("foo")
    }
    //not required
    func bar(){
        print("bar")
    }
}

struct TestFooBar: FooBar {
    
    func foo(){
        print("override foo")
    }
    
    func bar(){
        print("override bar")
    }
}

let test:FooBar = TestFooBar()

test.foo()
test.bar()

