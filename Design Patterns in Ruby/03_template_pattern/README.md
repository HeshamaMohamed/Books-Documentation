# Template Pattern: 
* In this pattern we have a use case of a report with varying types.  
* We try to separate the parts that vary from the parts that stay the same.  
* We achieve that through:
  - Implementing the parts that doesn't change in the base class. (eg; Report Class)
  - Providing abstract methods for the sub-classes to implement based on their specific details.
  - Implementing the parts that vary in their specific new sub-class (eg; HTMLReport, PlainTextReport subclasses)
