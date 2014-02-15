wiki = [
	"https://github.com/developmentseed/ds-business/wiki/_pages"
	]

module.exports = (robot) ->
  robot.hear /(wiki|accounts)/i, (msg) ->
    msg.send msg.random wiki