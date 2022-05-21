
# Chapter 14: Callable and runnable objects

### Topics covered in this chapter:
- Proc objects
- The lambda "flavor" of process
- Code block-to-proc (and reverse) conversion
- Symbol#to_proc
- Method objects
- Bindings
- eval, instance_eval, and class_eval
- Thread usage and manipulation
- Thread-local 'global' variables
- The system method
- Calling system commands with backticks
- The basics of the open and Open3.popen3 facilities


### Personal thoughts

- It was statisfying to get to know more about proc and blocks internally. I learned about them when i started learning ruby. However, It was irritating not knowing why it behaves the way it does and how it is engineered internally.  
    It's not that I will be always utilizing them now, but atleast I'm not gonna have trouble understanding any code using them from now on.

- after getting exposed to eval, I don't think i'll use it, I find it very dangerous.

- I find the usage of instance_eval inside class objects initializations to simplify assignment code very pleasant. I don't know the implications of using it though, but I would like to try it.

- the potential of class_eval to be able to access local variables created outside of class definition is very interesting.

- I have been looking forward to learn about using threads in ruby. I'm very enthusiastic about concurrent/parallel programming specifically and performance optimization in general.  
    I haven't had much practical experience programming with threads though. I'd love to learn more about and gain experience in that topic.

