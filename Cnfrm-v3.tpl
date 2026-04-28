{include file='Header.tpl'}

<div class="sample">
<h2>自動見積りフォーム</h2>
<div class="entry form">
<h4>2.見積結果</h4>
{if isset($arrErrMsg.message)}<br><font color="red">{$arrErrMsg.message}</font><br>{/if}
<div>
<h3>お客様の御見積の合計金額をご案内します。</h3>
<div class="plz">{$intSum|number_format} 円　（税込・送料別）</div></div>
<h5>内訳</h5>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th>執筆費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_WRITE]|number_format}円</td>
  </tr>
  {if $arrValue[$smarty.const.DEF_EST_HASTE] > 0}
  <tr>
    <th>特急料金</th>
    <td>{$arrValue[$smarty.const.DEF_EST_HASTE]|number_format}円</td>
  </tr>
  {/if}
{* ▼[2018-06v2]削除
  <tr>
    <th>手書き原稿データ変換費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_NOTES]|number_format}円</td>
  </tr>
  <tr>
    <th>校正費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_EMEND]|number_format}円</td>
  </tr>
   ▲[2018-06v2]削除 *}
  <tr>
    <th>印刷・製本費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_BOOKS]|number_format}円</td>
  </tr>
  <tr>
    <th>本文レイアウト費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_DTP]|number_format}円</td>
  </tr>
  <tr>
    <th>流通費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_SALES]|number_format}円</td>
  </tr>
  <tr>
    <th>図版イラスト費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_IMAGE]|number_format}円</td>
  </tr>
  <tr>
    <th>新聞広告費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_AD]|number_format}円</td>
  </tr>
  <tr>
    <th>書店用ＦＡＸ送信費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_FAX]|number_format}円</td>
  </tr>
  <tr>
    <th>装幀費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_FM]|number_format}円</td>
  </tr>
  <tr>
    <th>取材日当</th>
    <td>{$arrValue[$smarty.const.DEF_EST_DAY]|number_format}円</td>
  </tr>
  <tr>
    <th>進行管理費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_TYPE]|number_format}円</td>
  </tr>
  <tr>
    <th>自伝動画作成</th>
    <td>{$arrValue[$smarty.const.DEF_EST_MOVIE]|number_format}円</td>
  </tr>
  <tr>
    <th>消費税</th>
    <td>{$arrValue[$smarty.const.DEF_EST_TAX]|number_format}円</td>
  </tr>
  <tr>
    <th>交通費</th>
    <td>{$arrValue[$smarty.const.DEF_EST_AREA]|number_format}円</td>
  </tr>
  <tr>
    <th>合計</th>
    <td>{$intSum|number_format}円</td>
  </tr>
</table>

<h5>本の仕様予定</h5>
<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <th>執筆</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_WRITE]}</td>
  </tr>
  <tr>
    <th>校正</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_EMEND]}</td>
  </tr>
  <tr>
    <th>書籍体裁</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_COVER]}</td>
  </tr>
  <tr>
    <th>書籍の種類</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_TYPE]}</td>
  </tr>
  <tr>
    <th>装幀(必ず付属されます)</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_FM]}</td>
  </tr>
  <tr>
    <th>部数</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_CIRCULATE]}</td>
  </tr>
  <tr>
    <th>ページ数</th>
  <td>{$arrDispStr.input[$smarty.const.DEF_EST_PAGE]}<br />
  （含まれるカラーページ）{$arrDispStr.input[$smarty.const.DEF_EST_COLAR]}</td>
  </tr>
  <tr>
    <th>本の大きさ</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_SIZE]}</td>
  </tr>
  <tr>
    <th>お住いの地域</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_AREA]}</td>
  </tr>
  <tr>
    <th>取材日数</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_DAY]}</td>
  </tr>
  <tr>
    <th>新聞広告</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_AD]}</td>
  </tr>
  <tr>
    <th>書店流通FAX送信</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_FAX]}</td>
  </tr>
  <tr>
    <th>販売形態</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_SALES]}</td>
  </tr>
  <tr>
    <th>自伝動画作成</th>
    <td>{$arrDispStr.input[$smarty.const.DEF_EST_MOVIE]}</td>
  </tr>
  <tr>
    <th>お渡し希望日時</th>
    <td>{$arrDispStr.date}</td>
  </tr>
</table>
<div align="center">上記の内容で、よろしければ、下記の項目にご記入ください</div>

<form name="frmCnfrm" method="post" action="">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_WRITE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_WRITE]}">
<input type="hidden" name="input[{$smarty.const.DEF_EST_EMEND}]" value="{$smarty.post.input[$smarty.const.DEF_EST_EMEND]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_COVER}]" value="{$smarty.post.input[$smarty.const.DEF_EST_COVER]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_TYPE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_TYPE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_CIRCULATE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_CIRCULATE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_PAGE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_PAGE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_SIZE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_SIZE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_DAY}]" value="{$smarty.post.input[$smarty.const.DEF_EST_DAY]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_SALES}]" value="{$smarty.post.input[$smarty.const.DEF_EST_SALES]}">
<input type="hidden" name="input[{$smarty.const.DEF_EST_MOVIE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_MOVIE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_IMAGE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_IMAGE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_AREA}]" value="{$smarty.post.input[$smarty.const.DEF_EST_AREA]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_AD}]" value="{$smarty.post.input[$smarty.const.DEF_EST_AD]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_COLAR}]" value="{$smarty.post.input[$smarty.const.DEF_EST_COLAR]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_FAX}]" value="{$smarty.post.input[$smarty.const.DEF_EST_FAX]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_TAX}]" value="{$tax}">
  <input type="hidden" name="input[{$smarty.const.DEF_INT_SUM}]" value="{$intSum}">
  <input type="hidden" name="date[Year]" value="{$smarty.post.date.Year}">
  <input type="hidden" name="date[Month]" value="{$smarty.post.date.Month}">
  <input type="hidden" name="date[Day]" value="{$smarty.post.date.Day}">
<h5>お客様情報</h5>
  <table border="0" cellspacing="0" cellpadding="0" class="mail">
    <tr>
      <th>お名前※</th>
      <td class="form-in">
        {if isset($arrErrMsg.user.name)}<font color="red">{$arrErrMsg.user.name}</font><br>{/if}
        <input type="text" name="user[name]" value="{$smarty.post.user.name|escape}"/>
      </td>
    </tr>
    <tr>
      <th>E-mail※</th>
      <td class="form-in">
        {if isset($arrErrMsg.user.email)}<font color="red">{$arrErrMsg.user.email}</font><br>{/if}
        <input type="text" name="user[email]" value="{$smarty.post.user.email|escape}"/>
      </td>
    </tr>
    <tr>
      <th>住所※</th>
      <td class="form-in">
        {if isset($arrErrMsg.user.address)}<font color="red">{$arrErrMsg.user.address}</font><br>{/if}
        <textarea name="user[address]" cols="30" rows="2">{$smarty.post.user.address|escape}</textarea>
      </td>
    </tr>
    <tr>
      <th>電話番号※</th>
      <td class="form-in">
        {if isset($arrErrMsg.user.tel)}<font color="red">{$arrErrMsg.user.tel}</font><br>{/if}
        <input type="text" name="user[tel]" value="{$smarty.post.user.tel|escape}"/>
    </td>
    </tr>
    <tr>
      <th>ご要望があればご記入ください</th>
      <td class="form-in">
        {if isset($arrErrMsg.user.request)}<font color="red">{$arrErrMsg.user.request}</font><br>{/if}
        <textarea name="user[request]" cols="30" rows="5">{$smarty.post.user.request|escape}</textarea>
      </td>
    </tr>
    <tr>
      <th>ライティングからの連絡</th>
      <td>
        <input name="user[contact]" type="radio" value="{$smarty.const.DEF_CONTACT_MAIL}"{if $arrInit.user.contact == $smarty.const.DEF_CONTACT_MAIL} checked{/if} />
        メール
        <input name="user[contact]" type="radio" value="{$smarty.const.DEF_CONTACT_TEL}"{if $arrInit.user.contact == $smarty.const.DEF_CONTACT_TEL} checked{/if} />
        電話
      </td>
    </tr>
  </table>
  <p align="center" class="input1">
    <input type="submit" name="btnReturn" value="戻る" class="input2-1">
    <input type="submit" name="btnCnfrm" value="お客様情報の確認をする。">
  </p>
</form>

</div>
</div>

{include file='Footer.tpl'}
