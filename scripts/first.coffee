module.exports = (robot) ->
  robot.respond /hello/i, (res) ->
    res.send "hello again"
