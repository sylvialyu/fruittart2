// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require social-share-button
//= require social-share-button/wechat
//= require_tree .

/*===== Welcome#index - 首頁導航列變化 =====*/
$(window).scroll(function(){
  if ($(this).scrollTop() > 50 ) {
    $('#navbar').addClass('show_bgcolor')
  } else {
    $('#navbar').removeClass('show_bgcolor')
  }
})


/*===== Products#show - 變更顯示圖片 =====*/
$(document).on('mouseover', '.list-image', function () {
  var src_other = $(this).attr('src')  //抓去小图图片路径
  var src_main = src_other.toString().replace("other", "main") //更改圖片路徑

  $('.main-image').attr('src', src_main) //變更大圖圖片路徑

  $('.list-image').removeClass('list-image-active') //其他圖片移除鎖定狀態
  $(this).addClass('list-image-active') //當前圖片新增鎖定狀態
})

/*===== 評分系統=======*/
$('.star-freshness').raty({
      path: 'https://raw.githubusercontent.com/wazery/ratyrate/master/lib/generators/ratyrate/templates/',
          readOnly: true,
          score: function() {
        return $(this).attr('data-score');
      }
});
$('.star-look').raty({
      path: '/assets/',
          readOnly: true,
          score: function() {
        return $(this).attr('data-score');
      }
});
$('.star-price').raty({
      path: '/assets/',
          readOnly: true,
          score: function() {
        return $(this).attr('data-score');
      }
});
$('#star-freshness').raty({
path: 'https://raw.githubusercontent.com/wazery/ratyrate/master/lib/generators/ratyrate/templates/',
scoreName: 'review[freshness]'
});
$('#star-look').raty({
path: 'https://raw.githubusercontent.com/wazery/ratyrate/master/lib/generators/ratyrate/templates/',
scoreName: 'review[look]'
});
$('#star-price').raty({
    path: 'https://raw.githubusercontent.com/wazery/ratyrate/master/lib/generators/ratyrate/templates/',
    scoreName: 'review[price]'
});

$('#star-freshness img').eq(0).trigger('click')
$('#star-look img').eq(0).trigger('click')
$('#star-price img').eq(0).trigger('click')
