Specification
=====================

Table of contents 

#. Description purpose of Papernews
#. Components
#. Interaction between components
#. Estimated time and cost


--------------------------------------
Description and purpose of Papernews
--------------------------------------
Papernews is an application for generating short summary from given news agregators or directly from a newsletters web sites.
The user can define which news he wants to follow and the application will generate new papernews at the end of each day.
The user will be given the papernews as portable document format that he can recieve via e-mail or he can chose to download it.


-----------
Components
-----------

Papernews has the following components

Version1

#. Web interface
#. Links agregator
#. Website parser
#. News generator
#. Parsed news API

Version2

#. NLP summary and topic generator
#. Parsers and scrapers for news without RSS
#. User created list of news for category
#. New templates

--------------
Web interface
--------------
User can create, remove and edit his account.
If user created account and logins, he will be able to access site.
Web interface provides aggregated news (for eg. newspapers like format) from user defined rss links.
User can filter which news he will see using checkboxes of links that he proveded to the site.
Web interface also provides export of news of his choice. 
Export options are portable document format and/or e-mail message.
Users can also schedule tailored e-mails from news of his choice.
Web interface will created short news ID that will ease access to the news if user printed his daily news on paper.
For example below the heading of one news there will be an ID like "123abcd" and user will be able 
to search that news by ID or access https://papernews.com/short/123abcd to view that specific news article.

----------------
Links agregator
----------------
Component that recieves user RSS links, transforms it and prepares it for website parser.
Specifically extracts metadata from RSS like:

#. news heading
#. user that posted that link
#. source link (eg. hackernews)
#. link to the actual news

----------------
Website parser
----------------
Using prepared links scrapes website for summary of that news.
After scraping it glues metadata from agregator and prepares newly created blob of data for news generator

----------------
News generator
----------------
Uses data from webside parser, and generates portable document format that can be downloaded or sent via e-mail to your address.

----------------
Parsed news API
----------------
API thats provides access to the news data.

-------------------------------
Interaction between components
-------------------------------
.. image:: img/diag.png
  :alt: Interaction between components

------------------------
Estimated time and cost
------------------------
.. image:: img/timeestimate.png
  :alt: Estimated time of imlpementation

Estimated cost for 22 days of 2 developers is 

#. 22 days * 8h * 2 developers - 352, since our cost is $35/h the cost of programming and designing is $12320.
#. Maintance 10h - $350
#. Overhead 4h - $140

**Total of $12810**


WBS
--------------
1. Web interface
    1. Develop project schedule
    2. Handle user management
    3. Develop papernews list
        1. Application landing page
        2. Develop papernews templates
        3. Develop default news subscriber (HackerNews(homepage), Reddit (homepage))
        4. Develop custom news subscriber
        5. Develop search (by id, date created, keywords, category)
        6. Develop papernews custom time of day generator
        7. Develop automatization of e-mailing papernews

2. Links agregators
    1. Develop project schedule
    2. Develop metadata extractor from RSS
    3. Develop metadata extractor for websites without RSS support

3. Website parser
4. News generator
5. Parsed news API

