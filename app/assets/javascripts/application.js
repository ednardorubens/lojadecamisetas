// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require jquery-ui
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function(){
    $("input:visible:enabled:first").focus();

    $("#modalExcluir").on("show.bs.modal", function (event) {
        var link = $(event.relatedTarget);
        var btn_excluir = $("#btn-excluir");
        var url = link.data("href");
        btn_excluir.on("click", function (e) {
            e.preventDefault();
            var formExcluir = $("#formExcluir");
            formExcluir.attr("action", url);
            formExcluir.submit();
        });
    });
});