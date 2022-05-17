
## Chapter 10:  Collections central: Enumerable and Enumerator

### Topics covered in this chapter:
- The Enumerable module and its instance methods
- Using Enumerable in your own classes
- Enumerator basics
- Creating enumerators
- Iterating over strings
- Lazy enumerators



### Personal thoughts

- I have always found Enumerable's methods in Ruby invaluable. it saves you so much trouble.
    I haven't been using all of them though. This chapter introduced some interesting "new to me" Enumerability, 'grep' is one of them.  
    I have been using 'grep' in bash but didn't know it existed in Ruby.

- I have always used ranges in their simplest form when I needed them. So, it was nice playing it for a little bit, especially with floats. I got to know what operation and when I can or can't use on ranges.

- I have used the group_by option in rails' ORM. it's good to know I can use it with plain Ruby arrays.

- I have used array.first and array.last before. However, I didn't know that #last would only work on arrays and ranges.

- I liked how the #take and #drop functions are kind of a hybrid of #first and #select.

- I liked the #each_slice and #each_cons methods. I once had a hard time working with sub-arrays/sub-strings and it would've saved me some hustle if I knew about them.

- I think the slice_ family methods show great potential.

- At this moment, I can't wait to finish the book.
    As I read more through the book, I grow more impatient. I am very excited to go out there to tackle all the problems I have struggled with. I feel very flexible right now like I am no longer restrained by the chains of impossibility or a player who just had his gears upgraded and wanna try it out as soon as possible to beat the highest record he ever had.  
    At the same time, I know there is more to learn. I know that it will even get better at the end of the book. I guess I'll have to run as fast as I can to get there ASAP.

- I liked how you can provide a block to #sort method to base your sorting on. It is very useful when you want to sort between 2 objects of different classes. Because, by default, they wouldn't be able to compare themselves to each other.

- I struggled with the Enumerator subsection 10.9.1. I had to re-read it a couple of times as it was not easy to follow up or digest it. I can't think of use cases where I would use it, or even situations I faced where I needed it.

- Reading subsection 10.9.2, I am thinking that maybe we can use Enumerators to combine Iterators' functions. An example would be binding the enumerator to #select method on an array when initializing and then calling #map on the array. But I still find it hard to digest it.

- Reading subsection 10.10.2, I find the protection of objects against changes with enumerators is overkill. There are easier ways illustrated that we could achieve the same goal such as using #dup and even restricting read/write access in a class through attr_* family.

- Reading subsection 10.11, I find the Enumerator method chaining is very cool and potential. The way the enumerator economizes the intermediate objects created by each link in the chain is very useful when it comes to working with large data variables.

- Reading subsection 10.12, I remember facing an exercise where I needed to generate the first x prime numbers. Knowing about lazy enumerators back then would've given me a boost.

- This chapter increased its density gradually. I must say I have to tackle the Enumerator topic again. I have not grasped it fully. I will try some other source illustrating it, maybe a video with a visual representation that'd help me create a mental image of the concept and its mechanisms.