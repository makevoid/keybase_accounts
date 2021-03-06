### Keybase Accounts List

Creates a list of VERY FEW github accounts registered on keybase


sidenote: there's also btc branch: http://github.com/makevoid/keybase_accounts/tree/btc

### running:

    ruby keybase_accounts.rb

---

pseudo code (that generated the first implementation):


```ruby
for letter in a..z

  results << execute "keybase search [letter]"



for result in results

  githubs << parse "github:(makevoid)"


display githubs
```



----

### actual code: 

<https://github.com/makevoid/keybase_accounts/blob/master/main.rb>

```ruby
arrays %w(results githubs)

# for letter in ("a".."b") # faster & shorter
for letter in ("a".."z")
  results << execute("keybase search #{letter}")
end

for result in results
  githubs << result.parse("github:(?<gh_user>.+?)\t")
end

githubs.uniq!

display githubs
```

----

### OUTPUT:


List of SOME Keybase users github accounts:


- [ayn](http://github.com/ayn)
- [a2](http://github.com/a2)
- [ahn](http://github.com/ahn)
- [AN](http://github.com/AN)
- [ath88](http://github.com/ath88)
- [ab](http://github.com/ab)
- [arkanosis](http://github.com/arkanosis)
- [aibon](http://github.com/aibon)
- [awk](http://github.com/awk)
- [berrythesoftwarecodeprogrammar](http://github.- com/berrythesoftwarecodeprogrammar)
- [brsata](http://github.com/brsata)
- [qbit](http://github.com/qbit)
- [brycied00d](http://github.com/brycied00d)
- [bm](http://github.com/bm)
- [bnb](http://github.com/bnb)
- [bsr](http://github.com/bsr)
- [bboe](http://github.com/bboe)
- [b10m](http://github.com/b10m)
- [berg](http://github.com/berg)
- [chigh](http://github.com/chigh)
- [cwb](http://github.com/cwb)
- [clee](http://github.com/clee)
- [CraigSansam](http://github.com/CraigSansam)
- [cykedev](http://github.com/cykedev)
- [colinn](http://github.com/colinn)
- [charmander](http://github.com/charmander)
- [cdl](http://github.com/cdl)
- [cynix](http://github.com/cynix)
- [helveticade](http://github.com/helveticade)
- [dan-r](http://github.com/dan-r)
- [dgw](http://github.com/dgw)
- [DefV](http://github.com/DefV)
- [doik](http://github.com/doik)
- [Daniel15](http://github.com/Daniel15)
- [diti](http://github.com/diti)
- [dmnd](http://github.com/dmnd)
- [dcsg](http://github.com/dcsg)
- [dwc](http://github.com/dwc)
- [ddeimeke](http://github.com/ddeimeke)
- [eqdw](http://github.com/eqdw)
- [ebello](http://github.com/ebello)
- [egp](http://github.com/egp)
- [esden](http://github.com/esden)
- [edk0](http://github.com/edk0)
- [epf](http://github.com/epf)
- [ebroder](http://github.com/ebroder)
- [elia](http://github.com/elia)
- [epirat](http://github.com/epirat)
- [f](http://github.com/f)
- [flopp](http://github.com/flopp)
- [fiws](http://github.com/fiws)
- [fania](http://github.com/fania)
- [thefinn93](http://github.com/thefinn93)
- [fil](http://github.com/fil)
- [fud](http://github.com/fud)
- [f0i](http://github.com/f0i)
- [fzero](http://github.com/fzero)
- [frsk](http://github.com/frsk)
- [gkra](http://github.com/gkra)
- [gcg](http://github.com/gcg)
- [gasi](http://github.com/gasi)
- [gellenburg](http://github.com/gellenburg)
- [gbbowers](http://github.com/gbbowers)
- [gzur](http://github.com/gzur)
- [guanix](http://github.com/guanix)
- [glyph](http://github.com/glyph)
- [glv](http://github.com/glv)
- [gvn](http://github.com/gvn)
- [helgi](http://github.com/helgi)
- [hynek](http://github.com/hynek)
- [hsleewis](http://github.com/hsleewis)
- [hewsut](http://github.com/hewsut)
- [href](http://github.com/href)
- [heph](http://github.com/heph)
- [hobu](http://github.com/hobu)
- [hsatac](http://github.com/hsatac)
- [hmarr](http://github.com/hmarr)
- [ytti](http://github.com/ytti)
- [isho](http://github.com/isho)
- [isaacs](http://github.com/isaacs)
- [irrg](http://github.com/irrg)
- [ivanvc](http://github.com/ivanvc)
- [ibews](http://github.com/ibews)
- [iiamit](http://github.com/iiamit)
- [ingben](http://github.com/ingben)
- [ihdl](http://github.com/ihdl)
- [01101110](http://github.com/01101110)
- [bit](http://github.com/bit)
- [bit](http://github.com/bit)
- [wintrmute](http://github.com/wintrmute)
- [jbr](http://github.com/jbr)
- [jvt](http://github.com/jvt)
- [jhgg](http://github.com/jhgg)
- [j0ni](http://github.com/j0ni)
- [jmtd](http://github.com/jmtd)
- [jbyers](http://github.com/jbyers)
- [jodal](http://github.com/jodal)
- [kitchen](http://github.com/kitchen)
- [kgz](http://github.com/kgz)
- [kuka](http://github.com/kuka)
- [klr](http://github.com/klr)
- [kr](http://github.com/kr)
- [kcr](http://github.com/kcr)
- [kmf](http://github.com/kmf)
- [kyhwana](http://github.com/kyhwana)
- [koke](http://github.com/koke)
- [lt](http://github.com/lt)
- [lg](http://github.com/lg)
- [lx4r](http://github.com/lx4r)
- [lra](http://github.com/lra)
- [lhl](http://github.com/lhl)
- [lox](http://github.com/lox)
- [lrz](http://github.com/lrz)
- [lvh](http://github.com/lvh)
- [l42y](http://github.com/l42y)
- [ltw](http://github.com/ltw)
- [mat813](http://github.com/mat813)
- [maxtaco](http://github.com/maxtaco)
- [mdz](http://github.com/mdz)
- [m4p](http://github.com/m4p)
- [mose](http://github.com/mose)
- [mko](http://github.com/mko)
- [myles](http://github.com/myles)
- [mkaysi](http://github.com/mkaysi)
- [mipefin](http://github.com/mipefin)
- [mv](http://github.com/mv)
- [nyr](http://github.com/nyr)
- [natm](http://github.com/natm)
- [ntwb](http://github.com/ntwb)
- [nux](http://github.com/nux)
- [nstanke](http://github.com/nstanke)
- [neersighted](http://github.com/neersighted)
- [nz](http://github.com/nz)
- [n0g](http://github.com/n0g)
- [nuc-gr](http://github.com/nuc-gr)
- [notmyname](http://github.com/notmyname)
- [olabini](http://github.com/olabini)
- [ob](http://github.com/ob)
- [ojhp](http://github.com/ojhp)
- [omerk](http://github.com/omerk)
- [owo](http://github.com/owo)
- [olea](http://github.com/olea)
- [oej](http://github.com/oej)
- [omercnet](http://github.com/omercnet)
- [OJ](http://github.com/OJ)
- [ozan](http://github.com/ozan)
- [oztu](http://github.com/oztu)
- [plu](http://github.com/plu)
- [pjv](http://github.com/pjv)
- [paulyoung](http://github.com/paulyoung)
- [psgs](http://github.com/psgs)
- [pc](http://github.com/pc)
- [phkn](http://github.com/phkn)
- [pat](http://github.com/pat)
- [pors](http://github.com/pors)
- [pd](http://github.com/pd)
- [poliva](http://github.com/poliva)
- [qbit](http://github.com/qbit)
- [quinncomendant](http://github.com/quinncomendant)
- [qbi](http://github.com/qbi)
- [qmx](http://github.com/qmx)
- [qmahoney](http://github.com/qmahoney)
- [qrohlf](http://github.com/qrohlf)
- [qikcoin](http://github.com/qikcoin)
- [qguv](http://github.com/qguv)
- [pah](http://github.com/pah)
- [quine](http://github.com/quine)
- [r](http://github.com/r)
- [remz-jay](http://github.com/remz-jay)
- [r8](http://github.com/r8)
- [rpj](http://github.com/rpj)
- [rvdm](http://github.com/rvdm)
- [r38y](http://github.com/r38y)
- [rixth](http://github.com/rixth)
- [ryck](http://github.com/ryck)
- [ronbo](http://github.com/ronbo)
- [ralphholzmann](http://github.com/ralphholzmann)
- [sjm42](http://github.com/sjm42)
- [sd](http://github.com/sd)
- [shizmob](http://github.com/shizmob)
- [srcr](http://github.com/srcr)
- [svenja](http://github.com/svenja)
- [skpy](http://github.com/skpy)
- [semu](http://github.com/semu)
- [Sidnicious](http://github.com/Sidnicious)
- [sj26](http://github.com/sj26)
- [sco](http://github.com/sco)
- [teunvink](http://github.com/teunvink)
- [tln](http://github.com/tln)
- [Tux](http://github.com/Tux)
- [trey](http://github.com/trey)
- [tbc](http://github.com/tbc)
- [tlef](http://github.com/tlef)
- [tt](http://github.com/tt)
- [trq](http://github.com/trq)
- [chigh](http://github.com/chigh)
- [trhall](http://github.com/trhall)
- [udfalkso](http://github.com/udfalkso)
- [Utanith](http://github.com/Utanith)
- [utobi](http://github.com/utobi)
- [unfo](http://github.com/unfo)
- [unnu](http://github.com/unnu)
- [umaar](http://github.com/umaar)
- [usmanbashir](http://github.com/usmanbashir)
- [usmanbashir](http://github.com/usmanbashir)
- [uemit](http://github.com/uemit)
- [ussjoin](http://github.com/ussjoin)
- [underyx](http://github.com/underyx)
- [vyu](http://github.com/vyu)
- [vemy](http://github.com/vemy)
- [victorgama](http://github.com/victorgama)
- [vamsiraju](http://github.com/vamsiraju)
- [velzi](http://github.com/velzi)
- [voz](http://github.com/voz)
- [v3gard](http://github.com/v3gard)
- [exploid](http://github.com/exploid)
- [vkz](http://github.com/vkz)
- [vindia](http://github.com/vindia)
- [ws](http://github.com/ws)
- [willnorris](http://github.com/willnorris)
- [worr](http://github.com/worr)
- [wmoss](http://github.com/wmoss)
- [woet](http://github.com/woet)
- [wosc](http://github.com/wosc)
- [wrl](http://github.com/wrl)
- [williamhogman](http://github.com/williamhogman)
- [wbond](http://github.com/wbond)
- [walt](http://github.com/walt)
- [xPaw](http://github.com/xPaw)
- [xsb](http://github.com/xsb)
- [xmob](http://github.com/xmob)
- [xorl](http://github.com/xorl)
- [xxv](http://github.com/xxv)
- [xe](http://github.com/xe)
- [xnrand](http://github.com/xnrand)
- [xtian](http://github.com/xtian)
- [xero](http://github.com/xero)
- [ytti](http://github.com/ytti)
- [yatil](http://github.com/yatil)
- [yetzt](http://github.com/yetzt)
- [yovko](http://github.com/yovko)
- [yacn](http://github.com/yacn)
- [yozlet](http://github.com/yozlet)
- [ycros](http://github.com/ycros)
- [ys](http://github.com/ys)
- [yannk](http://github.com/yannk)
- [yaakov](http://github.com/yaakov)
- [zifnab06](http://github.com/zifnab06)
- [zg](http://github.com/zg)
- [zacwest](http://github.com/zacwest)
- [zyber17](http://github.com/zyber17)
- [zdw](http://github.com/zdw)
- [zigg](http://github.com/zigg)
- [zts](http://github.com/zts)
- [zk](http://github.com/zk)
- [zrax](http://github.com/zrax)
- [zeekay](http://github.com/zeekay)




powered by (http://github.com/makevoid/keybase_accounts)

@makevoid
