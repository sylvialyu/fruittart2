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


/*===== 加入购物车动效 =====*/
$(function() {
    var offset = $("#end").offset();
    $(".addcar").click(function(event){
        var addcar = $(this);
        var img = addcar.parent().find('img').attr('src');
        var flyer = $('<img class="u-flyer" src="'+img+'">');
        flyer.fly({
            start: {
                left: event.pageX, //开始位置（必填）#fly元素会被设置成position: fixed
                top: event.pageY //开始位置（必填）
            },
            end: {
                left: offset.left+10, //结束位置（必填）
                top: offset.top+10, //结束位置（必填）
                width: 0, //结束时宽度
                height: 0 //结束时高度
            },
            onEnd: function(){ //结束回调
                $("#msg").show().animate({width: '250px'}, 200).fadeOut(1000); //提示信息
                addcar.css("cursor","default").removeClass('orange').unbind('click');
                this.destory(); //移除dom
            }
        });
    });
}); 
