require 'minitest/autorun'
require 'day_2/day_2'

class Day2Test < Minitest::Test
  def test_zero
    assert_equal 12, Day2.new(TEST_INPUT).checksum
  end

  def test_one
    assert_equal 6448, Day2.new(INPUT).checksum
  end

  def test_three
    assert_equal 'fgij', Day2.new(TEST_INPUT2).common
  end

  def test_common?
    id1 = Day2::ID.new 'abcdef'
    id2 = Day2::ID.new 'abcref'

    assert id1.common?(id2)
  end

  def test_common?
    id1 = Day2::ID.new 'abcdef'
    id2 = Day2::ID.new 'asdfgh'

    refute id1.common?(id2)
  end

  def test_four
    assert_equal 'evsialkqyiurohzpwucngttmf', Day2.new(INPUT).common
  end
  
  TEST_INPUT = <<-END
abcdef
bababc
abbcde
abcccd
aabcdd
abcdee
ababab
  END

  TEST_INPUT2 = <<-END
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
  END

  INPUT = <<-END
evsialkqydurohxqpwbcugtjmh
evsialkqydurohxzssbcngtjmv
fvlialkqydurohxzpwbcngujmf
nvsialkqydorohxzpwpcngtjmf
evsialjqydnrohxypwbcngtjmf
vvsialyqxdurohxzpwbcngtjmf
yvsialksydurowxzpwbcngtjmf
evsillkqydurbhxzpmbcngtjmf
ivsialkqyxurshxzpwbcngtjmf
ejsiagkqyduhohxzpwbcngtjmf
evsialkqldurohxzpcbcngtjmi
evsialkqydurohxzpsbyngtkmf
ersialkeydurohxzpwbcngtpmf
evsialuqzdkrohxzpwbcngtjmf
evswulkpydurohxzpwbcngtjmf
evsialkqyiurohxzpwucngttmf
evtialkqydurphxzywbcngtjmf
evsialkzyiurohxzpwbcxgtjmf
evsiaykqydurohxzpwbcggtjuf
evxqalkqydurohmzpwbcngtjmf
eisralkqydurohxzpdbcngtjmf
evsfalkqydurohxzpwbangtjwf
evbialkqydurohxzawbcngtjmg
evsialkqydrrohxrpcbcngtjmf
evsialkqycurohxzpvbcngtjkf
evsialkqsdudohxzpwbcnotjmf
evsiackqydurohxzpmbsngtjmf
evsialmqykurohxzpwbfngtjmf
evsialsqydurohxzpwucngtjxf
tvsialkqyeurohxzpwbcrgtjmf
zvsialkqydbrohxzpwbcnltjmf
evsmbskqydurohxzpwbcngtjmf
evsialkqydurohxzpwbcngpgmt
evsialkqydurlyezpwbcngtjmf
evoialkqyturohxzpwbcnjtjmf
evsialkqydurohxspkfcngtjmf
evsiaikqydurohxjpwbcngtjmd
evsialkyydurohxzvwbcngtjmc
svsialkqyduhohxzpwbhngtjmf
eysillkqydurohxzhwbcngtjmf
evsialkqyduetaxzpwbcngtjmf
evsialkqxdurshxzpwbcngtjmb
evsiadkqydwrovxzpwbcngtjmf
evsialkqydurokxzpwbcngjjef
evskalkqymurohxzpybcngtjmf
cvsialkqydurohxzpwbcnbtjma
evsialkqydurohxzawhcngtjuf
evsiahkqfduroixzpwbcngtjmf
evsivlkqyduroqxzpwbctgtjmf
evsiarkqyduroixzywbcngtjmf
evspalkqydurohxzpwlcngxjmf
eesialkqydurohxzpalcngtjmf
gvsualkqydurohxzpwbmngtjmf
evsialkqydurlhxzpwbcngsjmq
evsialhqydfrohxopwbcngtjmf
evzialkqydsrohxzpwbcngtjmw
evbpalkqydurbhxzpwbcngtjmf
mvsialkqydurohxzpwbcnghjmr
evsialkqsdurohxzpkbcngtjxf
ejkialktydurohxzpwbcngtjmf
evsialkqyauoohxzpwbqngtjmf
evsiklkyyduroqxzpwbcngtjmf
evgialkqydurohxzpwocngthmf
ebsialkqydcrohxzpwbcngtbmf
evsialkqysurohxzpwfingtjmf
evsialkqddurmhxzpwbnngtjmf
evsialkqydurohxoiwwcngtjmf
evsialkqydurohpzkzbcngtjmf
vvsealkqydurorxzpwbcngtjmf
evsialkqyduroqxzpwlungtjmf
eviialkqiyurohxzpwbcngtjmf
evzsalkqyaurohxzpwbcngtjmf
exsialkqydurohfzpwbwngtjmf
evsialkqyduruhxkpwbcnytjmf
essiatkqydurohxzpwbxngtjmf
evsialkqyduroamzpwbcngtjcf
wvsialkqyduruhxzpwbcnxtjmf
evsialkqydurohxgpwbcngtjeh
evsialfqxdurohxzpwbcngtomf
evsialkqyourghxzpwbcngtbmf
evsoaokqydurohxzpwbcngtamf
evsialpqydurohxzpwccxgtjmf
evsialkqzdurxhxgpwbcngtjmf
ezsialkqmdurohxzpwbcngtjmi
cvsialjeydurohxzpwbcngtjmf
evsialkqydurocxupwbcvgtjmf
evscalkqydtrohxzpebcngtjmf
evjialkqyduiohxzpabcngtjmf
evsialjqyduruhxzppbcngtjmf
evsialkqydurfhxzpwbcuqtjmf
evsialkqyiurohizpwucngttmf
evsialiqydurrhxzpwbcngdjmf
evbialkqywurohxzpwhcngtjmf
evsialkqyduloyxzpwbqngtjmf
evsialxqyduzohxzpwbqngtjmf
vvsialkqydurohxzpwbcnqpjmf
evsialksydurohxzcwbmngtjmf
pvsialkqydurohxzpwucngtjvf
evsialkqydurohmkpwbcngtfmf
mvsialkqydurphyzpwbcngtjmf
evsialkqydyrohxzhwbcnitjmf
evsialokydurozxzpwbcngtjmf
evsialkqyduroexfcwbcngtjmf
evsiavkqydurohxzpwbcnmtjme
evsiawkqydurohxzpwbcngojjf
evsialkaydurohxzpwfcngtjff
evsialkaydurohxzpwbcngtjpb
gvsialkqyburorxzpwbcngtjmf
evszalkqydurphxzpwocngtjmf
evsualkqyduropxzpwbcngejmf
evsitlkqydurshxzpwbcngtkmf
evbixlkqydrrohxzpwbcngtjmf
elsialkqydprohxzpwbcngtrmf
evsialkqydurohbzpwbcggtjmc
evtoalqqydurohxzpwbcngtjmf
evsralhqydurohxzowbcngtjmf
evsialkhydurohxzlsbcngtjmf
evsialkqydurohxvpwbcnuujmf
evsialkqydurocxzuwbcngtjmi
evsialkqndyrokxzpwbcngtjmf
evsialkqydurywfzpwbcngtjmf
evsialkqydurohxzwwbcngthms
eqsiahkqydurohxzpwbyngtjmf
evsdalkqydurohxzpwbcnjkjmf
evsialkqyddrohplpwbcngtjmf
evshalkqydurohxzpfxcngtjmf
evvialkqydurohxapwbcngtjmh
evsialkqyduvohxzpwbcnnvjmf
evsiblkqedurohxzpwbkngtjmf
evsvalkqfdutohxzpwbcngtjmf
evsialjqydurohxzpwbcnctjsf
evsialkxywurohxdpwbcngtjmf
evsiagkqydurohxzpwzcjgtjmf
ebsialkqydurohxzpxfcngtjmf
evsialkqysfrohxzpwbcngtjlf
evvialkqyqurwhxzpwbcngtjmf
evxialkqydurohxzpwgcnrtjmf
vvsillkqydurohxzpwbcvgtjmf
evsiwlkqyduoohxzpwbcngtjxf
evsialkqypurohezpwbcngtjwf
evbialkqydurohxipwbcnftjmf
evsiakkqyduyohxzpwbcngtjmu
evsialkqydurohzzpwxqngtjmf
evsialkqykurkhxzpwocngtjmf
dvriplkqydurohxzpwbcngtjmf
evsialkqgdurohxzpwbmnctjmf
evsialkqyuurohxzpwtcngtjmj
wvsialkqydurohxzpwbchgejmf
eusimlsqydurohxzpwbcngtjmf
evsialkqydqrohxzhwbcngtjmh
wvswalkqydurohxzpwbcngjjmf
evsialkqyourohxzkwbcngttmf
evaialkqydurohxzbubcngtjmf
evfialkqydueohxzpwbclgtjmf
evrialkqydurohxzpwbcnctjmh
evsiaojqydxrohxzpwbcngtjmf
evsualkqywuxohxzpwbcngtjmf
evsialkdydrzohxzpwbcngtjmf
evlialkqyfurohxzpwbcnotjmf
epsialkqydujohxzpwbcngtjif
evsialkqyaucohxgpwbcngtjmf
lvsialaqydurohxzpwbcngtjzf
evsialkgydurohezpwbcngtjmo
lvsialkqydurosxwpwbcngtjmf
evsiaekqyqurohxzpvbcngtjmf
evsiapkqydirohxzpwbzngtjmf
zvsixlkwydurohxzpwbcngtjmf
evaialkqyduoohxzpwbcngtjkf
evsialcqedurohxzpwbcngtjmc
evjialkgydurohxzpwbwngtjmf
evsialkqcdurohxzpwbcpgojmf
evsialkqkdurohxzlwbcngtrmf
eosiylkzydurohxzpwbcngtjmf
evsialkqydurohhzpwscnmtjmf
evsiallqydurobxzpwbxngtjmf
evsialkqydurohwztwhcngtjmf
evsiallqydurohxzpwbcygjjmf
evsiabkqywurohxzpwbcngtjmy
evsiackqydzrohxznwbcngtjmf
evsiazkqzdurooxzpwbcngtjmf
evsialcqydurghxzpwbcngtjmc
yvsiaxkqydurohxzpwbcxgtjmf
evsiylkqgdhrohxzpwbcngtjmf
lvsialkqydurohxgcwbcngtjmf
evsiglkqydurohxzpwbvngzjmf
evsialkqyvurohxzpwbcngtjnz
evsialkgydueohxzpwbcpgtjmf
cvsiavkqyddrohxzpwbcngtjmf
evsialklyrurohxzpwbcngtjff
eisialkqyduwohxzpwbcngcjmf
evsialkqydrrihwzpwbcngtjmf
easialkqydurohxzpwbcnltrmf
evsialfqydurohxzpybcnytjmf
eqsialkqycurohxzywbcngtjmf
evsitlkqmdurohxzpwbcngtjmx
evsiclsqyduroixzpwbcngtjmf
elsialrqydurohxzpwmcngtjmf
evsiapkqodurohxzpwbcogtjmf
evstalkeydurohxzpibcngtjmf
evsihlkqyqurohxzpwblngtjmf
euszalkqydurohxipwbcngtjmf
ezsialksydurohxzpwbcngfjmf
eisialkdydurohxzpwbcngtumf
evsirlkaydprohxzpwbcngtjmf
evsiklkqydnrohxzpwbcngtjmu
evsialkqydnuohxzpwbcngtjmu
eksialkqydurohxztwfcngtjmf
evlialkqedurohxzpwbhngtjmf
evqialkqydurohxzpubcngtjpf
evsialkwydurohwzpwbcnmtjmf
evsiaokqcdurohxzpwbcngtjcf
evsialkkyfurohxzpvbcngtjmf
evsialkqyduromxzpwqcngtimf
evsialkqydumohxzpwbcnmtjsf
evsialddydurehxzpwbcngtjmf
evsialkqydurohxzpobcnptjmk
evsiagkqydurohhzpwbcxgtjmf
evsfalkqydurohszpwbangtjmf
evgialkzyduqohxzpwbcngtjmf
evaialkqzdurohxzpwbcngtjmo
evsialkqyqurohxjpwbcnntjmf
evsialkjydybohxzpwbcngtjmf
evskalgqydurohxzrwbcngtjmf
evsialkqydurohxzpjbcymtjmf
evsialkqqdurohxzpybcngtjyf
evsialkqydqrbhxzpwbcngtjmj
evssalaqrdurohxzpwbcngtjmf
mvsialkfydurohxzpwbcngtjmk
evsialkqwdurohxzpwgcngtjdf
evqkalkqydurohxzpwbcngajmf
evbialkqydurohxzpibcngejmf
evszalkqydurbhxzpwbcngtjsf
evsialkqydurohxepwbcngtjjo
evsialkqcdubmhxzpwbcngtjmf
evsiarkqyduroaxzpwbcngtjmp
evsiakkqyduzohczpwbcngtjmf
evtualkqydurofxzpwbcngtjmf
ejsialkqvdurohzzpwbcngtjmf
evsialkqydurohczpwbcngqvmf
svsianfqydurohxzpwbcngtjmf
evsialiqydurohxzpwbcngzqmf
ejsialhqydurohxzpwjcngtjmf
evpialkqydurohxzpwbcnbtjff
evsialkuyvurohxzpwbcngtjkf
eqsialkqydurohxzpwbcnwtcmf
evsiatkqydkrohxzpwkcngtjmf
evsialkqydurohxzpebciytjmf
evsialkqydrrohxzpwtcngtfmf
evsialkqjducohxzpwycngtjmf
evsialkqydurohxzpwicnxtjnf
  END
end