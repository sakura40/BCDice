# -*- coding: utf-8 -*-
# frozen_string_literal: true

class KurayamiCrying < DiceBot
  # ゲームシステムの識別子
  ID = 'KurayamiCrying'

  # ゲームシステム名
  NAME = 'クラヤミクライン'

  # ゲームシステム名の読みがな
  SORT_KEY = 'くらやみくらいん'

  # ダイスボットの使い方
  HELP_MESSAGE = "・アクシデント表（ACT）\n"

  def rollDiceCommand(command)
    case command
    when /^ACT(\d+)$/i
      number = Regexp.last_match(1).to_i
      info = @@tables["ACT"]
      name = info[:name]
      table = getTableInfoFromExtraTableText(info[:table])

      text = table[number]

      result = "#{name}(#{number}) ＞ #{text}"
      return text
    end
    result = getTableCommandResult(command, @@tables)
    return result unless result.nil?
  end

  @@tables =
    {

      'ACT' => {
        :name => "アクシデント表",
        :type => '1D10',
        :table => <<'TABLE_TEXT_END'
頭の中が黒く染まってゆく、怖い、苦しい。気持ち悪い！でも…なんだか少しだけ、すがすがしい。あなたは「発狂」する。すでに「発狂」している場合、「理性」を2点失う。
待って、今のはナシ！調子が愚かったっていうか、ちょっと違うことしちゃったからさ…もう1回やらせてよ、ね？失敗した「判定」を再度やり直す。ただし、前回と同じ「能力値」を使うことはできす、進行役と「交渉」を行った扱いとなる（代替判定により「浸食」が2点増加する）。
こっちは必死にやってるってのに、まったく、アイツめ……！ あなたが「ツナガリ」を結んでいる主人公を任意に1人選び、「感情」を変更する。この際、必す「負の惑情」を選ばなければならない。「ツナガリ」を結んでいる主人公がいない場合、ダイスを振り直し、再度「アクシデント表」に当てはめる。
不意を突かれたあなたは、とっさに化物を攻撃する！……確かに化物に見えたのだ。しかし、あなたが手にかけたのは見知った顔だった。あなたが正の「ツナガリ」を結んでいる主人公をランダムに1人選び、2点のダメージを与える。正の「ツナガリ」を結んでいる主人公がいない場合、ダイスを振り直し、再度「アクシデント表」に当てはめる。
さっきからずっと、不気味な視線を感じる……どうやら、良くない存在に目をつけられてしまったようだ。「怪異」があなたに一方的な「ツナガリ」を獲得する。すでに「怪異」から「ツナガリ」を獲得されている場合、ダイスを振り直し、再度「アクシデント表」に当てはめる。
ぶつんと頭の中で音がする。あれっ？誰かのことを考えていたような……なんだか記憶が霞んで、思い出せない。あなたが獲得している「ツナガリ」をランダムに1つ失う（「継続的なツナガリ」である場合、セッション終了後に再度獲得する）。「ツナガリ」が1つもない場合、ダイスを振り直し、再度「アクシデント表」に当てはめる。
ぞわりと背中に懇寒が走る。自分を取り巻く「流れ」──運命に似た何かが歪んでしまったような、おぞましい予感が胸を走る。「確保」しているダイスの目が「10」になる。ダイスを「確保」していない場合、新たに「10」を「確保」する。すでに「10」の目を「確保」している場合、ダイスを振り直し、再度「アクシデント表」に当てはめる。
違う……違う、違う。これは自分のせいじゃない。いや、きっと何かの間違いだ。そう、あいつのせいに決まってる！進行役があなた以外の主人公をランダムに1人選ぷ（誰を選んだか参加者に教えてはならない） 。選ばれた主人公が次に判定を行った際、進行役は、最も低い数字を示しているダイスの目を「10」に変更する。
あぁ……見つからない。アレがないとダメなのに。一体どうしたら──！「アイテム」をランダムに1つ失う（「継続品」である場合、センョン終了後に再度獲得する）。「アイテム」を1つも所持していない場合、「アイテム」を所持する主人公をランダムに1人選び、2点のダメージを与え、「アイテム」を1つ奪い取る。主人公が誰も「アイテム」を所持していない場合、「理性」を2点失う。
まるで自分を支える何かが失われたように、あなたはその場に立ち尽くす。諦めと絶望が心を支配する。ああ、そうか。これが、「心が折れる」ということか……。あなたは「理性」を4点失う。
TABLE_TEXT_END
      },

    }

  setPrefixes(["ACT.*"] + @@tables.keys)
end
