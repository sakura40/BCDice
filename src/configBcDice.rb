# -*- coding: utf-8 -*-

require 'configBcDiceForSystem.rb'

$isDebug = false

$bcDiceVersion = "2.02.29"


$NOTICE_SW = 1;                  # 送信の際に、どちらのコマンドを使うか？(notice=1, msg=0)
$SEND_STR_MAX = 405;             # 最大送信文字数(本来は500byte上限)
$isRollVoidDiceAtAnyRecive = true;       # 発言の度に空ダイスを振るか？
$DICE_MAXCNT = 200;              # ダイスが振れる最大個数
$DICE_MAXNUM = 1000;             # ダイスの最大面数
$ircCode = 6;                    # IRCサーバとの通信に使うコードをRuby::Kconv値で指定 (6:UTF-8)
$isHandSort = true;              # 手札をソートする必要があるか？
$quitCommand = 'お疲れ様';           # 終了用のTalkコマンド
$quitMessage = 'さようなら';        # 終了時のメッセージ
$OPEN_DICE = 'Open Dice!';       # シークレットダイスの出目表示コマンド
$OPEN_PLOT = 'Open Plot!';       # プロットの表示コマンド
$ADD_PLOT = 'PLOT';              # プロットの入力コマンド
$READY_CMD = '#HERE';            # 自分の居るチャンネルの宣言コマンド

# $server = "localhost";            # サーバー
$server = "irc.trpg.net";           # サーバー
$port = 6667;                       # ポート番号
$defaultLoginChannelsText = "#Dice_Test";   # ボットが最初に参加するチャンネル名
$nick = "bcDICE"
$userName = "v"+ $bcDiceVersion     # ユーザー名
$ircName = "rubydice";              # IRCネーム
$defaultGameType = ""               #デフォルトゲームタイプ
$extraCardFileName = ""                #拡張カードファイル名

$iniFileName = 'bcdice.ini'

$allGameTypes = %w{
Airgetlamh
Alsetto
Alshard
Amadeus
Amadeus:Korean
Arianrhod
ArsMagica
BarnaKronika
BattleTech
BeastBindTrinity
BeginningIdol
BeginningIdol:Korean
BladeOfArcana
BloodCrusade
BloodMoon
CardRanker
Chaos_Flare
Chill
Chill3
CrashWorld
Cthulhu
Cthulhu7th
Cthulhu7th:Korean
Cthulhu:Korean
CthulhuTech
DarkBlaze
DemonParasite
DetatokoSaga
DetatokoSaga:Korean
DiceOfTheDead
DoubleCross
Dracurouge
Dracurouge:Korean
DungeonsAndDoragons
EarthDawn
EarthDawn3
EarthDawn4
EclipsePhase
Elric!
Elysion
EmbryoMachine
EndBreaker
EtrianOdysseySRS
FilledWith
FullMetalPanic
GURPS
Garako
GardenOrder
GehennaAn
GeishaGirlwithKatana
GoldenSkyStories
Gorilla
GranCrest
Gundog
GundogZero
GurpsFW
HarnMaster
Hieizan
HouraiGakuen
HuntersMoon
InfiniteFantasia
Insane
Insane:Korean
IthaWenUa
JamesBond
Kamigakari
Kamigakari:Korean
KanColle
KillDeathBusiness
KillDeathBusiness:Korean
LiveraDoll
LogHorizon
LogHorizon:Korean
MagicaLogia
MeikyuDays
MeikyuKingdom
MetalHead
MetallicGuadian
MonotoneMusium
MonotoneMusium:Korean
NJSLYRBATTLE
Nechronica
Nechronica:Korean
NightWizard
NightmareHunterDeep
Nuekagami
OneWayHeroics
Oukahoushin3rd
Paranoia
ParasiteBlood
Pathfinder
Peekaboo
Pendragon
PhantasmAdventure
RecordOfSteam
RokumonSekai2
RoleMaster
RuneQuest
Ryutama
SMTKakuseihen
SRS
Satasupe
ShadowRun
ShadowRun4
SharedFantasia
ShinkuuGakuen
ShinobiGami
ShoujoTenrankai
SwordWorld
SwordWorld2.0
TORG
TORG1.5
TokumeiTenkousei
TokyoNova
Tunnels_&_Trolls
TwilightGunsmoke
Utakaze
WARPS
WaresBlade
Warhammer
WitchQuest
ZettaiReido
}
