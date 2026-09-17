{include file='Header.tpl'}

<div class="sample">
<h2>自動見積りフォーム</h2>

<section>
<div class="auto">
  <div class="auto-img"><img alt="dentaku.jpeg" src="https://www.publishing-house.jp/lp/photo/dentaku.jpeg" width="216" height="247" class="mt-image-none" /></div><p>まずは、お考えの本に近い条件を選び、費用の目安をご確認ください。<br/><br/>
見積金額の表示後、お客様情報入力画面へ進みます。その内容は、確認メールでお知らせします。<br/><br/>
なお、各項目の右側にある「？」マークを押すと、用語の意味や選び方を説明するヘルプ画面が開きます。<br/><br/>
</p>
    <div class="clear"><hr></div>
</div>
</section>


<div class="entry form">
<h4>1.見積入力</h4>
<form name="frmInput" method="post" action="">
<div>
    <h3>執筆</h3>
    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="0" checked onclick="checkEmendMode(this.value)">
    執筆を依頼する<span class="red">（オススメ）</span></label><br />

    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="1" onclick="checkEmendMode(this.value)">
    リライト（あなたの原稿をもとにプロが書き直し）</label><br />

    <label><input name="input[{$smarty.const.DEF_EST_WRITE}]" type="radio" value="2" onclick="checkEmendMode(this.value)">
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

{* --- 追加：校正セクション --- *}
<div>
    <h3>校正</h3>
    <label>
        <input name="input[{$smarty.const.DEF_EST_EMEND}]" type="radio" id="emend_kani" value="{$smarty.const.DEF_EMEND_KANI}" {if $arrInit[$smarty.const.DEF_EST_EMEND] == $smarty.const.DEF_EMEND_KANI} checked{/if}>
        簡易校正
    </label>
    <label>
        <input name="input[{$smarty.const.DEF_EST_EMEND}]" type="radio" id="emend_honkaku" value="{$smarty.const.DEF_EMEND_HONKAKU}" {if $arrInit[$smarty.const.DEF_EST_EMEND] == $smarty.const.DEF_EMEND_HONKAKU} checked{/if}>
        本格校正<span class="red">（標準）</span>
    </label>
    <br>
    <span id="emend_note" style="color: #666; font-size: 0.9em;">※「自分で書く」以外を選択された場合は本格校正のみとなります。</span>
</div>
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
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_C}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_C} checked{/if} checked>
    ３００部<span class="red">（オススメ）</span></label><br />
    <label><input name="input[{$smarty.const.DEF_EST_CIRCULATE}]" type="radio" value="{$smarty.const.DEF_CIRCULATE_L}"{if $arrInit[$smarty.const.DEF_EST_CIRCULATE] == $smarty.const.DEF_CIRCULATE_L} checked{/if}>
    ４００部</label>
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
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_C}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_C} checked{/if} checked>
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
    <label><input name="input[{$smarty.const.DEF_EST_PAGE}]" type="radio" value="{$smarty.const.DEF_PAGE_R}"{if $arrInit[$smarty.const.DEF_EST_PAGE] == $smarty.const.DEF_PAGE_R} checked{/if}>
    ３２０ｐ</label>
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

    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_C}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_C} checked{/if}>
    Ａ５判</label>

    <label><input name="input[{$smarty.const.DEF_EST_SIZE}]" type="radio" value="{$smarty.const.DEF_SIZE_S_B}"{if $arrInit[$smarty.const.DEF_EST_SIZE] == $smarty.const.DEF_SIZE_S_B} checked{/if}>
    Ｂ６判 </label>


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
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_B}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_B || $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_A || !$arrInit[$smarty.const.DEF_EST_DAY]} checked{/if}>
      １日<span class="red">（オススメ）</span>
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_C}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_C} checked{/if}>
      ２日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_D}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_D} checked{/if}>
      ３日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_E}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_E} checked{/if}>
      ４日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_F}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_F} checked{/if}>
      ５日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_G}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_G} checked{/if}>
      ６日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_H}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_H} checked{/if}>
      ７日
    </label>
    <label>
      <input name="input[{$smarty.const.DEF_EST_DAY}]" type="radio" value="{$smarty.const.DEF_DAY_A}" {if $arrInit[$smarty.const.DEF_EST_DAY] == $smarty.const.DEF_DAY_A && isset($smarty.post.input)} checked{/if}>
      なし
    </label>
    <br clear="clear">
  </div>

{* ▼[2018-06-03] 追加 *}
  <div class="ad-channel">
    <h3>新聞広告　<span>※３段1/8スペースの場合</span></h3>
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

  <div class="number">
    <h3>販売形態<span>※一般書店での販売をご希望の場合は、部数は３００部以上をお選びください</span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_A}"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_A} checked{/if}>
    書店流通あり（アマゾン＋一般書店での販売）</label>　<br />
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_B}" checked="checked"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_B} checked{/if}>
    流通あり（アマゾンのみ販売）{* [2018-06-03] 削除<span class="red">（オススメ）</span>*}</label><br />
    <label><input name="input[{$smarty.const.DEF_EST_SALES}]" type="radio" value="{$smarty.const.DEF_FORM_C}"{if $arrInit[$smarty.const.DEF_EST_SALES] == $smarty.const.DEF_FORM_C} checked{/if}>
    書店流通なし</label>
  </div>
<div class="number">
<h3>自伝動画（写真・アニメ）作成<span class="modal-q"><a href="https://www.publishing-house.jp/today/sample.html" target="_blank">?</a></span></h3>
    <label><input name="input[{$smarty.const.DEF_EST_MOVIE}]" type="radio" value="{$smarty.const.DEF_MOVIE_7}" {if $arrInit[$smarty.const.DEF_EST_MOVIE] == $smarty.const.DEF_MOVIE_7}checked{/if}> 7分間</label>
    <label><input name="input[{$smarty.const.DEF_EST_MOVIE}]" type="radio" value="{$smarty.const.DEF_MOVIE_14}" {if $arrInit[$smarty.const.DEF_EST_MOVIE] == $smarty.const.DEF_MOVIE_14}checked{/if}> 14分間</label>
    <label><input name="input[{$smarty.const.DEF_EST_MOVIE}]" type="radio" value="{$smarty.const.DEF_MOVIE_21}" {if $arrInit[$smarty.const.DEF_EST_MOVIE] == $smarty.const.DEF_MOVIE_21}checked{/if}> 21分間</label>
    <label><input name="input[{$smarty.const.DEF_EST_MOVIE}]" type="radio" value="{$smarty.const.DEF_MOVIE_NONE}" checked="checked" {if $arrInit[$smarty.const.DEF_EST_MOVIE] == $smarty.const.DEF_MOVIE_NONE}checked{/if}> なし</label>
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
  <p align="center" class="input1">
    <input type="button" id="btnCalcAjax" value="この内容で見積もりする。" onclick="doAjaxCalc()">
    <noscript><input type="submit" name="btnInput" value="この内容で見積もりする。"></noscript>
  </p>
</form>

{* ========================================
   セクション2: 見積結果（初期非表示）
   ======================================== *}
<div id="resultSection" style="display:none;">
  <h4>2.見積結果</h4>
  <div>
    <h3>お客様の御見積の合計金額をご案内します。</h3>
    <div class="plz" id="resultSum"></div>
  </div>
<div class="auto-form">
<div>
  <h5>内訳</h5>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr><th>執筆費</th>
        <td id="val_write"></td></tr>
    <tr id="row_haste" style="display:none;">
        <th>特急料金</th>
        <td id="val_haste"></td></tr>
    <tr><th>印刷・製本費</th>
        <td id="val_books"></td></tr>
    <tr><th>本文レイアウト費</th>
        <td id="val_dtp"></td></tr>
    <tr><th>流通費</th>
        <td id="val_sales"></td></tr>
    <tr><th>図版イラスト費</th>
        <td id="val_image"></td></tr>
    <tr><th>新聞広告費</th>
        <td id="val_ad"></td></tr>
    <tr><th>書店用ＦＡＸ送信費</th>
        <td id="val_fax"></td></tr>
    <tr><th>装幀費</th>
        <td id="val_fm"></td></tr>
    <tr><th>取材日当</th>
        <td id="val_day"></td></tr>
    <tr><th>進行管理費</th>
        <td id="val_type"></td></tr>
    <tr><th>自伝動画作成</th>
        <td id="val_movie"></td></tr>
    <tr><th>消費税</th>
        <td id="val_tax"></td></tr>
    <tr><th>交通費</th>
        <td id="val_area"></td></tr>
    <tr><th>合計</th>
        <td id="val_sum"></td></tr>
  </table>
</div>
<div>
  <h5>本の仕様予定</h5>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr><th>執筆</th>
        <td id="disp_write"></td></tr>
    <tr><th>校正</th>
        <td id="disp_emend"></td></tr>
    <tr><th>書籍体裁</th>
        <td id="disp_cover"></td></tr>
    <tr><th>書籍の種類</th>
        <td id="disp_type"></td></tr>
    <tr><th>装幀(必ず付属されます)</th>
        <td id="disp_fm"></td></tr>
    <tr><th>部数</th>
        <td id="disp_circulate"></td></tr>
    <tr><th>ページ数</th>
        <td id="disp_page"></td></tr>
    <tr><th>本の大きさ</th>
        <td id="disp_size"></td></tr>
    <tr><th>お住いの地域</th>
        <td id="disp_area"></td></tr>
    <tr><th>取材日数</th>
        <td id="disp_day"></td></tr>
    <tr><th>新聞広告</th>
        <td id="disp_ad"></td></tr>
    <tr><th>書店流通FAX送信</th>
        <td id="disp_fax"></td></tr>
    <tr><th>販売形態</th>
        <td id="disp_sales"></td></tr>
    <tr><th>自伝動画作成</th>
        <td id="disp_movie"></td></tr>
    <tr><th>お渡し希望日時</th>
        <td id="disp_date"></td></tr>
  </table>
</div>
</div>
  <div align="center">上記の内容で、よろしければ、ボタンを押してください</div>
  <div class="entry">
  <p align="center" class="input1">
    <input type="button" value="見積内容を変更する"
           class="input2-1"
           onclick="backToInput()">
  </p>
  <p align="center" class="input2">
    <input type="button" id="btnShowOrder"
           value="この計算結果で「注文する」"
           class="input3-1 btn-order"
           onclick="showUserForm('order')">
    <input type="button" id="btnShowInquiry"
           value="この計算結果で「問い合わせる」"
           onclick="showUserForm('inquiry')"  class="btn-contact">
  </p>
  </div>
</div>

{* ========================================
   セクション3: お客様情報入力（初期非表示）
   ======================================== *}
<div id="userInfoSection" style="display:none;">
  <h4>3.お客様情報</h4>
  <div id="userInfoErrors"></div>
  <table border="0" cellspacing="0" cellpadding="0" class="mail">
    <tr>
      <th>お名前※</th>
      <td class="form-in">
        <span class="err" id="err_name" style="color:red;"></span>
        <input type="text" id="user_name" name="user_name" />
      </td>
    </tr>
    <tr>
      <th>E-mail※</th>
      <td class="form-in">
        <span class="err" id="err_email" style="color:red;"></span>
        <input type="text" id="user_email" name="user_email" />
      </td>
    </tr>
    <tr>
      <th>住所※</th>
      <td class="form-in">
        <span class="err" id="err_address" style="color:red;"></span>
        <textarea id="user_address" name="user_address"
                  cols="30" rows="2"></textarea>
      </td>
    </tr>
    <tr>
      <th>電話番号※</th>
      <td class="form-in">
        <span class="err" id="err_tel" style="color:red;"></span>
        <input type="text" id="user_tel" name="user_tel" />
      </td>
    </tr>
    <tr>
      <th>ご要望があればご記入ください</th>
      <td class="form-in">
        <textarea id="user_request" name="user_request"
                  cols="30" rows="5"></textarea>
      </td>
    </tr>
    <tr>
      <th>ライティングからの連絡</th>
      <td>
        <input name="user_contact" type="radio"
               value="{$smarty.const.DEF_CONTACT_MAIL}" checked />
        メール
        <input name="user_contact" type="radio"
               value="{$smarty.const.DEF_CONTACT_TEL}" />
        電話
      </td>
    </tr>
  </table>
  <div class"entry">
  <p align="center" class="input1">
    <input type="button" value="戻る"
           class="input2-1"
           onclick="backToResult()">
    <input type="button" id="btnSubmitFinal"
           value="この内容で送信する"
           class="input3-1"
           onclick="doAjaxSubmit()">
  </p>
</div>
</div>

{* ========================================
   セクション4: 送信完了（初期非表示）
   ======================================== *}
<div id="completeSection" style="display:none;">
  <h4>送信完了</h4>
  <div id="completeMessage"></div>
</div>

</div>
</div>

{* =====================================================================
   JavaScript
   ポイント: Smarty定数は {literal} の外で変数に代入してから使う
   ===================================================================== *}
<script type="text/javascript">
// Smarty定数をJavaScript変数に展開
var DEF_WRITE_C = {$smarty.const.DEF_WRITE_C};
var EST_WRITE = {$smarty.const.DEF_EST_WRITE};
var EST_EMEND = {$smarty.const.DEF_EST_EMEND};
var EST_BOOKS = {$smarty.const.DEF_EST_BOOKS};
var EST_COVER = {$smarty.const.DEF_EST_COVER};
var EST_CIRCULATE = {$smarty.const.DEF_EST_CIRCULATE};
var EST_PAGE = {$smarty.const.DEF_EST_PAGE};
var EST_SIZE = {$smarty.const.DEF_EST_SIZE};
var EST_SALES = {$smarty.const.DEF_EST_SALES};
var EST_DTP = {$smarty.const.DEF_EST_DTP};
var EST_FM = {$smarty.const.DEF_EST_FM};
var EST_HASTE = {$smarty.const.DEF_EST_HASTE};
var EST_DAY = {$smarty.const.DEF_EST_DAY};
var EST_IMAGE = {$smarty.const.DEF_EST_IMAGE};
var EST_AREA = {$smarty.const.DEF_EST_AREA};
var EST_AD = {$smarty.const.DEF_EST_AD};
var EST_FAX = {$smarty.const.DEF_EST_FAX};
var EST_TYPE = {$smarty.const.DEF_EST_TYPE};
var EST_COLAR = {$smarty.const.DEF_EST_COLAR};
var EST_MOVIE = {$smarty.const.DEF_EST_MOVIE};
var EST_TAX = {$smarty.const.DEF_EST_TAX};
var FORM_INPUT_NAME = "input[" + EST_WRITE + "]";

{literal}
// ===== 既存関数 =====

function checkEmendMode(writeValue) {
    var kaniRadio = document.getElementById('emend_kani');
    var honkakuRadio = document.getElementById('emend_honkaku');

    if (writeValue == DEF_WRITE_C) {
        kaniRadio.disabled = false;
    } else {
        honkakuRadio.checked = true;
        kaniRadio.disabled = true;
    }
}

// ページ読み込み時の初期状態設定
window.onload = function() {
    var currentWrite = document.querySelector('input[name="' + FORM_INPUT_NAME + '"]:checked');
    if (currentWrite) {
        checkEmendMode(currentWrite.value);
    }
};

// ===== 1ページ化 追加関数群 =====

// 現在の送信モード（order / inquiry）
var submitMode = '';

// 数値をカンマ区切りにする
function numberFormat(num) {
    return Number(num).toLocaleString();
}

// セクションをスライド表示する
function slideDown(el) {
    el.style.display = 'block';
    el.scrollIntoView({ behavior: 'smooth', block: 'start' });
}

// セクションを非表示にする
function slideUp(el) {
    el.style.display = 'none';
}

// フォームデータを取得
function getFormData() {
    var form = document.forms['frmInput'];
    var formData = new FormData(form);
    formData.append('ajax_calc', '1');
    return formData;
}

// ★ AJAX見積り計算
function doAjaxCalc() {
    var btn = document.getElementById('btnCalcAjax');
    btn.disabled = true;
    btn.value = '計算中...';

    var xhr = new XMLHttpRequest();
    xhr.open('POST', '', true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4) {
            btn.disabled = false;
            btn.value = 'この内容で見積もりする。';

            if (xhr.status === 200) {
                try {
                    var res = JSON.parse(xhr.responseText);
                } catch(e) {
                    alert('サーバーからの応答が不正です。');
                    return;
                }
                if (res.success) {
                    showResult(res);
                } else {
                    if (res.errors && res.errors.date) {
                        alert(res.errors.date);
                    } else if (res.errors && res.errors.message) {
                        alert(res.errors.message);
                    }
                }
            } else {
                alert('通信エラーが発生しました。');
            }
        }
    };
    xhr.send(getFormData());
}

// 見積結果を表示
function showResult(res) {
    // 金額内訳を表示
    document.getElementById('resultSum').innerHTML
        = numberFormat(res.sum) + ' 円　（税込・送料別）';
    document.getElementById('val_write').innerHTML
        = numberFormat(res.values[EST_WRITE]) + '円';
    document.getElementById('val_books').innerHTML
        = numberFormat(res.values[EST_BOOKS]) + '円';
    document.getElementById('val_dtp').innerHTML
        = numberFormat(res.values[EST_DTP]) + '円';
    document.getElementById('val_sales').innerHTML
        = numberFormat(res.values[EST_SALES]) + '円';
    document.getElementById('val_image').innerHTML
        = numberFormat(res.values[EST_IMAGE]) + '円';
    document.getElementById('val_ad').innerHTML
        = numberFormat(res.values[EST_AD]) + '円';
    document.getElementById('val_fax').innerHTML
        = numberFormat(res.values[EST_FAX]) + '円';
    document.getElementById('val_fm').innerHTML
        = numberFormat(res.values[EST_FM]) + '円';
    document.getElementById('val_day').innerHTML
        = numberFormat(res.values[EST_DAY]) + '円';
    document.getElementById('val_type').innerHTML
        = numberFormat(res.values[EST_TYPE]) + '円';
    document.getElementById('val_movie').innerHTML
        = numberFormat(res.values[EST_MOVIE]) + '円';
    document.getElementById('val_tax').innerHTML
        = numberFormat(res.values[EST_TAX]) + '円';
    document.getElementById('val_area').innerHTML
        = numberFormat(res.values[EST_AREA]) + '円';
    document.getElementById('val_sum').innerHTML
        = numberFormat(res.sum) + '円';

    // 特急料金の行（条件付き表示）
    if (res.values[EST_HASTE] > 0) {
        document.getElementById('row_haste').style.display = '';
        document.getElementById('val_haste').innerHTML
            = numberFormat(res.values[EST_HASTE]) + '円';
    } else {
        document.getElementById('row_haste').style.display = 'none';
    }

    // 本の仕様予定を表示
    var d = res.dispStr;
    if (d && d.input) {
        document.getElementById('disp_write').innerHTML = d.input[EST_WRITE] || '';
        document.getElementById('disp_emend').innerHTML = d.input[EST_EMEND] || '';
        document.getElementById('disp_cover').innerHTML = d.input[EST_COVER] || '';
        document.getElementById('disp_type').innerHTML = d.input[EST_TYPE] || '';
        document.getElementById('disp_fm').innerHTML = d.input[EST_FM] || '';
        document.getElementById('disp_circulate').innerHTML = d.input[EST_CIRCULATE] || '';
        document.getElementById('disp_page').innerHTML = d.input[EST_PAGE] || '';
        document.getElementById('disp_size').innerHTML = d.input[EST_SIZE] || '';
        document.getElementById('disp_area').innerHTML = d.input[EST_AREA] || '';
        document.getElementById('disp_day').innerHTML = d.input[EST_DAY] || '';
        document.getElementById('disp_ad').innerHTML = d.input[EST_AD] || '';
        document.getElementById('disp_fax').innerHTML = d.input[EST_FAX] || '';
        document.getElementById('disp_sales').innerHTML = d.input[EST_SALES] || '';
        document.getElementById('disp_movie').innerHTML = d.input[EST_MOVIE] || '';
    }
    if (d && d.date) {
        document.getElementById('disp_date').innerHTML = d.date;
    }

    // 個人情報セクションを隠す（再計算時）
    slideUp(document.getElementById('userInfoSection'));
    slideUp(document.getElementById('completeSection'));

    // 結果セクションを表示
    slideDown(document.getElementById('resultSection'));
}

// 「注文する」「問い合わせる」ボタン押下
function showUserForm(mode) {
    submitMode = mode;
    var label = (mode === 'order')
        ? 'この内容で「注文する」' : 'この内容で「問い合わせる」';
    document.getElementById('btnSubmitFinal').value = label;
    slideDown(document.getElementById('userInfoSection'));
}

// 「入力内容を変更する」ボタン
function backToInput() {
    slideUp(document.getElementById('resultSection'));
    slideUp(document.getElementById('userInfoSection'));
    slideUp(document.getElementById('completeSection'));
    document.getElementById('btnCalcAjax')
        .scrollIntoView({ behavior: 'smooth', block: 'start' });
}

// 個人情報セクション「戻る」
function backToResult() {
    slideUp(document.getElementById('userInfoSection'));
    document.getElementById('resultSection')
        .scrollIntoView({ behavior: 'smooth', block: 'end' });
}

// ★ AJAX送信（注文 or 問い合わせ）
function doAjaxSubmit() {
    // 送信前の確認ダイアログ
    var confirmMsg = (submitMode === 'order')
        ? 'この内容で注文を送信します。よろしいですか？'
        : 'この内容で問い合わせを送信します。よろしいですか？';
    if (!confirm(confirmMsg)) {
        return;
    }

    var btn = document.getElementById('btnSubmitFinal');
    btn.disabled = true;

    // エラー表示クリア
    var errSpans = document.querySelectorAll('.err');
    for (var i = 0; i < errSpans.length; i++) {
        errSpans[i].innerHTML = '';
    }
    document.getElementById('userInfoErrors').innerHTML = '';

    // 見積入力フォームのデータを取得
    var form = document.forms['frmInput'];
    var formData = new FormData(form);

    // お客様情報を追加
    formData.append('user[name]',
        document.getElementById('user_name').value);
    formData.append('user[email]',
        document.getElementById('user_email').value);
    formData.append('user[address]',
        document.getElementById('user_address').value);
    formData.append('user[tel]',
        document.getElementById('user_tel').value);
    formData.append('user[request]',
        document.getElementById('user_request').value);

    // 連絡方法
    var contactRadios = document.getElementsByName('user_contact');
    for (var i = 0; i < contactRadios.length; i++) {
        if (contactRadios[i].checked) {
            formData.append('user[contact]', contactRadios[i].value);
            break;
        }
    }

    // 送信モード
    formData.append('ajax_submit', submitMode);

    var xhr = new XMLHttpRequest();
    xhr.open('POST', '', true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4) {
            btn.disabled = false;
            if (xhr.status === 200) {
                try {
                    var res = JSON.parse(xhr.responseText);
                } catch(e) {
                    alert('サーバーからの応答が不正です。');
                    return;
                }
                if (res.success) {
                    slideUp(document.getElementById('userInfoSection'));
                    slideUp(document.getElementById('resultSection'));
                    document.getElementById('completeMessage')
                        .innerHTML = '<p>' + res.message + '</p>';
                    slideDown(document.getElementById('completeSection'));
                    // 送信完了後、再送信を防止
                    btn.disabled = true;
                } else {
                    if (res.errors) {
                        if (res.errors.user) {
                            var ue = res.errors.user;
                            if (ue.name)
                                document.getElementById('err_name').innerHTML = ue.name;
                            if (ue.email)
                                document.getElementById('err_email').innerHTML = ue.email;
                            if (ue.address)
                                document.getElementById('err_address').innerHTML = ue.address;
                            if (ue.tel)
                                document.getElementById('err_tel').innerHTML = ue.tel;
                        }
                        if (res.errors.message) {
                            document.getElementById('userInfoErrors')
                                .innerHTML = '<font color="red">' + res.errors.message + '</font>';
                        }
                    }
                }
            } else {
                alert('通信エラーが発生しました。');
            }
        }
    };
    xhr.send(formData);
}
{/literal}
</script>
{include file='Footer.tpl'}
