# Chapter 4: Creating Flexible Interfaces

## Quotes by the author which I found insightful:
```
When your classes use the public methods of others, you trust those methods to be stable.
When you decide to depend on the private methods of others, you understand that you are relying on something that is inherently unstable and is thus increasing the risk of being affected by a distant and unrelated change.
```
```
The design goal, as always, is to retain maximum future flexibility while writing only enough code to meet today's requirements.
```
```
The transition from class-based design to message-based design is a turning point in your design career.
The message-based perspective yields more flexible applications than does the class-based perspective.
Changing the fundamental design question from "I know I need this class, what should it do?" to "I need to send this message, who should respond to it?" is the first step in that direction.
```
```
You don't send messages because you have objects, you have objects because you send messages.
```
```
The context that an object expects has a direct effect on how difficult it is to reuse.
Objects that have a simple context are easy to use and easy to test.
```
```
Switching your attention from objects to messages allows you to concentrate on designing an application built upon public interfaces.
```
```
Every time you create a class, declare its interfaces. Methods in the public interface should:
- Be explicitly identified as such.
- Be more about what than how.
- Have names that, insofar as you can anticipate, will not change.
- Prefer keyword arguments.
```
```
Construct public interfaces with an eye toward minimizing the context they require from others.
Keep the what versus how distinction in mind; create public methods that allow senders to get what they want without knowing how your class implements its behavior.
```
```
Delegation is tempting as a solution to the Demeter problem because it removes the visible evidence of violations.
This technique is sometimes useful, but beware: It can result in code that obeys the letter of the law while ignoring its spirit.
```
```
Object-oriented applications are defined by the messages that pass between objects.
Focusing on messages reveals objects that might otherwise be overlooked.
```
```
When messages are trusting and ask for what the sender wants instead of telling the receiver how to behave, objects naturally evolve public interfaces that are flexible and reusable in novel and unexpected ways.
```