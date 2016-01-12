URL_REGEX = /(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/i
PUBLISH_URL = "https://calvin-backend.herokuapp.com/data/add_url"

module.exports = (robot) ->
  robot.hear(URL_REGEX, (res) ->
    url = res.match[1]
    data = "url=#{url}"
    robot.http(PUBLISH_URL)
      .post(data) (err, result, body) ->
        #success
        #res.send "Added to the TV queue: #{url}"
    )
