# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

cronJob = require('cron').CronJob

module.exports = (robot) ->
  # 16:00ブレイクタイム
  btimer1_1 = new cronJob('00 30 15 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *30分前だよ:heartbeat:*"
  )
  btimer1_2 = new cronJob('00 45 15 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *15分前だよ！:heartbeat:*"
  )
  btimer1_3 = new cronJob('00 55 15 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *5分前だよ！:heartbeat:*"
  )
  btimer1_4 = new cronJob('00 00 16 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "*:sparkles::dancers::two_women_holding_hands::two_men_holding_hands::couple: *PARTY PEOPLE YEAH!!!!!* :couple: :two_men_holding_hands: :two_women_holding_hands: :dancers::sparkles:*\nhttp://disc-j.net/wp-content/uploads/2014/09/ultrajafter3.jpg"
  )

  # 20:00ブレイクタイム
  btimer2_1 = new cronJob('00 30 19 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *30分前だよ！:heartbeat:*"
  )
  btimer2_2 = new cronJob('00 45 19 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *15分前だよ！:heartbeat:*"
  )
  btimer2_3 = new cronJob('00 55 19 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> ブレイクタイム *5分前だよ！:heartbeat:*"
  )
  btimer2_4 = new cronJob('00 00 20 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, ":sparkles::dancers::two_women_holding_hands::two_men_holding_hands::couple: *PARTY PEOPLE YEAH!!!!!* :couple: :two_men_holding_hands: :two_women_holding_hands: :dancers::sparkles:\nhttp://disc-j.net/wp-content/uploads/2014/09/ultrajafter3.jpg"
  )
  # 蛍の光
  remind_music = new cronJob('00 55 22 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> *蛍の光を流してください٩(๑′∀ ‵๑)۶•*¨*•.¸¸♪*\nhttp://2.bp.blogspot.com/-hqIThX2BTI4/UAomQKywmHI/AAAAAAAAEAc/Gw9txocS6yI/s1600/%E3%83%9B%E3%82%BF%E3%83%AB%E3%83%8E%E3%83%92%E3%82%AB%E3%83%AA.jpg"
  )
  # メンターフィードバックリマインド
  remind_mentor_fb = new cronJob('00 30 22 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> そういえば今日現場を見てこの人のココ良かったなぁとか気をつけた方がいいなぁって思った事とかない？\nもしあったら私に教えてくれると嬉しいなぁ:heartbeat:\n好きになっちゃうかも（笑）"
  )
  # 終業
  end_work = new cronJob('00 00 23 * * 0-6', () =>
    envelope = room: "#mentor-contact"
    robot.send envelope, "<!here> みんな、今日も一日おつかれさま:heartbeat:\n明日からも皆で頑張ろう\nhttp://i.imgur.com/hwIXH65.jpg"
  )
  # https://gyazo.com/4bee8893d4ccd5030eb641cd00103a53
  # Close Channel
  # close_ios_chat = new cronJob('00 00 23 * * 0-6', () =>
  #   envelope = room: "#_ios_online_support"
  #   robot.send envelope, "/topic 一日お疲れ様♪明日も頑張ろうね:ponchan_bob::two_hearts:"
  # )

  # close_web_chat = new cronJob('00 00 23 * * 0-6', () =>
  #   envelope = room: "#_web_online_support"
  #   robot.send envelope, "/topic 一日お疲れ様♪明日も頑張ろうね:motti_micky: :two_hearts: "
  # )

  remind_exam1 = new cronJob('00 00 11 * * 3', () =>
    envelope = room: "#weekly_exam"
    robot.send envelope, "<!channel> 皆さん順調ですか？(ू˃̣̣̣̣̣̣︿˂̣̣̣̣̣̣ ू)応援してるので頑張ってください:heartbeat:"
  )

  remind_exam2 = new cronJob('00 00 11 * * 5', () =>
    envelope = room: "#weekly_exam"
    robot.send envelope, "<!channel> 提出は今日までですっっ！出さないと私が怒られちゃうの(ू˃̣̣̣̣̣̣︿˂̣̣̣̣̣̣ ू)"
  )
  remind_webook1 = new cronJob('00 00 11 * * 3', () =>
    envelope = room: "#we-book"
    robot.send envelope, "<!channel> 本、読んでますか？(๑•́ ₃ •̀๑)本を読む人って凄くカッコいい:heartbeat:"
  )
  remind_webook2 = new cronJob('00 00 23 * * 5', () =>
    envelope = room: "#we-book"
    robot.send envelope, "<!channel> 明日までだけど大丈夫かなぁ？楽しみー！:heartbeat:"
  )
  remind_webook3 = new cronJob('00 00 11 * * 6', () =>
    envelope = room: "#we-book"
    robot.send envelope, "<!channel> 皆の感想文楽しみだなぁ★今日までだからねっ！٩(๑`ȏ´๑)۶:heartbeat:"
  )

  words = ['だまれよフィッシュ！魚でも釣ってろ！',
           'お前に発言権はない',
           'japanese please',
           'その発言はクリミナルですね',
           'ちょっと何言ってるか分からないです',
           'は？',
           'くさ',
           'うざいくさいうるさい'
           'からの？'
           'ファーｗｗｗｗｗｗ(さんま)',
           'おう、ほんでほんで？',
           'jojiくん、いつもごめんね。本当はあなたの事...',
           'كان حبا من منذ فترة طويلة']
  robot.hear /done$|準備した/i, (msg) ->
    username = msg.message.user.name
    if username == "joji-sekiya"
      msg.send msg.random words
    else
      msg.send "ありがとう" + username + "くん！大好き:heartbeat:"

# 0月 1火 2水 3木 4金 5土 6日
  btimer1_1.start()
  btimer1_2.start()
  btimer1_3.start()
  btimer1_4.start()
  btimer2_1.start()
  btimer2_2.start()
  btimer2_3.start()
  btimer2_4.start()
  remind_exam1.start()
  remind_exam2.start()
  remind_webook1.start()
  remind_webook2.start()
  remind_webook3.start()
  remind_music.start()
  end_work.start()
  remind_mentor_fb.start()
  # robot.respond /PING$/i, (msg) ->
  #   msg.send "@maikishinbo !!!"

# module.exports = (robot) ->
#   robot.respond /PING$/i, (msg) ->
#     msg.send "@maikishinbo!!!"

  # robot.hear /badger/i, (res) ->
  #   res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  #
  # robot.respond /open the (.*) doors/i, (res) ->
  #   doorType = res.match[1]
  #   if doorType is "pod bay"
  #     res.reply "I'm afraid I can't let you do that."
  #   else
  #     res.reply "Opening #{doorType} doors"
  #
  # robot.hear /I like pie/i, (res) ->
  #   res.emote "makes a freshly baked pie"
  #
  # lulz = ['lol', 'rofl', 'lmao']
  #
  # robot.respond /lulz/i, (res) ->
  #   res.send res.random lulz
  #
  # robot.topic (res) ->
  #   res.send "#{res.message.text}? That's a Paddlin'"
  #
  #
  # enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  # leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  #
  # robot.enter (res) ->
  #   res.send res.random enterReplies
  # robot.leave (res) ->
  #   res.send res.random leaveReplies
  #
  # answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  #
  # robot.respond /what is the answer to the ultimate question of life/, (res) ->
  #   unless answer?
  #     res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
  #     return
  #   res.send "#{answer}, but what is the question?"
  #
  # robot.respond /you are a little slow/, (res) ->
  #   setTimeout () ->
  #     res.send "Who you calling 'slow'?"
  #   , 60 * 1000
  #
  # annoyIntervalId = null
  #
  # robot.respond /annoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #     return
  #
  #   res.send "Hey, want to hear the most annoying sound in the world?"
  #   annoyIntervalId = setInterval () ->
  #     res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
  #   , 1000
  #
  # robot.respond /unannoy me/, (res) ->
  #   if annoyIntervalId
  #     res.send "GUYS, GUYS, GUYS!"
  #     clearInterval(annoyIntervalId)
  #     annoyIntervalId = null
  #   else
  #     res.send "Not annoying you right now, am I?"
  #
  #
  # robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
  #   room   = req.params.room
  #   data   = JSON.parse req.body.payload
  #   secret = data.secret
  #
  #   robot.messageRoom room, "I have a secret: #{secret}"
  #
  #   res.send 'OK'
  #
  # robot.error (err, res) ->
  #   robot.logger.error "DOES NOT COMPUTE"
  #
  #   if res?
  #     res.reply "DOES NOT COMPUTE"
  #
  # robot.respond /have a soda/i, (res) ->
  #   # Get number of sodas had (coerced to a number).
  #   sodasHad = robot.brain.get('totalSodas') * 1 or 0
  #
  #   if sodasHad > 4
  #     res.reply "I'm too fizzy.."
  #
  #   else
  #     res.reply 'Sure!'
  #
  #     robot.brain.set 'totalSodas', sodasHad+1
  #
  # robot.respond /sleep it off/i, (res) ->
  #   robot.brain.set 'totalSodas', 0
  #   res.reply 'zzzzz'
