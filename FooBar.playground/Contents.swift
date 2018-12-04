protocol FooBar {
    //requirement method
    func foo() -> Void
}

extension FooBar {
    //default implementation of foo
    func foo(){
        print("foo")
    }
    //not a requirement method
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

