# Chapter 3: Managing Dependencies

## Quotes by the author which I found insightful:
```
An object has a dependency when it knows:
- the name of another class.
- the name of a message that it intends to send to someone other than self.
- the arguments that a message requires.
- the order of those arguments
```
```
Using keyword arguments requires the sender and the receiver of a message to state the keyword names. 
This results in explicit documentation at both ends of the message.
Future maintainers will be grateful for this information.
```
```
Depend on things that change less often than you do.
```
```
The choices you make about the direction of dependencies have far-reaching consequences that manifest themselves for the life of your application.
```
