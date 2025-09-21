{include file='Header.tpl'}

<div class="sample">
<h2>自動見積りフォーム</h2>

<section>
<div class="auto">
  <div class="auto-img"><img src="/img/2017/pub-img.jpg" width="166" height="247" alt=""/></div><p>自動見積を希望される方は、下記の質問項目にお答えください。<br>
    空白欄がある場合は（おすすめ）とある項目で、御見積します。<br>
    すべての項目の入力が済みましたら、一番下にある<br>
    「この内容で見積する」というボタンを押してください。<br>
    見積金額を明示し、<br>
    お客様の情報を入力していただくページへと進みます。<br>
    なお、見積内容と金額、お客様の入力情報の確認のため、<br>
    すべてを入力し終わった後に、確認のメールを１通、<br>
    お送りさせていただきます。</p>
    <div class="clear"><hr></div>
</div>
</section>

<div class="entry form">
<h4>1.見積入力</h4>
<form name="frmInput" method="post" action="">
  <div>
    <h3>執筆</h3>
    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="{$smarty.const.DEF_WRITE_A}"{if $arrInit[$smarty.const.DEF_EST_WRITE] == $smarty.const.DEF_WRITE_A} checked{/if}>
    執筆を依頼する<span class="red">（オススメ）</span></label><br />
    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="{$smarty.const.DEF_WRITE_B}"{if $arrInit[$smarty.const.DEF_EST_WRITE] == $smarty.const.DEF_WRITE_B} checked{/if}>
    リライト（あなたの原稿をもとにプロが書き直し）</label><br />
    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="{$smarty.const.DEF_WRITE_C}"{if $arrInit[$smarty.const.DEF_EST_WRITE] == $smarty.const.DEF_WRITE_C} checked{/if}>
    自分で書く(無料)</label>
  
  </div>
{*
▼[2018-06-03] 削除
  <div class="side-20">
  <h3>原稿の状態</h3>
  <span>※上記の質問で、「自分で書く」を選択した方のみ、右の項目にお答えください）」</span><br />
    <label><input name="input[{$smarty.const.DEF_EST_NOTES}]" type="radio" value="{$smarty.const.DEF_STATE_A}"{if $arrInit[$smarty.const.DEF_EST_NOTES] == $smarty.const.DEF_STATE_A} checked{/if}>
    テキストデータ<span>（ワードや一太郎）　無料</span></label><br />
    <label><input name="input[{$smarty.const.DEF_EST_NOTES}]" type="radio" value="{$smarty.const.DEF_STATE_B}"{if $arrInit[$smarty.const.DEF_EST_NOTES] == $smarty.const.DEF_STATE_B} checked{/if}>
    手書き原稿<span>（目安：１字0.55円　ex.５万字で27500円）</span></label>
  </div>

  <div>
    <h3>校正（誤字、脱字のチェック）</h3>
    <label><input name="input[{$smarty.const.DEF_EST_EMEND}]" type="radio" value="{$smarty.const.DEF_MISPRINT_A}"{if $arrInit[$smarty.const.DEF_EST_EMEND] == $smarty.const.DEF_MISPRINT_A} checked{/if}>あり</label><span>（目安：１字0.5円　ex.５万字で25000円）</span><label><span class="red">（オススメ）</span></label><br />
    <label><input name="input[{$smarty.const.DEF_EST_EMEND}]" type="radio" value="{$smarty.const.DEF_MISPRINT_B}"{if $arrInit[$smarty.const.DEF_EST_EMEND] == $smarty.const.DEF_MISPRINT_B} checked{/if}>なし　無料</label><br />
    <span>※「執筆」の項目で「自分で書く」以外を選択された場合、校正費用は執筆費用に含まれますので、チェックマークを入れる必要はありません。万が一、入力しても、見積には反映しませんので、ご安心ください。</span>
  </div>
▲[2018-06-03] 削除
*}
  <div>
    <h3>書籍体裁<span class="modal-q"><a href="https://www.publishing-house.jp/flow.html#10" target="_blank">?</a></span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_COVER}]" type="radio" value="{$smarty.const.DEF_BOOK_SOFT}"{if $arrInit[$smarty.const.DEF_EST_COVER] == $smarty.const.DEF_BOOK_SOFT} checked{/if}>
    並製　ソフトカバー　<span class="red">（オススメ）</span></label>
    <label><input name="input[{$smarty.const.DEF_EST_COVER}]" type="radio" value="{$smarty.const.DEF_BOOK_HARD}"{if $arrInit[$smarty.const.DEF_EST_COVER] == $smarty.const.DEF_BOOK_HARD} checked{/if}>
    上製　ハードカバー　</label>
  </div>

  <div>
    <h3>書籍の種類</h3>
    <label><input name="input[{$smarty.const.DEF_EST_TYPE}]" type="radio" value="{$smarty.const.DEF_TYPE_OTHERS}"{if $arrInit[$smarty.const.DEF_EST_TYPE] != $smarty.const.DEF_TYPE_MEDICAL} checked{/if}>
    自伝・小説・その他　</label>
  <label><input name="input[{$smarty.const.DEF_EST_TYPE}]" type="radio" value="{$smarty.const.DEF_TYPE_MEDICAL}"{if $arrInit[$smarty.const.DEF_EST_TYPE] == $smarty.const.DEF_TYPE_MEDICAL} checked{/if}>
    医学書・ビジネス書・実用書　</label>
    </div>

  <div class="number">
    <h3>部数<span>※アマゾン販売をご希望の場合は、３０部以上、一般書店流通は、３００部をお選びください</span><span class="modal-q"><a href="https://www.publishing-house.jp/flow.html#07" target="_blank">?</a></span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_J}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_J} checked{/if}>
    １０部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_K}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_K} checked{/if}>
    ２０部</label>
  　<label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_H}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_H} checked{/if}>
    ３０部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_I}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_I} checked{/if}>
    ５０部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_A}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_A} checked{/if}>
    １００部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_B}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_B} checked{/if}>
    ２００部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_C}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_C} checked{/if}>
    ３００部<span class="red">（オススメ）</span></label><br />
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_D}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_D} checked{/if}>
    ５００部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_E}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_E} checked{/if}>
    １０００部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_F}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_F} checked{/if}>
    ２０００部</label>
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_G}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_G} checked{/if}>
    ３０００部</label> <br clear="clear">
  </div>

  <div class="number">
    <h3>ページ数<span class="modal-q"><a href="https://www.publishing-house.jp/flow.html#08" target="_blank">?</a></span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_K}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_K} checked{/if}>
    ３２ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_L}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_L} checked{/if}>
    ４８ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_M}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_M} checked{/if}>
    ６４ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_N}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_N} checked{/if}>
    ８０ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_O}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_O} checked{/if}>
    ９６ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_A}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_A} checked{/if}>
    １１２ｐ</label>　<br />
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_B}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_B} checked{/if}>
    １２８ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_C}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_C} checked{/if}>
    １４４ｐ<span class="red">（オススメ）</span></label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_D}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_D} checked{/if}>
    １６０ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_E}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_E} checked{/if}>
    １７６ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_F}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_F} checked{/if}>
    １９２ｐ{* [2018-06-03] 削除<span class="red">（オススメ）</span>*}</label>　<br />
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_G}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_G} checked{/if}>
    ２０８ｐ<span class="red">一般的な書籍</span></label>　
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_H}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_H} checked{/if}>
    ２２４ｐ　</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_I}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_I} checked{/if}>
    ２４０ｐ</label>　
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_J}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_J} checked{/if}>
    ２５６ｐ</label>
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_P}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_P} checked{/if}>
    ２７２ｐ</label>　
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_Q}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_Q} checked{/if}>
    ２８８ｐ</label>
     <br clear="clear">
  <span class="green-bk">（含まれるカラーページ）</span>
<label><input name="input[{$smarty.const.DEF_EST_COLAR}]" type="radio" value="{$smarty.const.DEF_COLAR_B}"{if $arrInit[$smarty.const.DEF_EST_COLAR] == $smarty.const.DEF_COLAR_B} checked{/if}>８ｐ</label>　
<label><input name="input[{$smarty.const.DEF_EST_COLAR}]" type="radio" value="{$smarty.const.DEF_COLAR_C}"{if $arrInit[$smarty.const.DEF_EST_COLAR] == $smarty.const.DEF_COLAR_C} checked{/if}>１６ｐ</label>
<label><input name="input[{$smarty.const.DEF_EST_COLAR}]" type="radio" value="{$smarty.const.DEF_COLAR_D}"{if $arrInit[$smarty.const.DEF_EST_COLAR] == $smarty.const.DEF_COLAR_D} checked{/if}>全ページ</label>　
<label><input name="input[{$smarty.const.DEF_EST_COLAR}]" type="radio" value="{$smarty.const.DEF_COLAR_A}"{if $arrInit[$smarty.const.DEF_EST_COLAR] == $smarty.const.DEF_COLAR_A} checked{/if}>なし</label>
  
  </div>

  <div class="number">
    <h3>大きさ<span class="modal-q"><a href="https://www.publishing-house.jp/flow.html#09" target="_blank">?</a></span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_A}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_A} checked{/if}>
    四六判<span class="red">（オススメ）</span></label>
  
    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_B}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_B} checked{/if}>
    Ｂ６判 </label>
    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_C}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_C} checked{/if}>
    Ａ５判</label>
    
    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_D}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_D} checked{/if}>
    Ｂ５判</label>
    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_E}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_E} checked{/if}>
    Ａ４判</label> <br clear="clear">
    
  </div>

{* ▼[2018-06-03] 追加 *}
  <div class="number">
    <h3>図版イラスト挿入　※当社書き下ろしの場合</h3>
    <label><input name="input[{$smarty.const.DEF_EST_IMAGE}]" type="radio" value="{$smarty.const.DEF_IMAGE_B}"{if $arrInit[$smarty.const.DEF_EST_IMAGE] == $smarty.const.DEF_IMAGE_B} checked{/if}>５点</label>
    <label><input name="input[{$smarty.const.DEF_EST_IMAGE}]" type="radio" value="{$smarty.const.DEF_IMAGE_C}"{if $arrInit[$smarty.const.DEF_EST_IMAGE] == $smarty.const.DEF_IMAGE_C} checked{/if}>１０点</label>
    <label><input name="input[{$smarty.const.DEF_EST_IMAGE}]" type="radio" value="{$smarty.const.DEF_IMAGE_D}"{if $arrInit[$smarty.const.DEF_EST_IMAGE] == $smarty.const.DEF_IMAGE_D} checked{/if}>１５点</label>
    <label><input name="input[{$smarty.const.DEF_EST_IMAGE}]" type="radio" value="{$smarty.const.DEF_IMAGE_E}"{if $arrInit[$smarty.const.DEF_EST_IMAGE] == $smarty.const.DEF_IMAGE_E} checked{/if}>２０点</label>
    <label><input name="input[{$smarty.const.DEF_EST_IMAGE}]" type="radio" value="{$smarty.const.DEF_IMAGE_A}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_IMAGE] == $smarty.const.DEF_IMAGE_A} checked{/if}>なし</label>
  </div>

  <div class="area">
    <h3>お住まいの地域</h3>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_A}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_A} checked{/if}>北海道</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_B}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_B} checked{/if}>東北</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_C}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_C} checked{/if}>北陸</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_D}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_D} checked{/if}>関東</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_E}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_E} checked{/if}>中部</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_F}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_F} checked{/if}>近畿</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_G}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_G} checked{/if}>中国</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_H}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_H} checked{/if}>四国</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_I}"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_I} checked{/if}>九州</label>
    <label><input name="input[{$smarty.const.DEF_EST_AREA}]" type="radio" value="{$smarty.const.DEF_AREA_J}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_AREA] == $smarty.const.DEF_AREA_J} checked{/if}>取材旅費は実費精算</label>
  </div>
{* ▲[2018-06-03] 追加 *}

  <div class="number">
    <h3>取材日数</h3>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_B}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_B} checked{/if}>
    １日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_C}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_C} checked{/if}>
    ２日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_D}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_D} checked{/if}>
    ３日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_E}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_E} checked{/if}>
    ４日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_F}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_F} checked{/if}>
    ５日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_G}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_G} checked{/if}>
    ６日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_H}"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_H} checked{/if}>
    ７日</label>
    <label><input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_A}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_A} checked{/if}>
    なし</label>
    <br clear="clear"> 
  </div>

{* ▼[2018-06-03] 追加 *}
  <div class="ad-channel">
    <h3>新聞広告　※３段1/8スペースの場合</h3>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_B}"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_B} checked{/if}>日本経済新聞</label>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_C}"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_C} checked{/if}>朝日新聞</label>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_D}"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_D} checked{/if}>読売新聞</label>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_E}"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_E} checked{/if}>毎日新聞</label>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_F}"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_F} checked{/if}>その他都道府県地方新聞</label>
    <label><input name="input[{$smarty.const.DEF_EST_AD}]" type="radio" value="{$smarty.const.DEF_AD_A}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_AD] == $smarty.const.DEF_AD_A} checked{/if}>なし</label>
  </div>

  <div class="number">
    <h3>書店流通用ＦＡＸ送信</h3>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_B}"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_B} checked{/if}>５００書店</label>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_C}"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_C} checked{/if}>１０００書店</label>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_D}"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_D} checked{/if}>２０００書店</label>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_E}"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_E} checked{/if}>３０００書店</label>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_F}"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_F} checked{/if}>５０００書店</label>
    <label><input name="input[{$smarty.const.DEF_EST_FAX}]" type="radio" value="{$smarty.const.DEF_FAX_A}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_FAX] == $smarty.const.DEF_FAX_A} checked{/if}>なし</label>
  </div>
{* ▲[2018-06-03] 追加 *}

  <div>
    <h3>販売形態</h3>
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_A}"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_A} checked{/if}>
    書店流通あり（書店へ委託販売）</label>　<br />
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_B}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_B} checked{/if}>
    流通あり（アマゾンのみ販売）{* [2018-06-03] 削除<span class="red">（オススメ）</span>*}</label><br />
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_C}"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_C} checked{/if}>
    書店流通なし</label>
  </div>

<div>
    <h3>完成（印刷仕上がり）</h3>
    {if isset($arrErrMsg.date)}<font color="red">{$arrErrMsg.date}</font><br>{/if}
    希望日時　　
  {html_select_date
    prefix=""
    field_array="date"
    time=$arrInit.date
    start_year=+0
    end_year=+2
    field_order="Y"
    year_empty="--"
    display_months=no display_days=no}年
  {html_select_date
    prefix=""
    field_array="date"
    time=$arrInit.date
    field_order="M"
    month_format="%m"
    month_empty="--"
    display_years=no display_days=no}月
  {html_select_date
    prefix=""
    field_array="date"
    time=$arrInit.date
    field_order="D"
    day_format="%02d"
    day_value_format ="%02d"
    day_empty="--"
    display_years=no display_months=no}日<br>
  <span>※４カ月以内の完成をご希望の場合は、特急料金が加算されます。</span></div>
  <p align="center" class="input1"><input type="submit" name="btnInput" value="この内容で見積もりする。"></p>
</form>

</div>
</div>

{include file='Footer.tpl'}
