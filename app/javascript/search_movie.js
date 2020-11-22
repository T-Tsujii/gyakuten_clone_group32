$(function () {
  searchWord = function () {
    var searchText = $(this).val().toLowerCase(), // 検索ボックスに入力された文字列（大文字小文字の区別をなくすために小文字に変換
        targetText;

    $('.card-title').each(function () {
      targetText = $(this).text().toLowerCase(); //大文字小文字の区別をなくすために小文字に変換
      // .card-titleを持つpタグ内に検索された文字列が含まれるなら、その親要素のうち.col-12などを持つ要素からhiddenクラスを除去、含まれないならhiddenクラスを付与
      if (targetText.indexOf(searchText) != -1) {
        $(this).parent().parent().parent().removeClass('hidden');
      } else {
        $(this).parent().parent().parent().addClass('hidden');
      }
    });
  };

  // searchWordの実行
  $('.search-movie').on('input', searchWord);
});

