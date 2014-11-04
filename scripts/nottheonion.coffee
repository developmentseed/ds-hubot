# Description:
#   Gets a headline from the /r/nottheonion subreddit
#
# Commands:
#   hubot headline

module.exports = (robot) ->

  robot.respond /nottheonion/i, (msg) ->
    msg.http('https://www.reddit.com/r/nottheonion/new.json?sort=new')
      .get() (err, res, body) ->
        urls = JSON.parse(body).data.children
        index = Math.floor(Math.random() * urls.length)
        msg.send urls[Object.keys(urls)[index]].data.title + " " + urls[Object.keys(urls)[index]].data.url

