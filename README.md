#Why are these dudes talking to us?
We want to tell you about third party javascript and our new app: ***Tinder for Vegans***. 
###First thing's first, what is third party JS? 
**It is a script that allows people to embed content / functionality into their own websites and blogs by copy-pasting a little bit of code.**

###Well I guess that makes sense if you're a robot, but can you give us an example...?
Sure, we see these things out in the wild everyday.
 
* Advertisements
* Facebook like buttons
* Analytics
* Disqus commenting
* Gravatars

### So wait, why is this important to me?
As *developers* we have the ability to both use and distribute third-party scripts. For the former, we can leverage code written by others such as a YouTube video player because there is no way in hell we're rolling our own one of those. As for the latter, we can author scripts that we intend to put on a content provider's website. That's where things get more interesting. 
<hr>

##How do these things work?
Good question, we asked google the same thing. Here is a diagram we found on the internets - <br>
<img src='./images/3rd_party_diagram.png' height=600 style="align-content:center;">

<hr>

## Three Main Types
### 1. Embedded Scripts
These are probably the most common and the type we'll be demoing today. Typically, these are small apps that are rendered and made accessible on a publisher's website, but load and submit resources from a separate set of servers. It may seem simple, but *entire businesses* are built surrounding this concept. 
<br>
These scripts can either only be valuable in their distributed form (Disqus) -or- they can be portable extensions of a larger core product (Google Maps).
### 2. Analytics and Metrics
These are the mixpanels and Google analytics of the world, sitting silently in the DOM collecting information about us as we traverse the interwebs. Creepy. Awesome. And creepy.

##### Passive Scripts
These scripts require no input from the publisher beyond including the snippet in the DOM. From here, all of the data is collected automatically. Example - *Crazyegg*.  
##### Active Scripts
Active scripts require some user inputs in order to work. A good example is MixPanel. Say I'd like to track how many people click a new button I've added to my page. Well, as the dev, I need to tell MixPanel to 'track this button' and log an event everytime it happens. 

### 3. Web Service API Wrappers
These scripts simplify client-side access to an API. A good example here is the FB Graph API. Facebook has a JS library that provides functions for you to communicate with their API. 

<hr>

## Getting Started
###What should we be thinking about?
(The following is thanks to Emil Stenström, author of [Friendly Bit](https://friendlybit.com))<br>

1. **Small** - We don't want to include a lot in other people's code.
2. **Standalone** - We need to stand on our own two feet. No depending on other JS libraries. 
3. **Cross-browser Compatible** - We may assume everyone with a brain doesn't use IE but people using our embeddable code may not be so lucky. 
4. **Async** - This cannot block the the download of any other scripts on the page. 
5. **Preserve Events** - Our events should not override any events on the user's site.
6. **Clean Namespace** - No global variables

###How to Include

##### Dom Creation vs. Iframes
**Dom Creation** - Create the whole DOM of our widget via jQuery or Vanilla JS. This method allows some more compatibility with older browsers, but is ultimately less flexible when it comes to how complex content can be. And sounds like a lot of work. 
<br>
**Iframes** - This is our preferred method. An iframe is separate from the rest of the page with content loaded in. This allows us to essentially build content in the same way we load any content and load it directly from a static file hosted on our server. An additional advantage is the ability to use forms without the need to worry about ajax.
<br>
**Here is how we did it** -<br>
```
Insert Script here
```
##Enough talking, let's code! 
Everyone feel free to fork and clone this repo so they can work on their own version. 


<br>
<hr>
#####Want some more info??? Here is where we looked :)

[https://friendlybit.com/js/lazy-loading-asyncronous-javascript/](https://friendlybit.com/js/lazy-loading-asyncronous-javascript/)

[http://shootitlive.com/2012/07/developing-an-embeddable-javascript-widget/](http://shootitlive.com/2012/07/developing-an-embeddable-javascript-widget/)

[http://blog.swirrl.com/articles/creating-asynchronous-embeddable-javascript-widgets/](http://blog.swirrl.com/articles/creating-asynchronous-embeddable-javascript-widgets/)

[http://www.doorkeeperhq.com/developer/embeddable-javascript-widget](http://www.doorkeeperhq.com/developer/embeddable-javascript-widget)

[https://www.manning.com/books/third-party-javascript](https://www.manning.com/books/third-party-javascript)

[http://codeutopia.net/blog/2012/05/26/best-practices-for-building-embeddable-widgets/](http://codeutopia.net/blog/2012/05/26/best-practices-for-building-embeddable-widgets/)
