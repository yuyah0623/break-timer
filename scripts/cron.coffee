# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   cron configs
#

# cronJob = require('cron').CronJob

# module.exports = (robot) ->
#   btimer1 = new cronJob('10 * * * * 0-6', () =>
#     envelope = room: "#mentor-contact"
#     robot.send envelope, "@maikishinbo ブレイクタイム *30分前ですよ！*"
#   )
#   robot.respond /PING$/i, (msg) ->
#     msg.send "@maikishinbo !!!"

#   btimer1.start()