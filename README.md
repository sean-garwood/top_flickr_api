# Flickr API

Built to the specification of the [flickr API assignment from The Odin
Project](https://www.theodinproject.com/lessons/ruby-on-rails-flickr-api)

## Assignment

1. Go back to the Flickr API Docs and click Create an App at the top.
1. Follow the steps for getting your API key. You’ll have to sign in or sign up for Flickr (someone has to these days) and give them some basic information about your app. Select “Apply for a non-commercial key” and let them know how awesome your photo feed app will be. You’ll automatically get a key generated for you, in addition to a secret key. Copy both of these somewhere you can get to them later.
1. While logged in, copy your Flickr ID from the browser address bar by navigating to the “You” link on the top navbar. It will look like <https://www.flickr.com/photos/yourIDhere/>. An example would be 1895558555@N03. You’ll need that later for some of the API methods.
1. Upload a few photos to your photostream!
1. Create a new Rails app and add a gem for the Flickr API. There are gems for pretty much every API out there. They will all require you to include your API keys and secret keys somehow. Look for gems that are maintained (have recent commits) and well-adopted (GitHub stars is one way to get a good gauge for how valuable a gem is). Alternatively, you can browse through RubyGems to see popular gems.
1. One note is that it’s not good practice to have your secret key hard coded into your app because then it’s hardly a secret, especially if you’re pushing to GitHub. A better practice is to store the key in an environment variable or use something like the figaro gem. You can use Rails credentials as well (although not mentioned in the article, the value of each key can also be accessed by chaining keys as methods as shown in the Rails Guides examples). Environment variables allow you to push your key to your app directly from the command line when it fires up. Figaro operates under the same principle, though it helps you out by allowing you to store the keys in an actual file that just doesn’t get committed with the rest of your code. Rails credentials encrypts the keys using the master key. Use one of these techniques unless you’re a cowboy.
1. Build a basic StaticPagesController to display a home page with a basic form. The form should just be a single text field which takes the ID for a Flickr user. Once the form is submitted, the page should refresh and display the photos from that user.
1. Ask for your friends’ flickr IDs or find random photofeeds on the web. View them in your app and react appropriately.

## flickr gem

grabbed the [flickr
gem](https://github.com/cyclotron3k/flickr?tab=readme-ov-file#flickr) to
interface with flickr
