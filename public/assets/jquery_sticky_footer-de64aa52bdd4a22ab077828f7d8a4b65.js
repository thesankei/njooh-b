/*!
 * jQuery Sticky Footer 1.0
 * Corey Snyder
 * http://tangerineindustries.com
 *
 * Released under the MIT license
 *
 * Copyright 2013 Corey Snyder.
 *
 * Date: Thu Jan 22 2013 13:34:00 GMT-0630 (Eastern Daylight Time)
 */
function checkForDOMChange(){$.browser.msie||$(document).unbind("DOMSubtreeModified"),stickyFooter()}function stickyFooter(){if($("#copyright").removeAttr("style"),window.innerHeight!=document.body.offsetHeight){var e=window.innerHeight-document.body.offsetHeight,o=parseInt($("#copyright").css("margin-top"));o+e>parseInt($("#copyright").css("margin-top"))&&$("#copyright").css({"margin-top":o+e+"px"})}$.browser.msie||$(document).bind("DOMSubtreeModified",checkForDOMChange)}$(window).load(function(){stickyFooter(),$.browser.msie&&setInterval(checkForDOMChange,100)}),$.browser.msie||$(window).resize(function(){stickyFooter()});