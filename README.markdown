# Rails 3 beta 3 blog in 15 minutes #
I followed the Rails Dispatch screencast by Yehuda Katz to create a blog in 15-20 minutes. 
It was created for beta2 however and I had to make a few tweaks along the way...

<pre>
$ rails g stylesheets
$ rails plugin install git://github.com/rails/dynamic_form.git

Optional:
$ rails plugin install git://github.com/rails/verification.git 
</pre>

I also had to introduce some paragraphs to surround various input elements for pretty output.
`application.html.erb` needed a flash[:notice] statement to output notices.
You also need to add a few classes to a stylesheet, fx `application.css`, for the divs used.

Enjoy!  