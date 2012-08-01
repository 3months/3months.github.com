$ ->
	blog_urls = [
		"http://joshmcarthur.com/feed/index.xml"
	]

	@blogs ||= []
	@blogs.push(new Blog(url)) for url in blog_urls

	console.log(@blogs)




class Blog
	constructor: (@url) ->
		@items = []
		$.getJSON @yql_url(), (yql_json) =>
			@items.push(new Post(post_data)) for post_data in $(yql_json.results[0]).find('entry')

	yql_url: ->
		'http://query.yahooapis.com/v1/public/yql?q=' + encodeURIComponent('select * from xml where url="' + @url + '"') + '&format=xml&callback=?'


class Post
	constructor: (data) ->
		data = $(data)
		@title          = data.find('title').text()
		@link           = data.find('link').attr('href')
		@date           = data.find('updated').text()


