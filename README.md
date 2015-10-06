![Build Status](https://codeship.com/projects/138c4fc0-4db0-0133-480e-524cf6105349/status?branch=master)![Code Climate](https://codeclimate.com/github/jakegibs617/live.png) ![Coverage Status](https://coveralls.io/repos/jakegibs617/live/badge.png)


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

<% @events.each do |event| %>
	<li>
		<img src="<%= event.image_url %>" alt="slide <%= event.id %>" />
		<div class="orbit-caption">
			<%= event.description %>
		</div>
	</li>
<% end %>
