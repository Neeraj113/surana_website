!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):e(jQuery)}(function(e){return e.ui=e.ui||{},e.ui.version="1.12.1"}),function(e){"function"==typeof define&&define.amd?define(["jquery","./version"],e):e(jQuery)}(function(e){return e.ui.escapeSelector=function(){var e=/([!"#$%&'()*+,./:;<=>?@[\]^`{|}~])/g;return function(n){return n.replace(e,"\\$1")}}()}),function(e){"function"==typeof define&&define.amd?define(["jquery","./version","./escape-selector"],e):e(jQuery)}(function(e){return e.fn.labels=function(){var n,i,t,r,u;return this[0].labels&&this[0].labels.length?this.pushStack(this[0].labels):(r=this.eq(0).parents("label"),t=this.attr("id"),t&&(n=this.eq(0).parents().last(),u=n.add(n.length?n.siblings():this.siblings()),i="label[for='"+e.ui.escapeSelector(t)+"']",r=r.add(u.find(i).addBack(i))),this.pushStack(r))}});