p4.lucillekenneyjewelry.com
===========================
Final Project
Micro blog and build a pendant app

Created by Lucille Kenney
for
Susan Buck
Dynamic Web Development
Harvard Extension
Submitted 22 Dec 2013
===========================

I incorporated my p3 'Build a Pendant' app (coded in jquery) into the framework from p2. Basically a user can go on to the web site and type a word onto a pendant and purchase it. 

I updated my jquery to send details to paypal in the purchasing process. There is also a link to view the contents of the shopping cart. I don't have a sandbox set up but you can click the Buy Now button and you will be taken to the paypal page with the elements from the customers selection, i.e., shape, size, metal, etc. You can close this page without purchasing or you can remove the item. Susan said this was ok. 

DISCLAIMER: I realize that the customer can change quantity once they're in paypal. The only really accurate way to do this is to attach the event to the page where the user submits their credit card information. That will be easy enough once I get sandbox set up. Right now I can't purchase something for 2 cents from my own account, so I can't go through the whole process. Also, I added a console warning 'back order' which I will eventually use in the future. Maybe have it generate an email to warn Admin when an item is out of stock. But for the moment, the Admin will be using the check_stock page as described below.

I've set up a page for admin to look at that lists items in the 'products' table of my database. Right now admin don't have to log in since its a snapshot of some of the fields in the products table to check what's in and out of stock. I purposely did not link to this page from my web site so here is the link: 
http://p4.lucillekenneyjewelry.com/stock/check_stock

I added ecommerce capability with functioning paypal buy button and shopping cart. 

Added jquery plugin to validate empty fields and valid email in 'signup', validate email and check for empty fields in 'login'.

I changed the html in the 'edit profile' to populate the website, if they entered one, and to validate the url. Ok, so it is a better design choice to populate the web url … I was wrong. I also used the validate form to validate for 'http://'' and '.' in the url so a user can click the active link in the 'follow', 'unfollow' column and be brought to the web site.

I used the ajax plugin to let the user know their post has been added without leaving the page. 

The stock/check_stock was create using json_encode.
 
I learned so much in this class! Thank you so much!