{include file='Header.tpl'}
<div class="sample">
<h2>自動見積りフォーム</h2>
<div class="entry form">
<h4>3.最終確認</h4>
<h3>お客様情報</h3>
<table border="0" cellspacing="0" cellpadding="0" class="mail">
  <tr>
    <th>お名前</th>
    <td>{$smarty.post.user.name|escape}</td>
  </tr>
  <tr>
    <th>E-mail※</th>
    <td>{$smarty.post.user.email|escape}</td>
  </tr>
  <tr>
    <th>住所</th>
    <td>{$smarty.post.user.address|escape}</td>
  </tr>
  <tr>
    <th>電話番号</th>
    <td>{$smarty.post.user.tel|escape}</td>
  </tr>
  <tr>
    <th>ご要望があればご記入ください</th>
    <td>{$smarty.post.user.request|escape|nl2br}</td>
  </tr>
  <tr>
    <th>ライティングからの連絡</th>
    <td>
      {if $smarty.post.user.contact == $smarty.const.DEF_CONTACT_MAIL}メール
      {elseif $smarty.post.user.contact == $smarty.const.DEF_CONTACT_TEL}電話
      {/if}
    </td>
  </tr>
</table>

<form name="frmCnfrmLast" method="post" action="">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_WRITE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_WRITE]}">
<input type="hidden" name="input[{$smarty.const.DEF_EST_EMEND}]" value="{$smarty.post.input[$smarty.const.DEF_EST_EMEND]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_COVER}]" value="{$smarty.post.input[$smarty.const.DEF_EST_COVER]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_TYPE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_TYPE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_CIRCULATE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_CIRCULATE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_PAGE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_PAGE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_SIZE}]" value="{$smarty.post.input[$smarty.const.DEF_EST_SIZE]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_SALES}]" value="{$smarty.post.input[$smarty.const.DEF_EST_SALES]}">
  <input type="hidden" name="input[{$smarty.const.DEF_EST_DAY}]" value="{$smarty.post.input[$smarty.const.DEF_EST_DAY]}">
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

  <input type="hidden" name="user[name]" value="{$smarty.post.user.name|escape}">
  <input type="hidden" name="user[email]" value="{$smarty.post.user.email|escape}">
  <input type="hidden" name="user[address]" value="{$smarty.post.user.address|escape}">
  <input type="hidden" name="user[tel]" value="{$smarty.post.user.tel|escape}">
  <input type="hidden" name="user[request]" value="{$smarty.post.user.request|escape}">
  <input type="hidden" name="user[contact]" value="{$smarty.post.user.contact}">

  <p align="center" class="input1">
    <input type="submit" name="btnReturnLast" value="戻る" class="input2-1">
    <input type="submit" name="btnOrder" value="この内容で「注文する」"  class="input3-1"/>
    <input type="submit" name="btnInquiry" value="この内容で「問い合わせる」" />
  </p>
</form>
</div>
</div>
{include file='Footer.tpl'}
