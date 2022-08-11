# Chapter 9: Designing Cost-Effective Tests

## Quotes by the author which I found insightful:
```
From a practical point of view, changeability is the only design metric that matters; code that's easy to change is well-designed.
```
```
"Refactoring is the process of changing a software system in such a way that it does not alter the external behavior of the code yet improves the internal structure" ~ Martin Fowler
```
```
Refactoring does not add new behavior, it improves existing structure.
```
```
The good design preserves maximum flexibility at minimum cost by putting off decisions at every opportunity and deferring commitments until more specific requirements arrive.
```
```
Your design efforts will pay full dividends only when you can refactor with ease.
```
```
The art of writing changeable code requires the ability to write high-value tests. Tests give you the confidence to refactor constantly.
Efficient tests prove that altered code continues to behave correctly without raising overall costs.
```
```
Getting good value from tests requires clarity of intention and knowing what, when, and how to test.
```
```
Knowing that you can (or can't) do something early on may cause you to choose alternatives in the present that alter the design options available in the future.
```
```
Fixing bugs late in the process may necessitate changing a lot of dependent code. Fixing bugs early always lowers costs.
```
```
Tests provide the only reliable documentation of design. Write your tests as if you expect your future self to have amnesia.
```
```
When your tests depend on interfaces, you can refactor the underlying code with reckless abandon.
The tests verify the continued good behavior of the interface and changes to the underlying code do not force rewrites of the tests.
```
```
The good design naturally progresses toward small independent objects that rely on abstractions.
```
```
As the codebase expands and the number of abstractions grows, tests become increasingly necessary.
Tests are your record of the interface of every abstraction and as such, they are the wall at your back.
They let you put off design decisions and create abstractions to any useful depth.
```
```
If a test requires a painful setup, the code expects too much context.
If testing one object drags a bunch of others into the mix, the code has too many dependencies.
If the test is hard to write, other objects will find the code difficult to reuse.
Testing is the canary in the coal mine; when the design is bad, testing is hard.
```
```
It is technically possible to write bad tests for well-designed code.
Therefore, for tests to lower your costs, both the underlying application and the tests must be well-designed.
```
```
One simple way to get better value from tests is to write fewer of them.
The safest way to accomplish this is to test everything just once and in the proper place.
```
```
Well-designed objects have boundaries that are very strong.
Each is like a space capsule, nothing on the outside can see in, nothing on the inside can see out, and only a few explicitly agreed-upon messages can pass through the predefined airlocks.
```
```
Dealing with objects as if they are only and exactly the messages to which they respond lets you design a changeable application.
```
```
The design principles you are enforcing in your application apply to your tests as well.
```
```
Not only should you limit couplings, but the few you allow should be to stable things.
The most stable thing about any object is its public interface; it logically follows that the tests you write should be for messages that are defined in public interfaces.
The most costly and least useful tests are those that blast holes in an object's containment walls by coupling to unstable internal details.
```
```
Tests that make assertions about the values that messages return are tests of state.
The general rule is that objects should make assertions about state only for messages in their own public interfaces.
```
```
Some outgoing messages have no side effects and thus matter only to their senders.
Outgoing messages like this are known as queries and they need not be tested by the sending object.
```
```
Many outgoing messages do have side effects upon which your application depends.
These messages are commands and it is the responsibility of the sending object to prove that they are properly sent.
Proving that a message gets sent is a test of behavior, not state, and involves assertions about the number of times, and with what arguments, the message is sent.
```
```
Incoming messages should be tested for the state they return.
Outgoing command messages should be tested to ensure they get sent.
Outgoing query messages should not be tested.
```
```
As long as the public interfaces remain stable, you can write tests once and they will keep you safe forever.
```
```
You should write tests first, whenever it makes sense to do so.
```
```
Done at the correct time and right amounts, testing and writing code test-first, will lower your overall costs.
```
```
The rules of thumb for testing private methods: Never write them, and if you do, never ever test them, unless, of course, it makes sense to do so.
```