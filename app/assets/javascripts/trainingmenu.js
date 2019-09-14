var $ = jQuery;

$(document).ready(function () {


    $('input[name="check-all"]').on('click', function() {
    $('input[type="checkbox"]').attr('checked', true).prop('checked', true).change();
    });

    $('input[name="uncheck-all"]').on('click', function(){
    $('input[type="checkbox"]').removeAttr('checked').prop('checked', false).change();
    });

    $('form').on('submit', function (){
    var $checkbox = $('input[type="checkbox"]');
    alert(
        $checkbox.attr('checked') || $checkbox.prop('checked') ?
        '登録が完了しました' : '選択してください'
    );

    return false;
    });
});