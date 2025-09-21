<?php
/*****************************************************************************
 * 設定ファイル
 *
 *       Corp: KSS, INC.
 *
 *     作成日: 2010/02/22
 *     修正日: 2018/06/03 v2
 *     修正日: 2022/06/06 v3
 *  ProgramID: CConfig.inc
 *
 *****************************************************************************/

// メール情報
define('MAIL_INFO' , 'n-takagi@righting.co.jp'); // 送信元・返信先
define('MAIL_ADMIN', 'n-takagi@righting.co.jp'); // 管理者用メール送信先

/*
 * 以下変更しないでください
 */

// 画面処理
define('DEF_INPUT'        , 0); // 入力
define('DEF_CNFRM'        , 1); // 確認
define('DEF_CNFRM_LAST'   , 2); // 最終確認
define('DEF_CMPLT_ORDER'  , 3); // 完了(注文)
define('DEF_CMPLT_INQUIRY', 4); // 完了(お問い合わせ)

// 見積もり種類
define('DEF_EST_WRITE', 1);    // 執筆
define('DEF_EST_NOTES', 2);    // 原稿の状況 ※[2018-06-03] 項目としては廃止
define('DEF_EST_EMEND', 3);    // 校正 ※[2018-06-03] 項目としては廃止
define('DEF_EST_BOOKS', 4);    // 書籍体裁・部数・ページ数・大きさ
define('DEF_EST_SALES', 8);    // 販売形態
define('DEF_EST_DTP'  , 9);    // DTP費用
define('DEF_EST_FM'   , 10);   // 装丁
define('DEF_EST_HASTE', 11);   // 特急料金
define('DEF_EST_DAY'  , 12);   // 取材日数
define('DEF_EST_IMAGE', 13);   // 図版イラスト ※[2018-06-03] 新規追加
define('DEF_EST_AREA',  14);   // お住まいの地域 ※[2018-06-03] 新規追加
define('DEF_EST_AD',    15);   // 新聞広告 ※[2018-06-03] 新規追加
define('DEF_EST_FAX',   16);   // 書店営業ＦＡＸ ※[2018-06-03] 新規追加
define('DEF_EST_TYPE',  17);    // 書籍の種類（→管理費）
define('DEF_EST_COLAR',  18);    // カラーページ　2004-10-18追加
define('DEF_EST_TAX'  , 99);   // 消費税
define('DEF_INT_SUM', 100);  // 合計金額

define('DEF_EST_COVER'    , 4);    // 書籍体裁
define('DEF_EST_CIRCULATE', 5);    // 部数
define('DEF_EST_PAGE'     , 6);    // ページ数
define('DEF_EST_SIZE'     , 7);    // 大きさ


// ①執筆
define('DEF_WRITE_A', 0);      // 取材、執筆をお願いする
define('DEF_WRITE_B', 1);      // リライト
define('DEF_WRITE_C', 2);      // 自分で書く
define('DEF_WRITE_A_DISP', 'あり');
define('DEF_WRITE_B_DISP', 'リライト');
define('DEF_WRITE_C_DISP', 'お客様自身');

// ②原稿の状況
define('DEF_STATE_A', 0);      // テキストデータ
define('DEF_STATE_B', 1);      // 手書き原稿
define('DEF_STATE_A_DISP', 'なし');
define('DEF_STATE_B_DISP', 'あり');

// ③校正（誤字、脱字のチェック）
define('DEF_MISPRINT_A', 0);   // あり
define('DEF_MISPRINT_B', 1);   // なし
define('DEF_MISPRINT_A_DISP', 'あり');
define('DEF_MISPRINT_B_DISP', 'なし');

// ④書籍体裁
define('DEF_BOOK_SOFT', 0);    // 並製
define('DEF_BOOK_HARD', 1);    // 上製
define('DEF_BOOK_SOFT_DISP', 'ソフトカバー');
define('DEF_BOOK_HARD_DISP', 'ハードカバー');

// ⑤部数
define('DEF_CIRCULATE_J', 10);
define('DEF_CIRCULATE_K', 20);
define('DEF_CIRCULATE_H', 30);
define('DEF_CIRCULATE_I', 50);
define('DEF_CIRCULATE_A', 100);
define('DEF_CIRCULATE_B', 200);
define('DEF_CIRCULATE_C', 300);
define('DEF_CIRCULATE_D', 500);
define('DEF_CIRCULATE_E', 1000);
define('DEF_CIRCULATE_F', 2000);
define('DEF_CIRCULATE_G', 3000);

// ⑥ページ数
define('DEF_PAGE_K', 32);
define('DEF_PAGE_L', 48);
define('DEF_PAGE_M', 64);
define('DEF_PAGE_N', 80);
define('DEF_PAGE_O', 96);
define('DEF_PAGE_A', 112);
define('DEF_PAGE_B', 128);
define('DEF_PAGE_C', 144);
define('DEF_PAGE_D', 160);
define('DEF_PAGE_E', 176);
define('DEF_PAGE_F', 192);
define('DEF_PAGE_G', 208);
define('DEF_PAGE_H', 224);
define('DEF_PAGE_I', 240);
define('DEF_PAGE_J', 256);
define('DEF_PAGE_P', 272);
define('DEF_PAGE_Q', 288);

// カラーページの選択肢を定義
define('DEF_COLAR_A', 0);         // なし 2024-10-18追加
define('DEF_COLAR_B', 1);             // 8ページ 2024-10-18追加
define('DEF_COLAR_C', 2);           // 16ページ 2024-10-18追加
define('DEF_COLAR_D', 3);     // オールカラー 2024-10-18追加
define('DEF_COLAR_A_DISP', 'なし');         // なし 2024-10-18追加
define('DEF_COLAR_B_DISP', '8p');             // 8ページ 2024-10-18追加
define('DEF_COLAR_C_DISP', '16p');           // 16ページ 2024-10-18追加
define('DEF_COLAR_D_DISP', '全ページ');     // オールカラー 2024-10-18追加


// ⑦大きさ(大分類)
define('DEF_SIZE_A', 0);       // 四六判・B6判・A5判
define('DEF_SIZE_B', 1);       // B5判・A4判

// ⑦大きさ(小分類)
define('DEF_SIZE_S_A', 0);     // 四六判
define('DEF_SIZE_S_B', 1);     // Ｂ６判
define('DEF_SIZE_S_C', 2);     // Ａ５判
define('DEF_SIZE_S_D', 3);     // Ｂ５判
define('DEF_SIZE_S_E', 4);     // Ａ４判
define('DEF_SIZE_S_A_DISP', '四六判');
define('DEF_SIZE_S_B_DISP', 'Ｂ６判');
define('DEF_SIZE_S_C_DISP', 'Ａ５判');
define('DEF_SIZE_S_D_DISP', 'Ｂ５判');
define('DEF_SIZE_S_E_DISP', 'Ａ４判');

// ⑧書籍の種類 ---> 管理費として計上
define('DEF_RATE_MEDICAL', 0.1); // 医療系は全体の10%
define('DEF_RATE_OTHERS',  0);   // その他は管理費なし
define('DEF_TYPE_MEDICAL', 1);   // 医療系
define('DEF_TYPE_OTHERS',  2);   // その他
define('DEF_TYPE_MEDICAL_DISP', '医学書・ビジネス書・実用書'); // 管理費は全体の10%
define('DEF_TYPE_OTHERS_DISP',  '自伝・小説・その他'); // 管理費なし


// 図版イラスト ※[2018-06-03] 新規追加
define('DEF_IMAGE_A',  0);
define('DEF_IMAGE_B',  5);
define('DEF_IMAGE_C', 10);
define('DEF_IMAGE_D', 15);
define('DEF_IMAGE_E', 20);

// お住まいの地域 ※[2018-06-03] 新規追加
define('DEF_AREA_A', 1);
define('DEF_AREA_B', 2);
define('DEF_AREA_C', 3);
define('DEF_AREA_D', 4);
define('DEF_AREA_E', 5);
define('DEF_AREA_F', 6);
define('DEF_AREA_G', 7);
define('DEF_AREA_H', 8);
define('DEF_AREA_I', 9);
define('DEF_AREA_A_DISP', '北海道');
define('DEF_AREA_B_DISP', '東北');
define('DEF_AREA_C_DISP', '北陸');
define('DEF_AREA_D_DISP', '関東');
define('DEF_AREA_E_DISP', '中部');
define('DEF_AREA_F_DISP', '近畿');
define('DEF_AREA_G_DISP', '中国');
define('DEF_AREA_H_DISP', '四国');
define('DEF_AREA_I_DISP', '九州');

// 取材日数
define('DEF_DAY_A', 0);
define('DEF_DAY_B', 1);
define('DEF_DAY_C', 2);
define('DEF_DAY_D', 3);
define('DEF_DAY_E', 4);
define('DEF_DAY_F', 5);
define('DEF_DAY_G', 6);
define('DEF_DAY_H', 7);

// 新聞広告 ※[2018-06-03] 新規追加
define('DEF_AD_A', 0);
define('DEF_AD_B', 1);
define('DEF_AD_C', 2);
define('DEF_AD_D', 3);
define('DEF_AD_E', 4);
define('DEF_AD_F', 5);
define('DEF_AD_A_DISP', 'なし');
define('DEF_AD_B_DISP', '日本経済新聞');
define('DEF_AD_C_DISP', '朝日新聞');
define('DEF_AD_D_DISP', '読売新聞');
define('DEF_AD_E_DISP', '毎日新聞');
define('DEF_AD_F_DISP', 'その他都道府県地方新聞');

// 書店営業ＦＡＸ ※[2018-06-03] 新規追加
define('DEF_FAX_A',    0);
define('DEF_FAX_B',  500);
define('DEF_FAX_C', 1000);
define('DEF_FAX_D', 2000);
define('DEF_FAX_E', 3000);
define('DEF_FAX_F', 5000);
define('DEF_FAX_A_DISP', 'なし');
define('DEF_FAX_B_DISP', '５００書店');
define('DEF_FAX_C_DISP', '１０００書店');
define('DEF_FAX_D_DISP', '２０００書店');
define('DEF_FAX_E_DISP', '３０００書店');
define('DEF_FAX_F_DISP', '５０００書店');

// ⑧販売形態
define('DEF_FORM_A', 0);       // 書店流通あり
define('DEF_FORM_B', 1);       // 流通あり
define('DEF_FORM_C', 2);       // 書店流通なし
define('DEF_FORM_A_DISP', '書店へ委託販売');
define('DEF_FORM_B_DISP', 'アマゾンでの販売');
define('DEF_FORM_C_DISP', '書店流通なし');

// 装幀
define('DEF_FM_DISP', 'カバー・オビ付き（デザイナーが制作）');

// ライティングからの連絡方法
define('DEF_CONTACT_MAIL', 0);  // メール
define('DEF_CONTACT_TEL',  1);  // 電話

// 制御値
define('DEF_PAGE_MIN', 128);
define('DEF_PAGE_MAX', 256);

// 画面名
define('DEF_DISPNAME_INPUT',      '見積入力');
define('DEF_DISPNAME_CNFRM',      '見積結果');
define('DEF_DISPNAME_CNFRM_LAST', '最終確認');
define('DEF_DISPNAME_CMPLT',      '送信完了');
define('DEF_DISPNAME_ERROR',      'エラー');

// メッセージテンプレート
define('E00001', 'その他を選択した場合はページ数を入力して下さい。');
define('E00002', '半角数字のみ入力して下さい。');
define('E00003', 'ページ数には%dから%dまでの値を入力して下さい。');
define('E00004', '年月日が不正です。');
define('E00005', '現在日から1ヶ月以内の日付は入力できません。');
define('E00006', 'ご注文情報に不備があります。<br>お手数ですが再度入力をお願いします。');
define('E00007', 'お客様情報に不備があります。<br>お手数ですが再度入力をお願いします。');
define('E00008', 'ご注文情報の送信に失敗しました。<br>お手数ですが管理者にお問い合わせ下さい。');
define('E00009', 'お問い合わせ情報の送信に失敗しました。<br>お手数ですが管理者にお問い合わせ下さい。');
define('E00010', '例外処理');
define('E00011', '必須項目です。');
define('E00013', '正しいメールアドレスを入力して下さい。');
define('I00001', 'ご注文ありがとうございました。');
define('I00002', 'お問い合わせありがとうございました。');


?>
