directions = [
	"https://gist.github.com/ianschuler/bbdfda2f11ab7aa641d3"
	]

module.exports = (robot) ->
  robot.hear /(directions)/i, (msg) ->
    msg.send directions
