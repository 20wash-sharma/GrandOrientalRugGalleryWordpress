!function(t){if(t.support.touch="ontouchend"in document,t.support.touch){var e,o=t.ui.mouse.prototype,n=o._mouseInit,i=o._mouseDestroy;o._touchStart=function(t){!e&&this._mouseCapture(t.originalEvent.changedTouches[0])&&(e=!0,this._touchMoved=!1,u(t,"mouseover"),u(t,"mousemove"),u(t,"mousedown"))},o._touchMove=function(t){e&&(this._touchMoved=!0,u(t,"mousemove"))},o._touchEnd=function(t){e&&(u(t,"mouseup"),u(t,"mouseout"),this._touchMoved||u(t,"click"),e=!1)},o._mouseInit=function(){this.element.bind({touchstart:t.proxy(this,"_touchStart"),touchmove:t.proxy(this,"_touchMove"),touchend:t.proxy(this,"_touchEnd")}),n.call(this)},o._mouseDestroy=function(){this.element.unbind({touchstart:t.proxy(this,"_touchStart"),touchmove:t.proxy(this,"_touchMove"),touchend:t.proxy(this,"_touchEnd")}),i.call(this)}}function u(t,e){if(!(t.originalEvent.touches.length>1)){t.preventDefault();var o=t.originalEvent.changedTouches[0],n=document.createEvent("MouseEvents");n.initMouseEvent(e,!0,!0,window,1,o.screenX,o.screenY,o.clientX,o.clientY,!1,!1,!1,!1,0,null),t.target.dispatchEvent(n)}}}(jQuery),function(t){"function"==typeof define&&define.amd?define(["jquery"],t):t(jQuery)}(function(t){t.fn.addBack=t.fn.addBack||t.fn.andSelf,t.fn.extend({actual:function(e,o){if(!this[e])throw'$.actual => The jQuery method "'+e+'" you called does not exist';var n,i,u=t.extend({absolute:!1,clone:!1,includeMargin:!1,display:"block"},o),c=this.eq(0);if(!0===u.clone)n=function(){c=c.clone().attr("style","position: absolute !important; top: -1000 !important; ").appendTo("body")},i=function(){c.remove()};else{var s,a=[],r="";n=function(){s=c.parents().addBack().filter(":hidden"),r+="visibility: hidden !important; display: "+u.display+" !important; ",!0===u.absolute&&(r+="position: absolute !important; "),s.each(function(){var e=t(this),o=e.attr("style");a.push(o),e.attr("style",o?o+";"+r:r)})},i=function(){s.each(function(e){var o=t(this),n=a[e];void 0===n?o.removeAttr("style"):o.attr("style",n)})}}n();var h=/(outer)/.test(e)?c[e](u.includeMargin):c[e]();return i(),h}})});