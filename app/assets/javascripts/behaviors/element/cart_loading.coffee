$ ->
  $(document).on 'ajax:send', '[data-behavior~=cart-loading]', ->
    $('#cart-dropdown').addClass('open').find('#cart').addClass('loading')
  .on 'ajaxSuccess', ->
    $('#cart').removeClass('loading')