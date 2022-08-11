# Chapter 2: Single Responsibility

## Quotes by the author which I found insightful:

```
When the future cost of doing nothing is the same as the current cost, postpone the decision.`  
Make the decision only when you must with the information you have at that time.
```  
```
This "improve it now" vs "improve it later" tension always exists. Applications are never perfectly designed, and every choice has a price.  
A good designer understands this tension and minimizes costs by making informed tradeoffs between the needs of the present and the possibilities of the future.
```  
```
Separating iteration from the action that's being performed on each element is a common case of multiple responsibilities.
```  
```
if a bit of code inside a method needs a comment, extract that bit into a separate method. The new method name serves the same purpose as the old comment.
``` 
```
If you have a muddled class with too many responsibilities, separate those responsibilities into different classes.`  
If you identify extra responsibilities that you cannot yet remove, isolate them. Do not allow extraneous responsibilities to leak into your class.
```