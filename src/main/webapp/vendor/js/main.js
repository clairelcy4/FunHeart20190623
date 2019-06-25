
/*==================================================================
[ MyPage ]*/
// MyPage展開
$(function () {
    $(".MyPage_button_open").click(function () {
        $(".MyPage_content").fadeToggle(180);
    });
});
// MyPage關閉
$(function () {
    $(".MyPage_button_close").click(function () {
        $(".MyPage_content").fadeToggle(180);
    });
});


// 註冊
$(function () {
    $(".underLoginButton_Register").click(function () {
        $(".login_content_ForgotPassword").hide();
        $(".login_content_LoginForm").hide();
        $(".login_content_RegisterForm").show();
    });
});
// 登入
$(function () {
    $(".underLoginButton_Login").click(function () {
        $(".login_content_ForgotPassword").hide();
        $(".login_content_RegisterForm").hide();
        $(".login_content_LoginForm").show();
    });
});
// FORGOT PASSWORD
$(function () {
    $(".underLoginButton_ForgotPasspword").click(function () {
        $(".login_content_LoginForm").hide();
        $(".login_content_ForgotPassword").show();
        // $(".login_content_RegisterForm").hide();
    });
});


/*==================================================================
[ owl-carousel ]*/
$(function () {
    $('#shop_slideBoard').owlCarousel({
        items: 4, // 一次輪播幾個項目
        loop: true, // 循環輪播
        margin: 0, // 與右邊圖片的距離
        nav: true, // 導航文字
        autoplay: true, // 自動輪播
        // slideSpeed: 2,
        autoplayTimeout: 2000, // 切換時間
        autoplayHoverPause: true, // 滑鼠經過時暫停
        stagePadding: 20,
        responsive: {
            0: {
                items: 1,
                nav: true,
                loop: true, // 循環輪播
            },
            320: {
                items: 2,
                nav: true,
                loop: true, // 循環輪播
            },
            600: {
                items: 3,
                nav: true,
                loop: true, // 循環輪播
            },
            1000: {
                items: 4,
                nav: true,
                loop: true, // 循環輪播
            }
        },
    });
});
/*==================================================================
[ Scrollbars ]*/
! function(e, t) {
    "function" == typeof define && define.amd ? define(function() {
        return t(e, e.document, void 0)
    }) : "object" == typeof exports ? module.exports = t(e, e.document, void 0) : t(e, e.document, void 0)
}("undefined" != typeof window ? window : this, function(e, t, n) {
    "use-strict";
    var r = "OverlayScrollbars",
        i = {
            o: "object",
            f: "function",
            a: "array",
            s: "string",
            n: "number",
            u: "undefined"
        },
        o = {
            c: "class",
            s: "style",
            i: "id",
            oH: "offsetHeight",
            cH: "clientHeight",
            sH: "scrollHeight",
            oW: "offsetWidth",
            cW: "clientWidth",
            sW: "scrollWidth"
        },
        a = {
            wW: function() {
                return e.innerWidth || t.documentElement[o.cW] || t.body[o.cW]
            },
            wH: function() {
                return e.innerHeight || t.documentElement[o.cH] || t.body[o.cH]
            },
            mO: function() {
                return e.MutationObserver || e.WebKitMutationObserver || e.WebkitMutationObserver || e.MozMutationObserver || n
            },
            rO: function() {
                return e.ResizeObserver || e.WebKitResizeObserver || e.WebkitResizeObserver || e.MozResizeObserver || n
            },
            rAF: function() {
                return e.requestAnimationFrame || e.webkitRequestAnimationFrame || e.mozRequestAnimationFrame || e.oRequestAnimationFrame || e.msRequestAnimationFrame || function(t) {
                    return e.setTimeout(t, 1e3 / 60)
                }
            },
            cAF: function() {
                return e.cancelAnimationFrame || e.webkitCancelAnimationFrame || e.mozCancelAnimationFrame || e.oCancelAnimationFrame || e.msCancelAnimationFrame || function(t) {
                    return e.clearTimeout(t)
                }
            },
            now: function() {
                return Date.now() || (new Date).getTime()
            },
            stpP: function(e) {
                e.stopPropagation ? e.stopPropagation() : e.cancelBubble = !0
            },
            prvD: function(e) {
                e.preventDefault ? e.preventDefault() : e.returnValue = !1
            },
            page: function(e) {
                var r = "page",
                    i = "client",
                    o = "X",
                    a = ((e = e.originalEvent || e).target || e.srcElement || t).ownerDocument || t,
                    s = a.documentElement,
                    l = a.body;
                if (e.touches !== n) {
                    var c = e.touches[0];
                    return {
                        x: c[r + o],
                        y: c.pageY
                    }
                }
                return !e[r + o] && e[i + o] && null != e[i + o] ? {
                    x: e[i + o] + (s && s.scrollLeft || l && l.scrollLeft || 0) - (s && s.clientLeft || l && l.clientLeft || 0),
                    y: e[i + "Y"] + (s && s.scrollTop || l && l.scrollTop || 0) - (s && s.clientTop || l && l.clientTop || 0)
                } : {
                    x: e[r + o],
                    y: e.pageY
                }
            },
            mBtn: function(e) {
                return e.which || e.button === n ? e.which : 1 & e.button ? 1 : 2 & e.button ? 3 : 4 & e.button ? 2 : 0
            },
            bind: function(e, t) {
                if (typeof e !== i.f) throw "Can't bind function!";
                var n = Array.prototype.slice.call(arguments, 2),
                    r = function() {},
                    o = function() {
                        return e.apply(this instanceof r ? this : t, n.concat(Array.prototype.slice.call(arguments)))
                    };
                return e.prototype && (r.prototype = e.prototype), o.prototype = new r, o
            }
        },
        s = function(r) {
            var o = /[^\x20\t\r\n\f]+/g,
                a = Object.prototype.toString,
                s = " ",
                l = "",
                c = [],
                u = {
                    animationIterationCount: !0,
                    columnCount: !0,
                    fillOpacity: !0,
                    flexGrow: !0,
                    flexShrink: !0,
                    fontWeight: !0,
                    lineHeight: !0,
                    opacity: !0,
                    order: !0,
                    orphans: !0,
                    widows: !0,
                    zIndex: !0,
                    zoom: !0
                },
                f = {
                    swing: function(e, t, n, r, i) {
                        return .5 - Math.cos(e * Math.PI) / 2
                    },
                    linear: function(e, t, n, r, i) {
                        return e
                    },
                    easeInQuad: function(e, t, n, r, i) {
                        return r * (t /= i) * t + n
                    },
                    easeOutQuad: function(e, t, n, r, i) {
                        return -r * (t /= i) * (t - 2) + n
                    },
                    easeInOutQuad: function(e, t, n, r, i) {
                        return (t /= i / 2) < 1 ? r / 2 * t * t + n : -r / 2 * (--t * (t - 2) - 1) + n
                    },
                    easeInCubic: function(e, t, n, r, i) {
                        return r * (t /= i) * t * t + n
                    },
                    easeOutCubic: function(e, t, n, r, i) {
                        return r * ((t = t / i - 1) * t * t + 1) + n
                    },
                    easeInOutCubic: function(e, t, n, r, i) {
                        return (t /= i / 2) < 1 ? r / 2 * t * t * t + n : r / 2 * ((t -= 2) * t * t + 2) + n
                    },
                    easeInQuart: function(e, t, n, r, i) {
                        return r * (t /= i) * t * t * t + n
                    },
                    easeOutQuart: function(e, t, n, r, i) {
                        return -r * ((t = t / i - 1) * t * t * t - 1) + n
                    },
                    easeInOutQuart: function(e, t, n, r, i) {
                        return (t /= i / 2) < 1 ? r / 2 * t * t * t * t + n : -r / 2 * ((t -= 2) * t * t * t - 2) + n
                    },
                    easeInQuint: function(e, t, n, r, i) {
                        return r * (t /= i) * t * t * t * t + n
                    },
                    easeOutQuint: function(e, t, n, r, i) {
                        return r * ((t = t / i - 1) * t * t * t * t + 1) + n
                    },
                    easeInOutQuint: function(e, t, n, r, i) {
                        return (t /= i / 2) < 1 ? r / 2 * t * t * t * t * t + n : r / 2 * ((t -= 2) * t * t * t * t + 2) + n
                    },
                    easeInSine: function(e, t, n, r, i) {
                        return -r * Math.cos(t / i * (Math.PI / 2)) + r + n
                    },
                    easeOutSine: function(e, t, n, r, i) {
                        return r * Math.sin(t / i * (Math.PI / 2)) + n
                    },
                    easeInOutSine: function(e, t, n, r, i) {
                        return -r / 2 * (Math.cos(Math.PI * t / i) - 1) + n
                    },
                    easeInExpo: function(e, t, n, r, i) {
                        return 0 == t ? n : r * Math.pow(2, 10 * (t / i - 1)) + n
                    },
                    easeOutExpo: function(e, t, n, r, i) {
                        return t == i ? n + r : r * (1 - Math.pow(2, -10 * t / i)) + n
                    },
                    easeInOutExpo: function(e, t, n, r, i) {
                        return 0 == t ? n : t == i ? n + r : (t /= i / 2) < 1 ? r / 2 * Math.pow(2, 10 * (t - 1)) + n : r / 2 * (2 - Math.pow(2, -10 * --t)) + n
                    },
                    easeInCirc: function(e, t, n, r, i) {
                        return -r * (Math.sqrt(1 - (t /= i) * t) - 1) + n
                    },
                    easeOutCirc: function(e, t, n, r, i) {
                        return r * Math.sqrt(1 - (t = t / i - 1) * t) + n
                    },
                    easeInOutCirc: function(e, t, n, r, i) {
                        return (t /= i / 2) < 1 ? -r / 2 * (Math.sqrt(1 - t * t) - 1) + n : r / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + n
                    },
                    easeInElastic: function(e, t, n, r, i) {
                        var o = 1.70158,
                            a = 0,
                            s = r;
                        if (0 == t) return n;
                        if (1 == (t /= i)) return n + r;
                        if (a || (a = .3 * i), s < Math.abs(r)) {
                            s = r;
                            o = a / 4
                        } else o = a / (2 * Math.PI) * Math.asin(r / s);
                        return -s * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * i - o) * (2 * Math.PI) / a) + n
                    },
                    easeOutElastic: function(e, t, n, r, i) {
                        var o = 1.70158,
                            a = 0,
                            s = r;
                        if (0 == t) return n;
                        if (1 == (t /= i)) return n + r;
                        if (a || (a = .3 * i), s < Math.abs(r)) {
                            s = r;
                            o = a / 4
                        } else o = a / (2 * Math.PI) * Math.asin(r / s);
                        return s * Math.pow(2, -10 * t) * Math.sin((t * i - o) * (2 * Math.PI) / a) + r + n
                    },
                    easeInOutElastic: function(e, t, n, r, i) {
                        var o = 1.70158,
                            a = 0,
                            s = r;
                        if (0 == t) return n;
                        if (2 == (t /= i / 2)) return n + r;
                        if (a || (a = i * (.3 * 1.5)), s < Math.abs(r)) {
                            s = r;
                            o = a / 4
                        } else o = a / (2 * Math.PI) * Math.asin(r / s);
                        return t < 1 ? s * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * i - o) * (2 * Math.PI) / a) * -.5 + n : s * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * i - o) * (2 * Math.PI) / a) * .5 + r + n
                    },
                    easeInBack: function(e, t, r, i, o, a) {
                        return a == n && (a = 1.70158), i * (t /= o) * t * ((a + 1) * t - a) + r
                    },
                    easeOutBack: function(e, t, r, i, o, a) {
                        return a == n && (a = 1.70158), i * ((t = t / o - 1) * t * ((a + 1) * t + a) + 1) + r
                    },
                    easeInOutBack: function(e, t, r, i, o, a) {
                        return a == n && (a = 1.70158), (t /= o / 2) < 1 ? i / 2 * (t * t * ((1 + (a *= 1.525)) * t - a)) + r : i / 2 * ((t -= 2) * t * ((1 + (a *= 1.525)) * t + a) + 2) + r
                    },
                    easeInBounce: function(e, t, n, r, i) {
                        return r - this.easeOutBounce(e, i - t, 0, r, i) + n
                    },
                    easeOutBounce: function(e, t, n, r, i) {
                        return (t /= i) < 1 / 2.75 ? r * (7.5625 * t * t) + n : t < 2 / 2.75 ? r * (7.5625 * (t -= 1.5 / 2.75) * t + .75) + n : t < 2.5 / 2.75 ? r * (7.5625 * (t -= 2.25 / 2.75) * t + .9375) + n : r * (7.5625 * (t -= 2.625 / 2.75) * t + .984375) + n
                    },
                    easeInOutBounce: function(e, t, n, r, i) {
                        return t < i / 2 ? .5 * this.easeInBounce(e, 2 * t, 0, r, i) + n : .5 * this.easeOutBounce(e, 2 * t - i, 0, r, i) + .5 * r + n
                    }
                },
                h = function(e) {
                    var n, r, o, a = 0;
                    if (h.type(e) === i.s) {
                        for (n = [], "<" === e.charAt(0) ? ((o = t.createElement("div")).innerHTML = e, r = o.children) : r = t.querySelectorAll(e); a < r.length; a++) n.push(r[a]);
                        return new O(n)
                    }
                    return new O(e)
                },
                v = (h.extend = function() {
                    var e, t, r, o, a, s, l = arguments[0] || {},
                        c = 1,
                        u = arguments.length,
                        f = !1;
                    for ("boolean" == typeof l && (f = l, l = arguments[1] || {}, c = 2), typeof l !== i.o && !h.type(l) === i.f && (l = {}), u === c && (l = h, --c); c < u; c++)
                        if (null != (a = arguments[c]))
                            for (o in a) e = l[o], l !== (r = a[o]) && (f && r && (h.isPlainObject(r) || (t = h.isArray(r))) ? (t ? (t = !1, s = e && h.isArray(e) ? e : []) : s = e && h.isPlainObject(e) ? e : {}, l[o] = h.extend(f, s, r)) : r !== n && (l[o] = r));
                    return l
                }, h.type = function(e) {
                    return e === n ? e + l : null === e ? e + l : a.call(e).replace(/^\[object (.+)\]$/, "$1").toLowerCase()
                }),
                d = h.isFunction = function(e) {
                    return v(e) === i.f
                },
                p = (h.isArray = function(e) {
                    return v(e) === i.a
                }, h.isEmptyObject = function(e) {
                    for (var t in e) return !1;
                    return !0
                }, h.isPlainObject = function(e) {
                    if (!e || v(e) !== i.o) return !1;
                    var t, n = Object.prototype.hasOwnProperty,
                        r = n.call(e, "constructor"),
                        o = e.constructor && e.constructor.prototype && n.call(e.constructor.prototype, "isPrototypeOf");
                    if (e.constructor && !r && !o) return !1;
                    for (t in e);
                    return typeof t === i.u || n.call(e, t)
                }, h.inArray = function(e, t) {
                    for (var n = 0; n < t.length; n++)
                        if (t[n] === e) return n;
                    return -1
                }, h.each = function(e, t) {
                    var n, r, o, a = 0;
                    if (r = !!(n = e) && "length" in n && n.length, o = v(n), !d(o) && (o === i.a || 0 === r || typeof r === i.n && r > 0 && r - 1 in n))
                        for (; a < e.length && !1 !== t.call(e[a], a, e[a]); a++);
                    else
                        for (a in e)
                            if (!1 === t.call(e[a], a, e[a])) break; return e
                });

            function y(e) {
                return (e.match(o) || []).join(s)
            }

            function m(e, n) {
                for (var r = (e.parentNode || t).querySelectorAll(n) || [], i = r.length; i--;)
                    if (r[i] == e) return !0;
                return !1
            }

            function g(e, t, n) {
                h.type(n) === i.s ? e.insertAdjacentHTML(t, n) : n.nodeType ? e.insertAdjacentElement(t, n) : e.insertAdjacentElement(t, n[0])
            }

            function w(e, t, r) {
                try {
                    e.style[t] !== n && (e.style[t] = function(e, t) {
                        u[e.toLowerCase()] || h.type(t) !== i.n || (t = t += "px");
                        return t
                    }(t, r))
                } catch (e) {}
            }

            function x(e, t) {
                var n, r;
                !1 !== t && e.q.splice(0, 1), e.q.length > 0 ? (r = e.q[0], C(e.el, r.props, r.duration, r.easing, r.complete, !0)) : (n = h.inArray(e, c)) > -1 && c.splice(n, 1)
            }

            function b(e, t, n) {
                "scrollLeft" === t ? e[t] = n : "scrollTop" === t ? e[t] = n : w(e, t, n)
            }

            function C(e, t, n, i, o, a) {
                var s, l, u, v, p, y, m = {},
                    g = {},
                    w = 0,
                    C = h.isPlainObject(n);
                for (C ? (i = n.easing, n.start, u = n.progress, v = n.step, p = n.specialEasing, o = n.complete, y = n.duration) : y = n, p = p || {}, y = y || 400, i = i || "swing", a = a || !1; w < c.length; w++)
                    if (c[w].el === e) {
                        l = c[w];
                        break
                    }
                l || (l = {
                    el: e,
                    q: []
                }, c.push(l));
                for (s in t) m[s] = "scrollLeft" === s || "scrollTop" === s ? e[s] : new O(e).css(s);
                for (s in m) m[s] !== t[s] && (g[s] = t[s]);
                if (h.isEmptyObject(g)) a && x(l);
                else {
                    var M, S, A, T, z, E, H, k, I, W = a ? 0 : h.inArray(L, l.q),
                        L = {
                            props: g,
                            duration: C ? n : y,
                            easing: i,
                            complete: o
                        };
                    if (-1 === W && (W = l.q.length, l.q.push(L)), 0 === W)
                        if (y > 0) H = r.now(), k = function() {
                            M = r.now(), I = M - H, S = L.stop || I >= y, A = 1 - (Math.max(0, H + y - M) / y || 0);
                            for (s in g) T = m[s], z = g[s], E = (z - T) * f[p[s] || i](A, A * y, 0, 1, y) + T, b(e, s, E), d(v) && v(E, {
                                elem: e,
                                prop: s,
                                start: T,
                                now: E,
                                end: z,
                                pos: A,
                                options: {
                                    easing: i,
                                    speacialEasing: p,
                                    duration: y,
                                    complete: o,
                                    step: v
                                },
                                startTime: H
                            });
                            d(u) && u({}, A, Math.max(0, y - I)), S ? (x(l), d(o) && o()) : L.frame = r.rAF()(k)
                        }, L.frame = r.rAF()(k);
                        else {
                            for (s in g) b(e, s, g[s]);
                            x(l)
                        }
                }
            }

            function O(e) {
                h.type(e) === i.s || e.length || (e = [e]);
                for (var t = 0; t < e.length; t++) this[t] = e[t];
                return this.length = e.length, this
            }
            return O.prototype = {
                each: function(e) {
                    return p(this, e)
                },
                append: function(e) {
                    return this.each(function() {
                        g(this, "beforeend", e)
                    })
                },
                prepend: function(e) {
                    return this.each(function() {
                        g(this, "afterbegin", e)
                    })
                },
                before: function(e) {
                    return this.each(function() {
                        g(this, "beforebegin", e)
                    })
                },
                after: function(e) {
                    return this.each(function() {
                        g(this, "afterend", e)
                    })
                },
                hover: function(e, t) {
                    return this.on("mouseenter", e).on("mouseleave", t || e)
                },
                first: function() {
                    return new O(this[0])
                },
                last: function() {
                    return new O(this[this.length - 1])
                },
                find: function(e) {
                    var t, n = [];
                    return this.each(function() {
                        var r = this.querySelectorAll(e);
                        for (t = 0; t < r.length; t++) n.push(r[t])
                    }), new O(n)
                },
                hide: function() {
                    return this.each(function() {
                        this.style.display = "none"
                    })
                },
                show: function() {
                    return this.each(function() {
                        this.style.display = "block"
                    })
                },
                attr: function(e, t) {
                    for (var r = 0; r < this.length; r++) {
                        var i = this[r];
                        if (t === n) return i.getAttribute(e);
                        i.setAttribute(e, t)
                    }
                    return this
                },
                removeAttr: function(e) {
                    return this.each(function() {
                        this.removeAttribute(e)
                    })
                },
                prop: function(e, t) {
                    for (var r = 0; r < this.length; r++) {
                        var i = this[r];
                        if (t === n) return i[e];
                        i[e] = t
                    }
                    return this
                },
                val: function(e) {
                    var t = this[0];
                    return e ? (t.value = e, this) : t.value
                },
                scrollLeft: function(e) {
                    for (var t = 0; t < this.length; t++) {
                        var r = this[t];
                        if (e === n) return r.scrollLeft;
                        r.scrollLeft = e
                    }
                    return this
                },
                scrollTop: function(e) {
                    for (var t = 0; t < this.length; t++) {
                        var r = this[t];
                        if (e === n) return r.scrollTop;
                        r.scrollTop = e
                    }
                    return this
                },
                children: function(e) {
                    var t, n, r = [];
                    return this.each(function() {
                        for (t = (i = this).children, n = 0; n < t.length; n++) {
                            var i = t[n];
                            e ? (i.matches && i.matches(e) || m(i, e)) && r.push(i) : r.push(i)
                        }
                    }), new O(r)
                },
                on: function(e, t) {
                    var n, r;
                    return e = (e || l).match(o) || [l], this.each(function() {
                        if ((r = this).addEventListener)
                            for (n = 0; n < e.length; n++) r.addEventListener(e[n], t);
                        else if (r.detachEvent)
                            for (n = 0; n < e.length; n++) r.attachEvent("on" + e[n], t)
                    })
                },
                off: function(e, t) {
                    var n, r;
                    return e = (e || l).match(o) || [l], this.each(function() {
                        if ((r = this).removeEventListener)
                            for (n = 0; n < e.length; n++) r.removeEventListener(e[n], t);
                        else if (r.detachEvent)
                            for (n = 0; n < e.length; n++) r.detachEvent("on" + e[n], t)
                    })
                },
                trigger: function(e) {
                    var n, r;
                    return this.each(function() {
                        n = this, t.createEvent ? ((r = t.createEvent("HTMLEvents")).initEvent(e, !0, !1), n.dispatchEvent(r)) : n.fireEvent("on" + e)
                    })
                },
                hasClass: function(e) {
                    for (var t, n = 0, r = s + e + s; t = this[n++];)
                        if (t.classList) {
                            if (t.classList.contains(e)) return !0
                        } else if (1 === t.nodeType && (s + y(t.className) + s).indexOf(r) > -1) return !0;
                    return !1
                },
                addClass: function(e) {
                    var t, r, i, a, l, c, u = null,
                        f = 0,
                        h = 0;
                    if (e)
                        for (t = e.match(o) || []; r = this[f++];)
                            if (u === n && (u = r.classList !== n), u)
                                for (; l = t[h++];) r.classList.add(l);
                            else if (a = r.className, i = 1 === r.nodeType && s + y(a) + s) {
                        for (; l = t[h++];) i.indexOf(s + l + s) < 0 && (i += l + s);
                        a !== (c = y(i)) && (r.className = c)
                    }
                    return this
                },
                removeClass: function(e) {
                    var t, r, i, a, l, c, u = null,
                        f = 0,
                        h = 0;
                    if (e)
                        for (t = e.match(o) || []; r = this[f++];)
                            if (u === n && (u = r.classList !== n), u)
                                for (; l = t[h++];) r.classList.remove(l);
                            else if (a = r.className, i = 1 === r.nodeType && s + y(a) + s) {
                        for (; l = t[h++];)
                            for (; i.indexOf(s + l + s) > -1;) i = i.replace(s + l + s, s);
                        a !== (c = y(i)) && (r.className = c)
                    }
                    return this
                },
                remove: function() {
                    return this.each(function() {
                        null != this.parentNode && this.parentNode.removeChild(this)
                    })
                },
                offset: function() {
                    var n = this[0].getBoundingClientRect(),
                        r = e.pageXOffset || t.documentElement.scrollLeft,
                        i = e.pageYOffset || t.documentElement.scrollTop;
                    return {
                        top: n.top + i,
                        left: n.left + r
                    }
                },
                css: function(t, r) {
                    var o, a;
                    return h.type(t) === i.s ? r === n ? (o = this[0], e.getComputedStyle ? e.getComputedStyle(o, null).getPropertyValue(t) : o.currentStyle[t]) : this.each(function() {
                        w(this, t, r)
                    }) : this.each(function() {
                        for (a in t) w(this, a, t[a])
                    })
                },
                unwrap: function() {
                    var e, t, n, r = [];
                    for (this.each(function() {
                            n = this.parentNode, -1 === h.inArray(n, r) && r.push(n)
                        }), e = 0; e < r.length; e++) {
                        for (t = r[e], n = t.parentNode; t.firstChild;) n.insertBefore(t.firstChild, t);
                        n.removeChild(t)
                    }
                    return this
                },
                wrapAll: function(e) {
                    for (var t, n = this, r = new h(e)[0], i = r, o = n[0].parentNode, a = n[0].previousSibling; i.childNodes.length > 0;) i = i.childNodes[0];
                    for (t = 0; n.length - t; i.firstChild === n[0] && t++) i.appendChild(n[t]);
                    var s = a ? a.nextSibling : o.firstChild;
                    return o.insertBefore(r, s), this
                },
                wrapInner: function(e) {
                    return this.each(function() {
                        var t = new O(this),
                            n = t.contents();
                        n.length ? n.wrapAll(e) : t.append(e)
                    })
                },
                wrap: function(e) {
                    return this.each(function() {
                        new h(this).wrapAll(e)
                    })
                },
                contents: function() {
                    var e, t, n = [];
                    return this.each(function() {
                        for (e = this.childNodes, t = 0; t < e.length; t++) n.push(e[t])
                    }), new O(n)
                },
                parent: function() {
                    var e = [];
                    return this.each(function() {
                        e.push(this.parentNode)
                    }), new O(e)
                },
                is: function(e) {
                    var t, n;
                    for (n = 0; n < this.length; n++) {
                        if (t = this[n], ":visible" === e) return "none" !== t.style.display;
                        if (":hidden" === e) return "none" === t.style.display;
                        if (t.matches && t.matches(e) || m(t, e)) return !0
                    }
                    return !1
                },
                animate: function(e, t, n, r) {
                    return this.each(function() {
                        C(this, e, t, n, r)
                    })
                },
                stop: function(e, t) {
                    return this.each(function() {
                        ! function(e, t, n) {
                            for (var i, o, a, s = 0; s < c.length; s++)
                                if ((i = c[s]).el === e) {
                                    if (i.q.length > 0) {
                                        if ((o = i.q[0]).stop = !0, r.cAF()(o.frame), i.q.splice(0, 1), n)
                                            for (a in o.props) b(e, a, o.props[a]);
                                        t ? i.q = [] : x(i, !1)
                                    }
                                    break
                                }
                        }(this, e, t)
                    })
                }
            }, h
        }(a),
        l = function(e) {
            var t = [],
                r = "__overlayScrollbars__";

            function i(e) {
                for (var n = 0; n < t.length; n++)
                    if (e === t[n]) return e[r]
            }
            return {
                all: function() {
                    return t
                },
                add: function(e, n) {
                    e[r] = n, t.push(e)
                },
                rem: function(n) {
                    var i = e.inArray(n, t);
                    i > -1 && (delete n[r], t.splice(i, 1))
                },
                has: function(e) {
                    return i(e) !== n
                },
                get: i
            }
        }(s),
        c = function(e) {
            function t(r, o, a, s, l) {
                var c = !1;
                if (a = a === n ? "" : a, typeof o !== i.s) return c;
                if (0 === o.length) return c;
                if ("" === a) {
                    for (var u = o.split("."), f = r, h = "", v = !1, d = 0; d < u.length; d++) {
                        var p = u[d];
                        if (f = f[p], h += p + ".", e.type(f) !== i.o && d + 1 !== u.length) {
                            v = !0;
                            break
                        }
                    }
                    if (v) return h.slice(0, -1)
                }
                for (var y in r)
                    if (r.hasOwnProperty(y)) {
                        var m = a + y === o;
                        if (e.type(r[y]) !== i.o || m) {
                            if (m) {
                                typeof s === i.f && s(r, y), c = !0;
                                break
                            }
                        } else if (c = t(r[y], o, a + y + ".", s, l), typeof l === i.f && l(r, y), c) break
                    }
                return c
            }
            return {
                has: function(e, n) {
                    return t(e, n)
                },
                get: function(e, n) {
                    var r;
                    return t(e, n, "", function(e, t) {
                        r = e[t]
                    }), r
                },
                set: function(n, r, i, o) {
                    var a = !1;
                    if (t(n, r, "", function(e, t) {
                            e[t] = i, a = !0
                        }), !a && o) {
                        for (var s = r.split("."), l = {}, c = l, u = 0; u < s.length; u++) {
                            var f = u === s.length - 1 ? i : {};
                            c = c[s[u]] = f
                        }
                        e.extend(!0, n, l), a = !0
                    }
                    return a
                },
                del: function(n, r, i) {
                    var o = !1;
                    return t(n, r, "", function(e, t) {
                        delete e[t], o = !0
                    }, function(t, n) {
                        i && e.isEmptyObject(t[n]) && delete t[n]
                    }), o
                }
            }
        }(s),
        u = (function(s, l, c, u) {
            var f, h, v = {
                className: "os-theme-dark",
                resize: "none",
                sizeAutoCapable: !0,
                clipAlways: !0,
                normalizeRTL: !0,
                paddingAbsolute: !1,
                autoUpdate: null,
                autoUpdateInterval: 33,
                nativeScrollbarsOverlaid: {
                    showNativeScrollbars: !1,
                    initialize: !0
                },
                overflowBehavior: {
                    x: "scroll",
                    y: "scroll"
                },
                scrollbars: {
                    visibility: "auto",
                    autoHide: "never",
                    autoHideDelay: 800,
                    dragScrolling: !0,
                    clickScrolling: !1,
                    touchSupport: !0
                },
                textarea: {
                    dynWidth: !1,
                    dynHeight: !1
                },
                callbacks: {
                    onInitialized: null,
                    onInitializationWithdrawn: null,
                    onDestroyed: null,
                    onScrollStart: null,
                    onScroll: null,
                    onScrollStop: null,
                    onOverflowChanged: null,
                    onOverflowAmountChanged: null,
                    onDirectionChanged: null,
                    onContentSizeChanged: null,
                    onHostSizeChanged: null,
                    onUpdated: null
                }
            };

            function d() {
                f === n && (f = new function(r) {
                    var i = this;
                    i.defaultOptions = r, i.autoUpdateLoop = !1, i.autoUpdateRecommended = s.mO() === n;
                    var a = c("body"),
                        u = c('<div id="hs-dummy-scrollbar-size"><div style="height: 200%; width: 200%; margin: 10px 0;"></div></div>'),
                        f = function() {
                            a.append(u);
                            var e, t = "overflow",
                                n = "hidden",
                                r = u[0],
                                s = c(u.children("div").first()),
                                l = r[o.oH];
                            return 0 === l && u.hide().show(), e = {
                                x: r[o.oH] - r[o.cH],
                                y: r[o.oW] - r[o.cW]
                            }, i.restrictedMeasuring = function() {
                                u.css(t, n);
                                var e = {
                                    w: r[o.sW],
                                    h: r[o.sH]
                                };
                                u.css(t, "visible");
                                var i = {
                                    w: r[o.sW],
                                    h: r[o.sH]
                                };
                                return e.w - i.w != 0 || e.h - i.h != 0
                            }(), i.nativeScrollbarStyling = (u.addClass("os-viewport-native-scrollbars-invisible"), u.css(t, n).hide().css(t, "scroll").show(), r[o.oH] - r[o.cH] == 0 && r[o.oW] - r[o.cW] == 0), i.rtlScrollBehavior = function() {
                                u.css({
                                    "overflow-y": n,
                                    direction: "rtl"
                                }).scrollLeft(0);
                                var e = u.offset(),
                                    t = s.offset();
                                u.scrollLeft(999);
                                var r = s.offset();
                                return {
                                    i: e.left === t.left,
                                    n: t.left - r.left == 0
                                }
                            }(), u.removeAttr(o.s).remove(), e
                        }(),
                        h = {
                            x: 0 === f.x,
                            y: 0 === f.y
                        };

                    function v(e) {
                        var r = !1,
                            i = "Webkit Moz ms O".split(" "),
                            o = t.createElement("div"),
                            a = null;
                        if (e = e.toLowerCase(), o.style[e] !== n && (r = !0), !1 === r) {
                            a = e.charAt(0).toUpperCase() + e.substr(1);
                            for (var s = 0; s < i.length; s++)
                                if (o.style[i[s] + a] !== n) {
                                    r = !0;
                                    break
                                }
                        }
                        return r
                    }
                    i.nativeScrollbarSize = f, i.nativeScrollbarIsOverlaid = h, i.overlayScrollbarDummySize = {
                        x: 30,
                        y: 30
                    }, i.msie = function() {
                        var t = e.navigator.userAgent,
                            n = t.indexOf("MSIE ");
                        if (n > 0) return parseInt(t.substring(n + 5, t.indexOf(".", n)), 10);
                        var r = t.indexOf("Trident/");
                        if (r > 0) {
                            var i = t.indexOf("rv:");
                            return parseInt(t.substring(i + 3, t.indexOf(".", i)), 10)
                        }
                        var o = t.indexOf("Edge/");
                        return o > 0 && parseInt(t.substring(o + 5, t.indexOf(".", o)), 10)
                    }(), i.cssCalc = function() {
                        for (var e = t.createElement("div"), n = ["calc", "-webkit-calc", "-moz-calc", "-o-calc"], r = 0; r < n.length; ++r) {
                            var i = n[r];
                            if (e.style.cssText = "width:" + i + "(1px);", e.style.length) return i
                        }
                        return null
                    }(), i.supportTransform = v("transform"), i.supportTransition = v("transition");
                    var d = !1;
                    try {
                        var p = Object.defineProperty({}, "passive", {
                            get: function() {
                                d = !0
                            }
                        });
                        e.addEventListener("test", null, p)
                    } catch (e) {}
                    i.supportPassiveEvents = d, i.supportResizeObserver = s.rO() !== n, i.supportMutationObserver = s.mO() !== n,
                        function() {
                            if (!h.x || !h.y) {
                                var t = s.wW(),
                                    n = s.wH(),
                                    r = f();
                                c(e).on("resize", function() {
                                    if (l.all().length > 0) {
                                        var e = s.wW(),
                                            h = s.wH(),
                                            v = e - t,
                                            d = h - n;
                                        if (0 === v && 0 === d) return;
                                        var p = Math.round(e / (t / 100)),
                                            y = Math.round(h / (n / 100)),
                                            m = Math.abs(v),
                                            g = Math.abs(d),
                                            w = Math.abs(p),
                                            x = Math.abs(y),
                                            b = f(),
                                            C = m > 2 && g > 2,
                                            O = (T = w, z = x, E = Math.abs(T), H = Math.abs(z), !(E !== H && E + 1 !== H && E - 1 !== H)),
                                            M = b !== r && r > 0,
                                            S = !(C && O && M);
                                        if (!S) {
                                            a.append(u);
                                            var A = u[0];
                                            i.nativeScrollbarSize = {
                                                x: A[o.oH] - A[o.cH],
                                                y: A[o.oW] - A[o.cW]
                                            }, u.remove(), c.each(l.all(), function() {
                                                l.has(this) && l.get(this).update("zoom")
                                            })
                                        }
                                        t = e, n = h, r = b
                                    }
                                    var T, z, E, H
                                })
                            }

                            function f() {
                                var t = e.screen.deviceXDPI || 0,
                                    n = e.screen.logicalXDPI || 1;
                                return e.devicePixelRatio || t / n
                            }
                        }()
                }(v)), h === n && (h = new function(e) {
                    var t, r = "autoUpdate",
                        i = [],
                        o = [],
                        a = !1,
                        l = 33,
                        u = s.now(),
                        f = function() {
                            if (i.length > 0 && a) {
                                t = s.rAF()(function() {
                                    f()
                                });
                                var e = s.now(),
                                    c = e - u;
                                if (c > l) {
                                    u = e - c % l;
                                    for (var h = 33, v = 0; v < i.length; v++) {
                                        var d = i[v];
                                        if (d !== n) {
                                            var p = d.options(),
                                                y = p[r],
                                                m = Math.max(1, p.autoUpdateInterval),
                                                g = s.now();
                                            (!0 === y || null === y) && g - o[v] > m && (d.update("auto"), o[v] = new Date(g += m)), h = Math.max(1, Math.min(h, m))
                                        }
                                    }
                                    l = h
                                }
                            } else l = 33
                        };
                    this.add = function(t) {
                        -1 === c.inArray(t, i) && (i.push(t), o.push(s.now()), i.length > 0 && !a && (a = !0, e.autoUpdateLoop = a, f()))
                    }, this.remove = function(r) {
                        var l = c.inArray(r, i);
                        l > -1 && (o.splice(l, 1), i.splice(l, 1), 0 === i.length && a && (a = !1, e.autoUpdateLoop = a, t !== n && (s.cAF()(t), t = -1)))
                    }
                }(f))
            }

            function p(t, f, h, v) {
                if (ei(t)) {
                    if (l.has(t)) {
                        var d = l.get(t);
                        return d.options(f), d
                    }
                    var p, y, m, g, w, x, b, C, O, M, S, A, T, z, E, H, k, I, W, L, P, F, N, D, R, B, j, q, _, U, Q, V, X, Y, J, K, $, G, Z, ee, te, ne, re, ie, oe, ae, se, le, ce, ue, fe, he, ve, de, pe, ye, me, ge, we, xe, be, Ce, Oe, Me, Se, Ae, Te, ze, Ee, He, ke, Ie, We, Le, Pe, Fe, Ne, De, Re, Be, je, qe, _e, Ue, Qe, Ve, Xe, Ye, Je, Ke, $e, Ge, Ze, et, tt, nt, rt, it, ot, at, st, lt, ct, ut, ft, ht, vt, dt, pt, yt, mt, gt, wt, xt, bt = new e[r],
                        Ct = !1,
                        Ot = !1,
                        Mt = !1,
                        St = !1,
                        At = !1,
                        Tt = {
                            w: 0,
                            h: 0
                        },
                        zt = {},
                        Et = {},
                        Ht = {},
                        kt = 175,
                        It = "-hidden",
                        Wt = "margin-",
                        Lt = "padding-",
                        Pt = "border-",
                        Ft = "top",
                        Nt = "right",
                        Dt = "bottom",
                        Rt = "left",
                        Bt = "min-",
                        jt = "max-",
                        qt = "width",
                        _t = "height",
                        Ut = "float",
                        Qt = "",
                        Vt = "auto",
                        Xt = "scroll",
                        Yt = "100%",
                        Jt = "x",
                        Kt = "y",
                        $t = '<div class="',
                        Gt = '"></div>',
                        Zt = ".",
                        en = " ",
                        tn = "scrollbar",
                        nn = "-horizontal",
                        rn = "-vertical",
                        on = Xt + "Left",
                        an = Xt + "Top",
                        sn = "mousedown touchstart",
                        ln = "mouseup touchend",
                        cn = "mousemove touchmove",
                        un = "mouseenter",
                        fn = "mouseleave",
                        hn = "keydown",
                        vn = "keyup",
                        dn = "selectstart",
                        pn = "transitionend webkitTransitionEnd oTransitionEnd",
                        yn = "__overlayScrollbarsRO__",
                        mn = "os-",
                        gn = "os-html",
                        wn = "os-host",
                        xn = wn + "-textarea",
                        bn = wn + "-" + tn + nn + It,
                        Cn = wn + "-" + tn + rn + It,
                        On = wn + "-transition",
                        Mn = wn + "-rtl",
                        Sn = wn + "-resize-disabled",
                        An = wn + "-scrolling",
                        Tn = wn + "-overflow",
                        zn = Tn + "-x",
                        En = Tn + "-y",
                        Hn = "os-textarea",
                        kn = Hn + "-cover",
                        In = "os-padding",
                        Wn = "os-viewport",
                        Ln = Wn + "-native-scrollbars-invisible",
                        Pn = Wn + "-native-scrollbars-overlaid",
                        Fn = "os-content",
                        Nn = "os-content-arrange",
                        Dn = "os-content-glue",
                        Rn = "os-size-auto-observer",
                        Bn = "os-resize-observer",
                        jn = "os-resize-observer-item",
                        qn = jn + "-final",
                        _n = "os-text-inherit",
                        Un = mn + tn,
                        Qn = Un + "-track",
                        Vn = Qn + "-off",
                        Xn = Un + "-handle",
                        Yn = Xn + "-off",
                        Jn = Un + "-unusable",
                        Kn = Un + "-" + Vt + It,
                        $n = Un + "-corner",
                        Gn = $n + "-resize",
                        Zn = Gn + "-both",
                        er = Gn + nn,
                        tr = Gn + rn,
                        nr = Un + nn,
                        rr = Un + rn,
                        ir = "os-dragging",
                        or = "os-theme-none",
                        ar = {},
                        sr = 33,
                        lr = [],
                        cr = 11,
                        ur = [112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 123, 33, 34, 37, 38, 39, 40, 16, 17, 18, 19, 20, 144],
                        fr = [],
                        hr = {
                            x: 0,
                            y: 0
                        },
                        vr = {
                            w: 0,
                            h: 0
                        };
                    if (bt.sleep = function() {
                            N = !0
                        }, bt.update = function(e) {
                            var t, n, r = "zoom" === e;
                            e === Vt ? (t = function() {
                                if (N || rt) return !1;
                                var e = J.attr(o.i) || Qt,
                                    t = br(e, Pe),
                                    n = J.attr(o.c) || Qt,
                                    r = br(n, Fe),
                                    i = J.attr(o.s) || Qt,
                                    a = br(i, Ne),
                                    s = J.is(":visible") || Qt,
                                    l = br(s, De),
                                    c = Mt && Y.attr("rows") || Qt,
                                    u = br(c, Re),
                                    f = Mt && Y.attr("cols") || Qt,
                                    h = br(f, Be),
                                    v = Mt && Y.attr("wrap") || Qt,
                                    d = br(v, je);
                                return Pe = e, r && (r = ii(Fe, n)), Fe = n, Ne = i, De = s, Re = c, Be = f, je = v, t || r || a || l || u || h || d
                            }(), n = function() {
                                if (N) return !1;
                                var e, t = Mt && ye && !We ? Y.val().length : 0,
                                    n = !rt && ye && !Mt,
                                    r = {};
                                n && (e = ne.css(Ut), r[Ut] = F ? Nt : Rt, r[qt] = Vt, ne.css(r));
                                var i = {
                                    w: li()[o.sW] + t,
                                    h: li()[o.sH] + t
                                };
                                n && (r[Ut] = e, r[qt] = Yt, ne.css(r));
                                var a = ni(),
                                    s = Cr(i, qe) || a;
                                return qe = i, s
                            }(), (t || n) && ci(!1, n)) : r ? ci(!0, !0) : (e = N || e, N = !1, ci(!1, !1, e)), Mt || r || ne.find("img").each(function(e, t) {
                                -1 === c.inArray(t, lr) && (t = c(t)).off("load", jr).on("load", jr)
                            })
                        }, bt.options = function(e, t) {
                            if (c.isEmptyObject(e) || !c.isPlainObject(e)) {
                                if (c.type(e) === i.s) {
                                    if (arguments.length >= 2) {
                                        var n = {};
                                        return u.set(n, e, t, !0), ai(n), void ci()
                                    }
                                    return u.get(B, e)
                                }
                                return B
                            }
                            ai(e);
                            var r = N || !1;
                            N = !1, ci(), N = r
                        }, bt.destroy = function() {
                            Ot = !0, v.remove(bt), Tr(), xr($), At && xr(K), $.remove(), G !== n && G.remove(), te !== n && te.remove(), At && K.remove(), A ? (yr(J, cn, Gr), yr(J, un, Kr), yr(J, fn, $r)) : J.off(cn, Gr).off(un, Kr).off(fn, $r), oe.remove(), le.remove(), ie && ie.remove(), mt || Hr(), ne.contents().unwrap().unwrap().unwrap(), St && V.removeClass(gn), Mt ? (Y.off(Xt, Rr).off("drop", Fr).off("focus", Nr).off("focusout", Dr), m > 9 || !y ? Y.off("input", Wr) : Y.off(hn, Lr).off(vn, Pr), re.remove(), Y.removeClass(Hn).removeClass(_n).unwrap().removeAttr(o.s), J.remove()) : (Y.removeClass(wn), J.removeClass(wn).removeClass(Sn).removeClass(Mn).removeClass(bn).removeClass(Cn).removeClass(On).removeClass(An).removeClass(Tn).removeClass(zn).removeClass(En).removeClass(or).removeClass(Ke));
                            for (var e = 0; e < lr.length; e++) c(lr[e]).off("load", jr);
                            lr = n, l.rem(t);
                            var r = j.callbacks.onDestroyed;
                            c.isFunction(r) && Mr(r);
                            for (var i in bt) delete bt[i];
                            bt = n
                        }, bt.scroll = function(t, r, a, s) {
                            if (0 === arguments.length || t === n) {
                                var l = zt,
                                    u = Et,
                                    f = Je && F && p.i,
                                    h = Je && F && p.n,
                                    v = l.cs,
                                    d = l.csr,
                                    y = l.ms;
                                return d = f ? 1 - d : d, v = f ? y - v : v, {
                                    x: {
                                        position: v *= h ? -1 : 1,
                                        ratio: d,
                                        max: y *= h ? -1 : 1,
                                        handleOffset: l.ho,
                                        handleLength: l.hl,
                                        handleLengthRatio: l.hlr,
                                        trackLength: l.tl,
                                        isRTL: F,
                                        isRTLNormalized: Je
                                    },
                                    y: {
                                        position: u.cs,
                                        ratio: u.csr,
                                        max: u.ms,
                                        handleOffset: u.ho,
                                        handleLength: u.hl,
                                        handleLengthRatio: u.hlr,
                                        trackLength: u.tl
                                    }
                                }
                            }
                            var m, g = [Jt, Rt, "l"],
                                w = [Kt, Ft, "t"],
                                x = ["+=", "-=", "*=", "/="],
                                b = {},
                                C = c.type(r) === i.o,
                                O = "begin",
                                M = "center",
                                A = "nearest",
                                T = {
                                    axis: "xy",
                                    block: [O, O],
                                    margin: [0, 0, 0, 0]
                                },
                                z = [Jt, Kt, "xy", "yx"],
                                E = [O, "end", M, A],
                                H = t.hasOwnProperty("el"),
                                k = H ? t.el : t,
                                I = k instanceof c || k instanceof e.jQuery,
                                W = !I && ei(k),
                                L = function(e, t) {
                                    for (m = 0; m < t.length; m++)
                                        if (e === t[m]) return !0;
                                    return !1
                                },
                                P = function(e) {
                                    var t = {};
                                    if (c.type(e) === i.a && e.length > 0) t.x = e[0], t.y = e[1];
                                    else if (c.type(e) === i.s || c.type(e) === i.n) t.x = e, t.y = e;
                                    else if (c.type(e) === i.o) {
                                        e = c.extend({}, e), m = 0;
                                        for (var n in e) e.hasOwnProperty(n) && (m > 2 && delete e[n], m++);
                                        var r = function(t) {
                                            var n = t ? g : w;
                                            for (m = 0; m < n.length; m++)
                                                if (n[m] in e) return e[n[m]]
                                        };
                                        t.x = r(!0), t.y = r(!1)
                                    }
                                    return t
                                },
                                N = function(t, r) {
                                    var o, a, s, l = t ? zt : Et,
                                        u = l.cs,
                                        f = l.ms,
                                        h = F && t,
                                        v = h && p.n && !Je;
                                    if (c.type(r) === i.s) {
                                        if (r.length > 2) {
                                            var d = r.substr(0, 2);
                                            for (m = 0; m < x.length; m++)
                                                if (d === x[m]) {
                                                    o = x[m];
                                                    break
                                                }
                                        }
                                        r = (r = (r = (r = (r = (r = (r = (r = (r = o !== n ? r.substr(2) : r).replace(/min/g, 0)).replace(/</g, 0)).replace(/max/g, (v ? "-" : Qt) + Yt)).replace(/>/g, (v ? "-" : Qt) + Yt)).replace(/px/g, Qt)).replace(/%/g, " * " + f * (h && p.n ? -1 : 1) / 100)).replace(/vw/g, " * " + Ht.w)).replace(/vh/g, " * " + Ht.h), a = si(e.parseFloat(e.eval(r)).toFixed())
                                    } else c.type(r) === i.n && (a = r);
                                    if (!isNaN(a) && a !== n && c.type(a) === i.n) {
                                        var y = Je && h,
                                            g = u * (y && p.n ? -1 : 1),
                                            w = y && p.i,
                                            b = y && p.n;
                                        switch (g = w ? f - g : g, o) {
                                            case "+=":
                                                s = g + a;
                                                break;
                                            case "-=":
                                                s = g - a;
                                                break;
                                            case "*=":
                                                s = g * a;
                                                break;
                                            case "/=":
                                                s = g / a;
                                                break;
                                            default:
                                                s = a
                                        }
                                        w && (s = f - s), b && (s *= -1), h && p.n ? (s = Math.max(f, s), s = Math.min(0, s)) : (s = Math.min(f, s), s = Math.max(0, s)), s === u && (s = n)
                                    }
                                    return s
                                };
                            if (I || W) {
                                var D = I ? k : c(k);
                                if (0 === D.length) return;
                                if (H) {
                                    var R, B, j, q = t.axis,
                                        _ = t.block,
                                        U = c.type(_),
                                        Q = t.margin,
                                        V = c.type(Q);
                                    if (U === i.s) _ = [_, _];
                                    else if (U === i.a)
                                        if ((B = _.length) > 2 || B < 1) _ = n;
                                        else {
                                            for (R = !0, 1 === B && (_[1] = O), m = 0; m < B; m++) {
                                                var X = _[m];
                                                if (c.type(X) !== i.s || !L(X, E)) {
                                                    R = !1;
                                                    break
                                                }
                                            }
                                            R || (_ = n)
                                        } else _ = n;
                                    if (V === i.n) Q = [Q, Q, Q, Q];
                                    else if ("boolean" === V) Q = Q ? [si(D.css(Wt + Ft)), si(D.css(Wt + Nt)), si(D.css(Wt + Dt)), si(D.css(Wt + Rt))] : [0, 0, 0, 0];
                                    else if (V === i.a)
                                        if (2 !== (j = Q.length) && 4 !== j) Q = n;
                                        else {
                                            for (R = !0, m = 0; m < j; m++)
                                                if (c.type(Q[m]) !== i.n) {
                                                    R = !1;
                                                    break
                                                }
                                            R ? 2 === j && (Q = [Q[0], Q[1], Q[0], Q[1]]) : Q = n
                                        } else Q = n;
                                    T.axis = L(q, z) ? q : T.axis, T.block = _ || T.block, T.margin = Q || T.margin
                                }
                                var Y = D.offset(),
                                    J = Z.offset(),
                                    K = zt.cs,
                                    $ = Et.cs,
                                    G = T.axis,
                                    te = T.block,
                                    ne = T.margin,
                                    re = {
                                        x: te[0] === (F ? O : "end"),
                                        y: "end" === te[1]
                                    },
                                    ie = {
                                        x: te[0] === M,
                                        y: te[1] === M
                                    },
                                    oe = {
                                        x: te[0] === A,
                                        y: te[1] === A
                                    },
                                    ae = {},
                                    se = re.x || re.y || ie.x || ie.y || oe.x || oe.y;
                                Y.top -= ne[0], Y.left -= ne[3];
                                var le = {
                                    x: Math.round(Y.left - J.left + K),
                                    y: Math.round(Y.top - J.top + $)
                                };
                                if (F && (p.n || p.i || (le.x = Math.round(J.left - Y.left + K)), p.n && Je && (le.x *= -1), p.i && Je && (le.x = Math.round(J.left - Y.left + (zt.ms - K)))), se) {
                                    var ce, ue = {},
                                        fe = {
                                            w: (ue = S ? {
                                                w: (ce = D[0].getBoundingClientRect())[qt],
                                                h: ce[_t]
                                            } : {
                                                w: D[0][o.oW],
                                                h: D[0][o.oH]
                                            }).w + ne[3] + ne[1],
                                            h: ue.h + ne[0] + ne[2]
                                        },
                                        he = function(e) {
                                            var t = Jr(e),
                                                n = ie[t.xy] ? 2 : 1,
                                                r = Y[t.lt] + fe[t._wh] / 2,
                                                i = J[t.lt] + Ht[t._wh] / 2;
                                            oe[t.xy] && (ae[t.xy] = fe[t._wh] <= Ht[t._wh] && Y[t.lt] >= J[t.lt] && Y[t.lt] + fe[t._wh] <= J[t.lt] + Ht[t._wh], re[t.xy] = fe[t._wh] < Ht[t._wh] ? r > i : r < i), (re[t.xy] || ie[t.xy]) && (le[t.xy] -= (Ht[t._wh] / n - fe[t._wh] / n) * (e && F && Je ? -1 : 1))
                                        };
                                    he(!0), he(!1)
                                }(G === Jt || ae.y) && delete le.y, (G === Kt || ae.x) && delete le.x, t = le
                            }
                            b.x = N(!0, P(t).x), b.y = N(!1, P(t).y);
                            var ve = b.x !== n,
                                de = b.y !== n;
                            if (r > 0 || C) {
                                var pe = {};
                                if (ve && (pe[on] = b.x), de && (pe[an] = b.y), C) ee.animate(pe, r);
                                else {
                                    var ye = {
                                        duration: r,
                                        complete: s
                                    };
                                    if (c.type(a) === i.a) {
                                        var me = {};
                                        me[on] = a[0], me[an] = a[1], ye.specialEasing = me
                                    } else ye.easing = a;
                                    ee.animate(pe, ye)
                                }
                            } else ve && ee[on](b.x), de && ee[an](b.y)
                        }, bt.scrollStop = function(e, t, n) {
                            ee.stop(e, t, n)
                        }, bt.getElements = function() {
                            return {
                                target: Y[0],
                                host: J[0],
                                padding: Z[0],
                                viewport: ee[0],
                                content: ne[0],
                                scrollbarHorizontal: {
                                    scrollbar: oe[0],
                                    track: ae[0],
                                    handle: se[0]
                                },
                                scrollbarVertical: {
                                    scrollbar: le[0],
                                    track: ce[0],
                                    handle: ue[0]
                                },
                                scrollbarCorner: ie
                            }
                        }, bt.getState = function(e) {
                            var t = function(e) {
                                    if (!c.isPlainObject(e)) return e;
                                    var t = c.extend(!0, {}, e);
                                    u.del(t, "c");
                                    var n = function(e, n) {
                                        t.hasOwnProperty(e) && (t[n] = t[e], delete t[e])
                                    };
                                    return n("w", qt), n("h", _t), t
                                },
                                n = {
                                    sleeping: t(N) || !1,
                                    autoUpdate: t(!rt),
                                    widthAuto: t(ye),
                                    heightAuto: t(me),
                                    padding: t(xe),
                                    overflowAmount: t(Ee),
                                    hideOverflow: t(pe),
                                    hasOverflow: t(de),
                                    contentScrollSize: t(he),
                                    viewportSize: t(Ht),
                                    hostSize: t(fe)
                                };
                            return c.type(e) === i.s ? u.get(n, e) : n
                        }, function(e, t) {
                            R = h.defaultOptions, g = h.nativeScrollbarStyling, x = c.extend(!0, {}, h.nativeScrollbarSize), C = c.extend(!0, {}, h.nativeScrollbarIsOverlaid), O = c.extend(!0, {}, h.overlayScrollbarDummySize), p = c.extend(!0, {}, h.rtlScrollBehavior), ai(c.extend(!0, {}, R, t));
                            var n, r = j.callbacks;
                            if (C.x && C.x && !j.nativeScrollbarsOverlaid.initialize) {
                                var i = r.onInitializationWithdrawn;
                                return c.isFunction(i) && Mr(i), !1
                            }
                            if (w = h.cssCalc, m = h.msie, y = h.autoUpdateRecommended, M = h.supportTransition, S = h.supportTransform, A = h.supportPassiveEvents, T = h.supportResizeObserver, it = h.supportMutationObserver, z = h.restrictedMeasuring, Q = c(e.ownerDocument), U = c(Q[0].defaultView || Q[0].parentWindow), V = Q.find("html").first(), X = V.find("body").first(), Y = c(e), Mt = Y.is("textarea"), (St = Y.is("body")) && ((n = {}).l = Math.max(Y[on](), V[on](), U[on]()), n.t = Math.max(Y[an](), V[an](), U[an]())), Mt) {
                                Y.wrap($t + xn + Gt), Y.addClass(Hn).addClass(_n), J = Y.parent();
                                var a = {};
                                j.sizeAutoCapable || (a[qt] = Y.css(qt), a[_t] = Y.css(_t)), J.css(a).wrapInner($t + Fn + en + _n + Gt).wrapInner($t + Wn + en + _n + Gt).wrapInner($t + In + en + _n + Gt), ne = J.find(Zt + Fn).first(), ee = J.find(Zt + Wn).first(), Z = J.find(Zt + In).first(), re = c($t + kn + Gt), ne.prepend(re), Y.on(Xt, Rr).on("drop", Fr).on("focus", Nr).on("focusout", Dr), m > 9 || !y ? Y.on("input", Wr) : Y.on(hn, Lr).on(vn, Pr)
                            } else Y.addClass(wn), (J = Y).wrapInner($t + Fn + Gt).wrapInner($t + Wn + Gt).wrapInner($t + In + Gt), ne = J.find(Zt + Fn).first(), ee = J.find(Zt + Wn).first(), Z = J.find(Zt + In).first(), ne.on(pn, function(e) {
                                !0 !== ke && function(e) {
                                    if (!Ct) return !0;
                                    var t = [qt, Bt + qt, jt + qt, Wt + Rt, Wt + Nt, Rt, Nt, "font-weight", "word-spacing"],
                                        n = [Lt + Rt, Lt + Nt, Pt + Rt + qt, Pt + Nt + qt],
                                        r = [_t, Bt + _t, jt + _t, Wt + Ft, Wt + Dt, Ft, Dt, "line-height"],
                                        i = [Lt + Ft, Lt + Dt, Pt + Ft + qt, Pt + Dt + qt],
                                        o = "s" === ze.x || "v-s" === ze.x,
                                        a = !1,
                                        s = function(e, t) {
                                            for (var n = 0; n < e.length; n++)
                                                if (e[n] === t) return !0;
                                            return !1
                                        };
                                    return ("s" === ze.y || "v-s" === ze.y) && ((a = s(r, e)) || E || (a = s(i, e))), o && !a && ((a = s(t, e)) || E || (a = s(n, e))), a
                                }((e = e.originalEvent || e).propertyName) && ci(Vt)
                            });
                            if (oe = c($t + Un + en + nr + Gt), ae = c($t + Qn + Gt), se = c($t + Xn + Gt), le = c($t + Un + en + rr + Gt), ce = c($t + Qn + Gt), ue = c($t + Xn + Gt), oe.append(ae), ae.append(se), le.append(ce), ce.append(ue), Z.after(le), Z.after(oe), M && (oe.on(pn, function(e) {
                                    e.target === oe[0] && (Qr(!0), Vr(!0, ee[on]()))
                                }), le.on(pn, function(e) {
                                    e.target === le[0] && (Qr(!1), Vr(!1, ee[an]()))
                                })), Yr(!0), Yr(!1), ie = c($t + en + $n + Gt), J.append(ie), A ? pr(ee, Xt, Zr) : ee.on(Xt, Zr), g && (C.x && C.y ? ee.addClass(Pn) : ee.addClass(Ln)), it) {
                                var l, u = s.mO(),
                                    f = s.now();
                                tt = new u(function(e) {
                                    if (Ct && !N) {
                                        var t = !1;
                                        c.each(e, function() {
                                            var e = this.target,
                                                n = this.attributeName;
                                            if (t = n === o.c ? ii(this.oldValue, e.className) : n !== o.s || this.oldValue !== e.style.cssText) return !1
                                        }), t && bt.update(Vt)
                                    }
                                }), nt = new u(function(e) {
                                    if (Ct && !N) {
                                        for (var t = !1, n = 0; n < e.length; n++)
                                            if (oi(e[n])) {
                                                t = !0;
                                                break
                                            }
                                        if (t) {
                                            var r = s.now(),
                                                i = me || ye,
                                                o = function() {
                                                    f = r, Mt && kr(), i ? bt.update() : bt.update(Vt)
                                                };
                                            clearTimeout(l), cr <= 0 || r - f > cr || !i ? o() : l = setTimeout(o, cr)
                                        }
                                    }
                                })
                            }
                            St && (V.addClass(gn), ee[on](n.l), ee[an](n.t)), $ = c($t + "os-resize-observer-host" + Gt), J.prepend($), wr($, dr), dr(), bt.update(Vt), setTimeout(function() {
                                M && !Ot && J.addClass(On)
                            }, 333), Ct = !0;
                            var v = r.onInitialized;
                            return c.isFunction(v) && Mr(v), Ct
                        }(t, f)) return l.add(t, bt), bt;
                    bt = n
                }

                function dr() {
                    if (!N) {
                        var e = $[0],
                            t = {
                                w: e[o.sW],
                                h: e[o.sH]
                            };
                        if (Ct) {
                            var n = Cr(t, _e);
                            _e = t, n && ci(!0, !1)
                        } else _e = t
                    }
                }

                function pr(e, t, n) {
                    for (var r = t.split(en), i = 0; i < r.length; i++) e[0].addEventListener(r[i], n, {
                        passive: !0
                    })
                }

                function yr(e, t, n) {
                    for (var r = t.split(en), i = 0; i < r.length; i++) e[0].removeEventListener(r[i], n)
                }

                function mr(e) {
                    if (e !== n && T) {
                        var t = e.contents()[0];
                        t[yn].unobserve(t)
                    }
                }

                function gr(e) {
                    if (e !== n && T) {
                        var t = e.contents()[0];
                        t[yn].observe(t)
                    }
                }

                function wr(e, t) {
                    var n = 3333333,
                        r = function(r) {
                            e.scrollTop(n), e.scrollLeft(F ? p.n ? -n : p.i ? 0 : n : n), t()
                        };
                    if (T) {
                        var a = s.rO(),
                            l = e.append($t + Bn + " observed" + Gt).contents()[0];
                        (l[yn] = new a(r)).observe(l)
                    } else {
                        var u = "animationstart mozAnimationStart webkitAnimationStart MSAnimationStart";
                        if (m > 9 || !y) {
                            var f = "</div>",
                                v = "childNodes",
                                d = $t + Bn + '">';
                            d += $t + jn + '" dir="ltr">', d += $t + jn + '">', d += $t + qn + Gt, d += f, d += $t + jn + '">', d += $t + qn + '" style="width: 200%; height: 200%' + Gt, d += f, d += f, d += f, e.prepend(d);
                            var g, w, x, b, C = (e = e[0])[v][0][v][0],
                                O = c(C[v][1]),
                                M = c(C[v][0]),
                                S = c(M[0][v][0]),
                                A = C[o.oW],
                                z = C[o.oH],
                                E = h.nativeScrollbarSize,
                                H = function() {
                                    M[on](n)[an](n), O[on](n)[an](n)
                                },
                                k = function() {
                                    w = 0, g && (A = x, z = b, r())
                                },
                                I = function(e) {
                                    return x = C[o.oW], b = C[o.oH], g = x != A || b != z, e && g && !w ? (s.cAF()(w), w = s.rAF()(k)) : e || k(), H(), e && (s.prvD(e), s.stpP(e)), !1
                                },
                                W = {};
                            W[Ft] = -2 * (E.y + 1), W[Nt] = -2 * E.x, W[Dt] = -2 * E.y, W[Rt] = -2 * (E.x + 1), c(C).css(W), M.on(Xt, I), O.on(Xt, I), c(e).on(u, function() {
                                I(!1)
                            });
                            var L = {};
                            L[qt] = n, L[_t] = n, S.css(L), H()
                        } else {
                            var P = Q[0],
                                N = e;
                            e = e[0];
                            var D = P.attachEvent,
                                R = typeof navigator === i.u || (navigator.userAgent.match(/Trident/) || navigator.userAgent.match(/Edge/));
                            if (D) N.prepend($t + Bn + Gt), N.find(Zt + Bn).first()[0].attachEvent("onresize", r);
                            else {
                                var B = P.createElement(i.o);
                                B.setAttribute("tabindex", "-1"), B.setAttribute(o.c, Bn), B.onload = function() {
                                    var e = this.contentDocument.defaultView;
                                    e.addEventListener("resize", r), e.document.documentElement.style.display = "none"
                                }, B.type = "text/html", R && N.prepend(B), B.data = "about:blank", R || N.prepend(B), N.on(u, r)
                            }
                        }
                    }
                    if ((e = c(e))[0] === $[0]) {
                        var j = function() {
                            var t = J.css("direction");
                            if (t !== Me) {
                                var r = {},
                                    i = 0;
                                return "ltr" === t ? (r[Rt] = 0, r[Nt] = Vt, i = n) : (r[Rt] = Vt, r[Nt] = 0, i = p.n ? -n : p.i ? 0 : n), $.children().first().css(r), e.scrollLeft(i), e.scrollTop(n), Me = t, !0
                            }
                            return !1
                        };
                        j(), e.on(Xt, function(e) {
                            return j() && ci(), s.prvD(e), s.stpP(e), !1
                        })
                    }
                }

                function xr(e) {
                    if (T) {
                        var t = e.contents()[0];
                        t[yn].disconnect(), delete t[yn]
                    } else e.children(Zt + Bn).first().remove()
                }

                function br(e, t, r) {
                    return !0 === r ? r : t === n || e !== t
                }

                function Cr(e, t, r, i, o) {
                    if (!0 === o) return o;
                    if (i === n && o === n) {
                        if (!0 === r) return r;
                        r = n
                    }
                    return r = r === n ? "w" : r, i = i === n ? "h" : i, t === n || (e[r] !== t[r] || e[i] !== t[i])
                }

                function Or(e, t) {
                    return t === n || (e.t !== t.t || e.r !== t.r || e.b !== t.b || e.l !== t.l)
                }

                function Mr(e, t) {
                    Ct && e.call(bt, t)
                }

                function Sr(e, t, r) {
                    r === n && (r = [Qt, Qt, Qt, Qt]), e[t + Ft] = r[0], e[t + Nt] = r[1], e[t + Dt] = r[2], e[t + Rt] = r[3]
                }

                function Ar() {
                    it && !rt && (tt.observe(J[0], {
                        attributes: !0,
                        attributeOldValue: !0,
                        attributeFilter: [o.i, o.c, o.s]
                    }), nt.observe(Mt ? Y[0] : ne[0], {
                        attributes: !0,
                        attributeOldValue: !0,
                        subtree: !Mt,
                        childList: !Mt,
                        characterData: !Mt,
                        attributeFilter: Mt ? ["wrap", "cols", "rows"] : [o.i, o.c, o.s]
                    }), rt = !0)
                }

                function Tr() {
                    it && rt && (tt.disconnect(), nt.disconnect(), rt = !1)
                }

                function zr(e) {
                    if (!N) {
                        var t = (e.originalEvent || e).touches !== n;
                        (1 === s.mBtn(e) || t) && (rt && (yt = !0, Tr()), hr = s.page(e), vr.w = J[0][o.oW] - (E ? 0 : H), vr.h = J[0][o.oH] - (E ? 0 : k), Q.on(dn, Br).on(cn, Er).on(ln, Hr), X.addClass(ir), ie.setCapture && ie.setCapture(), s.prvD(e), s.stpP(e))
                    }
                }

                function Er(e) {
                    e.originalEvent;
                    var t = s.page(e),
                        n = {};
                    (wt || gt) && (n[qt] = vr.w + t.x - hr.x), (xt || gt) && (n[_t] = vr.h + t.y - hr.y), J.css(n), s.stpP(e)
                }

                function Hr(e) {
                    var t = e !== n;
                    Q.off(dn, Br).off(cn, Er).off(ln, Hr), X.removeClass(ir), ie.releaseCapture && ie.releaseCapture(), t && (yt && Ar(), bt.update(Vt)), yt = !1
                }

                function kr() {
                    if (!N) {
                        var e = !We,
                            t = Ht.w - (E || Se || !ye ? 0 : k + W),
                            n = Ht.h - (E || Se || !me ? 0 : k + W),
                            r = {},
                            i = ye || e,
                            a = Y[0];
                        r[Bt + qt] = Qt, r[Bt + _t] = Qt, r[qt] = Vt, Y.css(r);
                        var s = a[o.oW],
                            l = i ? Math.max(s, a[o.sW] - 1) : 1;
                        l += ye ? L + (E ? 0 : e ? 0 : H + I) : 0, r[qt] = ye ? l : Yt, r[_t] = Vt, Y.css(r);
                        var c = a[o.oH],
                            u = Math.max(c, a[o.sH] - 1);
                        return r[qt] = l, r[_t] = u, re.css(r), r[Bt + qt] = t + (!E && ye ? H + I : 0), r[Bt + _t] = n + (!E && me ? k + W : 0), Y.css(r), {
                            ow: s,
                            oh: c,
                            dw: l,
                            dh: u
                        }
                    }
                }

                function Ir(e) {
                    for (var t = 0; t < ur.length; t++)
                        if (e === ur[t]) return !0;
                    return !1
                }

                function Wr() {
                    kr(), bt.update(Vt)
                }

                function Lr(e) {
                    var t = e.keyCode;
                    if (!Ir(t)) {
                        if (0 === fr.length) {
                            var n = function() {
                                kr(), bt.update(Vt)
                            };
                            n(), ot = setInterval(n, 1e3 / 60)
                        } - 1 === c.inArray(t, fr) && fr.push(t)
                    }
                }

                function Pr(e) {
                    var t = e.keyCode;
                    if (!Ir(t)) {
                        var n = c.inArray(t, fr);
                        n > -1 && fr.splice(n, 1), 0 === fr.length && (kr(), bt.update(Vt), clearInterval(ot))
                    }
                }

                function Fr() {
                    setTimeout(function() {
                        kr(), bt.update(Vt)
                    }, 50)
                }

                function Nr() {
                    at = !0
                }

                function Dr() {
                    at = !1, clearInterval(ot), fr = [], kr(), bt.update(Vt)
                }

                function Rr(e) {
                    return Y[on](p.i && Je ? 9999999 : 0), Y[an](0), s.prvD(e), s.stpP(e), !1
                }

                function Br(e) {
                    return s.prvD(e), !1
                }

                function jr() {
                    ci()
                }

                function qr() {
                    return He && C.x && C.y
                }

                function _r(e, t, n) {
                    var r = e ? bn : Cn,
                        i = e ? oe : le;
                    t ? J.removeClass(r) : J.addClass(r), n ? i.removeClass(Jn) : i.addClass(Jn)
                }

                function Ur(e, t) {
                    if (clearTimeout(st), e) oe.removeClass(Kn), le.removeClass(Kn);
                    else {
                        var n = function() {
                            if (!pt) {
                                var e = se.hasClass("active") || ue.hasClass("active");
                                !e && (ft || ht || vt) && oe.addClass(Kn), !e && (ft || ht || vt) && le.addClass(Kn)
                            }
                        };
                        ct > 0 && !0 !== t ? st = setTimeout(n, ct) : n()
                    }
                }

                function Qr(e) {
                    var t = {},
                        n = Jr(e),
                        r = Math.min(1, (fe[n._wh] - (Se ? e ? H : k : 0)) / he[n._wh]);
                    t[n.wh] = Math.floor(100 * r * 1e5) / 1e5 + "%", qr() || n.h.css(t), n.i.hl = n.h[0]["offset" + n.WH], n.i.hlr = r
                }

                function Vr(e, t) {
                    var n = F && e,
                        r = {},
                        i = Jr(e),
                        o = ee[0][Xt + i.WH] - ee[0]["client" + i.WH];
                    p.n && n && (o *= -1);
                    var a = t / o;
                    a = isNaN(a) ? 0 : Math.min(1, a), i.i.ms = o, i.i.cs = t, i.i.csr = a;
                    var s = i.i.hl,
                        l = i.t[0]["offset" + i.WH],
                        c = (l - s) * a;
                    if (c = isNaN(c) ? 0 : c, n && (p.n || !p.n && !p.i) && (c = l - s - c), c = Math.max(0, c), S) {
                        var u;
                        n && (c = -(l - s - c));
                        var f = "translate(",
                            h = "transform";
                        u = e ? f + c + "px, 0px)" : f + "0px, " + c + "px)", r["-webkit-" + h] = u, r["-moz-" + h] = u, r["-ms-" + h] = u, r["-o-" + h] = u, r[h] = u
                    } else r[i.lt] = c;
                    qr() || i.h.css(r), i.i.ho = c, i.i.tl = l
                }

                function Xr(e, t) {
                    var n = t ? "removeClass" : "addClass",
                        r = e ? ce : ue,
                        i = e ? Vn : Yn;
                    (e ? ae : se)[n](i), r[n](i)
                }

                function Yr(e) {
                    var t, r, i, o = Jr(e),
                        a = o.xy,
                        l = Xt + o.LT,
                        c = "active",
                        u = 1,
                        f = function() {
                            u = .5
                        },
                        h = function() {
                            u = 1
                        },
                        v = function(n) {
                            n.originalEvent;
                            var i = o.i.tl,
                                c = o.i.hl,
                                u = o.i.ms * ((c / 2 + s.page(n)[a] - r - c / 2) / (i - c));
                            u = isFinite(u) ? u : 0, F && e && (p.n || !p.n && !p.i) && (u *= -1), ee[l](t + u), A || s.prvD(n)
                        },
                        d = function(e) {
                            e = e || e.originalEvent, X.removeClass(ir), o.h.removeClass(c), o.t.removeClass(c), o.s.removeClass(c), A ? (yr(Q, cn, v), yr(Q, ln, d), yr(Q, hn, y), yr(Q, vn, m)) : Q.off(cn, v).off(ln, d).off(hn, y).off(vn, m), Q.off(dn, Br), h(), t = n, r = n, i !== n && (bt.scrollStop(), clearTimeout(i), i = n);
                            var a = J[0].getBoundingClientRect();
                            e.clientX >= a.left && e.clientX <= a.right && e.clientY >= a.top && e.clientY <= a.bottom || $r(), (ft || ht) && Ur(!1)
                        },
                        y = function(e) {
                            16 == e.keyCode && f()
                        },
                        m = function(e) {
                            16 == e.keyCode && h()
                        };
                    o.h.on(sn, function(i) {
                        if (!N) {
                            var u = (i.originalEvent || i).touches !== n;
                            qr() || !Xe || u && !dt || (1 === s.mBtn(i) || u) && (t = (t = ee[l]()) === n ? 0 : t, (F && e && !p.n || !F) && (t = t < 0 ? 0 : t), r = s.page(i)[a], X.addClass(ir), o.h.addClass(c), o.s.addClass(c), A ? (pr(Q, cn, v), pr(Q, ln, d)) : Q.on(cn, v).on(ln, d), Q.on(dn, Br), s.prvD(i))
                        }
                    }), o.t.on(sn, function(t) {
                        if (!N) {
                            var l = (t.originalEvent || t).touches !== n;
                            if (!qr() && Ve && (!l || dt) && (1 === s.mBtn(t) || l)) {
                                var h, v = Ht[o._wh],
                                    g = o.t.offset()[o.lt],
                                    w = !0;
                                t.shiftKey && f();
                                var x = function() {
                                    var t = o.i.ho,
                                        a = o.i.hl,
                                        s = r - g,
                                        l = 200 * u,
                                        c = w ? Math.max(333, l) : l,
                                        f = {},
                                        d = F && e && (!p.i && !p.n || Je),
                                        y = t > s;
                                    d && (y = t < s), y ? (h === n && (h = !0), f[o.xy] = "-=" + v) : (h === n && (h = !1), f[o.xy] = "+=" + v), bt.scrollStop(), bt.scroll(f, l, "linear");
                                    var m = h ? t <= s : t + a >= s;
                                    d && (m = h ? t + a >= s : t <= s), m ? (clearTimeout(i), bt.scrollStop(), i = n) : i = setTimeout(x, c), w = !1
                                };
                                r = s.page(t)[a], X.addClass(ir), o.t.addClass(c), o.s.addClass(c), A ? (pr(Q, ln, d), pr(Q, hn, y), pr(Q, vn, m)) : Q.on(ln, d).on(hn, y).on(vn, m), Q.on(dn, Br), x(), s.prvD(t)
                            }
                        }
                    }).hover(function() {
                        (ft || ht) && (pt = !0, Ur(!0))
                    }, function() {
                        (ft || ht) && (pt = !1, Ur(!1))
                    }), o.s.on(sn, function(e) {
                        s.stpP(e)
                    })
                }

                function Jr(e) {
                    return {
                        wh: e ? qt : _t,
                        WH: e ? "Width" : "Height",
                        lt: e ? Rt : Ft,
                        LT: e ? "Left" : "Top",
                        xy: e ? Jt : Kt,
                        XY: e ? "X" : "Y",
                        _wh: e ? "w" : "h",
                        _lt: e ? "l" : "t",
                        t: e ? ae : ce,
                        h: e ? se : ue,
                        s: e ? oe : le,
                        i: e ? zt : Et
                    }
                }

                function Kr() {
                    vt && Ur(!0)
                }

                function $r() {
                    vt && !X.hasClass(ir) && Ur(!1)
                }

                function Gr() {
                    ht && (Ur(!0), clearTimeout(lt), lt = setTimeout(function() {
                        ht && Ur(!1)
                    }, 100))
                }

                function Zr(e) {
                    if (!N) {
                        var t = j.callbacks,
                            r = t.onScrollStart,
                            i = t.onScroll,
                            o = t.onScrollStop;
                        D !== n ? clearTimeout(D) : ((ft || ht) && Ur(!0), qr() || J.addClass(An), c.isFunction(r) && Mr(r, e)), Vr(!0, ee[on]()), Vr(!1, ee[an]()), c.isFunction(i) && Mr(i, e), D = setTimeout(function() {
                            ! function() {
                                clearTimeout(D), D = n, (ft || ht) && Ur(!1);
                                qr() || J.removeClass(An)
                            }(), c.isFunction(o) && Mr(o, e)
                        }, kt)
                    }
                }

                function ei(e) {
                    return typeof HTMLElement === i.o ? e instanceof HTMLElement : e && typeof e === i.o && null !== e && 1 === e.nodeType && typeof e.nodeName === i.s
                }

                function ti(e, t, r, o) {
                    var a, s, l, f, h, v = {
                            n: t,
                            s: !1,
                            v: n,
                            p: n
                        },
                        d = i.u,
                        p = u.has(e, t),
                        y = u.get(e, t),
                        m = !1,
                        g = !0 !== p,
                        w = !1;
                    for (c.type(r) !== i.a && (r = [r]), h = r.length, s = 0; s < h; s++) {
                        var x = r[s];
                        if ("*" === x)
                            if (h > 1) {
                                var b = 0;
                                for (f = 0; f < h; f++) {
                                    var C = r[f];
                                    if (c.type(C) === i.s && ++b > 1) break
                                }
                                1 === b && (w = !0)
                            } else w = !0;
                        x === n && (m = !0)
                    }
                    if (g && !1 === p && m && (g = !1), !g) {
                        a = y, d = c.type(a);
                        var O = function(e) {
                            var t = c.type(e);
                            return t === d && (t !== i.s || (!!w || a === e)) && (v.s = !0, v.v = a, v.p = a, !0)
                        };
                        for (s = 0; s < h; s++) {
                            var M = r[s];
                            if (c.type(M) === i.s) {
                                var S = M.split(":"),
                                    A = S[0],
                                    T = !1;
                                for (l = 0; l < S.length; l++)
                                    if (O(S[l])) {
                                        w || (v.p = A), T = !0;
                                        break
                                    }
                                if (T) break
                            } else if (O(M)) break
                        }
                    }
                    if (!v.s) {
                        var z = 'The option "' + t + "\" wasn't set, because";
                        if (g && !1 !== p) {
                            var E = u.has(R, t);
                            !0 === E ? console.warn(z + ' "' + p + '" is not from type [ OBJECT ].') : (z = 'The option "' + t + '" is not a default option', !1 === E ? console.warn(z + Zt) : console.warn(z + " and couldn't be resolved, because \"" + E + '" is not from type [ OBJECT ].'))
                        } else {
                            var H = [],
                                k = Qt,
                                I = !1,
                                W = Qt;
                            for (s = 0; s < h; s++) {
                                var L = r[s],
                                    P = c.type(L);
                                if (P === i.s) {
                                    I = !w;
                                    var F = L.split(":");
                                    for (l = 0; l < F.length; l++) W += '"' + F[l] + '", '
                                } - 1 === c.inArray(P, H) && (H.push(P), k = k + P.toUpperCase() + ", ")
                            }
                            k = k.slice(0, -2), I && (W = W.slice(0, -2)), console.warn(z + " it doesn't accept the type [ " + d.toUpperCase() + ' ] with the value of "' + a + '".\r\nAccepted types are: [ ' + k + " ]." + (I ? "\r\nValid strings are: [ " + W + " ]." : Qt))
                        }
                    }
                    return (o = o === n || o) && u.del(e, t), v
                }

                function ni() {
                    var e = {};
                    return St && te && (e.w = si(te.css(Bt + qt)), e.h = si(te.css(Bt + _t)), e.c = Cr(e, et), e.f = !0), et = e, e.c
                }

                function ri(e, t) {
                    var n, r, i = {};
                    for (n = 0; n < e.length; n++) {
                        var o = e[n],
                            a = [];
                        if (o.s) {
                            var s = o.n.split(".");
                            for (r = 0; r < s.length; r++) a[r] = {}, a[r][s[r]] = {};
                            for (r = 0; r < a.length; r++) {
                                var l = !1,
                                    u = a[r];
                                r + 1 === a.length && (l = !0);
                                for (var f in u) u.hasOwnProperty(f) && (u[f] = a[r + 1], l && (u[f] = t ? o.p : o.v))
                            }
                            c.extend(!0, i, a[0])
                        }
                    }
                    return i
                }

                function ii(e, t) {
                    var r = t !== n && null !== t ? t.split(en) : Qt,
                        i = e !== n && null !== e ? e.split(en) : Qt;
                    if (r === Qt && i === Qt) return !1;
                    var o = function(e, t) {
                            var n, r = [],
                                i = [];
                            for (n = 0; n < e.length; n++) r[e[n]] = !0;
                            for (n = 0; n < t.length; n++) r[t[n]] ? delete r[t[n]] : r[t[n]] = !0;
                            for (var o in r) i.push(o);
                            return i
                        }(i, r),
                        a = !1,
                        s = $e !== n && null !== $e ? $e.split(en) : [Qt],
                        l = Ke !== n && null !== Ke ? Ke.split(en) : [Qt],
                        u = c.inArray(or, o);
                    u > -1 && o.splice(u, 1);
                    for (var f = 0; f < o.length; f++) {
                        var h = o[f];
                        if (0 !== h.indexOf(wn)) {
                            var v, d = !0,
                                p = !0;
                            for (v = 0; v < s.length; v++)
                                if (h === s[v]) {
                                    d = !1;
                                    break
                                }
                            for (v = 0; v < l.length; v++)
                                if (h === l[v]) {
                                    p = !1;
                                    break
                                }
                            if (d && p) {
                                a = !0;
                                break
                            }
                        }
                    }
                    return a
                }

                function oi(e) {
                    var t = e.attributeName,
                        n = e.target,
                        r = e.type;
                    if (n === ne[0]) return null === t;
                    if ("attributes" === r && (t === o.c || t === o.s) && !Mt) {
                        if (typeof n.closest !== i.f) return !0;
                        if (null !== n.closest(Zt + Bn) || null !== n.closest(Zt + Un) || null !== n.closest(Zt + $n)) return !1
                    }
                    return !0
                }

                function ai(e) {
                    e = c.extend(!0, {}, B, e);
                    var t = ["v-h:visible-hidden", "v-s:visible-scroll", "s:scroll", "h:hidden"],
                        n = "callbacks.",
                        r = tn + "s.",
                        o = "textarea.",
                        a = "overflowBehavior.",
                        s = "nativeScrollbarsOverlaid.",
                        l = [!0, null],
                        f = [new Function, null],
                        h = [ti(e, s + "showNativeScrollbars", !0), ti(e, s + "initialize", !0), ti(e, a + Jt, t), ti(e, a + Kt, t), ti(e, r + "visibility", ["v:visible", "h:hidden", "a:auto"]), ti(e, r + "autoHide", ["n:never", "s:scroll", "l:leave", "m:move"]), ti(e, r + "autoHideDelay", 0), ti(e, r + "clickScrolling", !0), ti(e, r + "dragScrolling", !0), ti(e, r + "touchSupport", !0), ti(e, o + "dynWidth", !0), ti(e, o + "dynHeight", !0), ti(e, "className", ["*", null]), ti(e, "resize", ["n:none", "b:both", "h:horizontal", "v:vertical"]), ti(e, "sizeAutoCapable", !0), ti(e, "paddingAbsolute", !0), ti(e, "clipAlways", !0), ti(e, "normalizeRTL", !0), ti(e, "autoUpdate", l), ti(e, "autoUpdateInterval", 0), ti(e, n + "onInitialized", f), ti(e, n + "onInitializationWithdrawn", f), ti(e, n + "onDestroyed", f), ti(e, n + "onScrollStart", f), ti(e, n + "onScroll", f), ti(e, n + "onScrollStop", f), ti(e, n + "onDirectionChanged", f), ti(e, n + "onContentSizeChanged", f), ti(e, n + "onHostSizeChanged", f), ti(e, n + "onOverflowChanged", f), ti(e, n + "onOverflowAmountChanged", f), ti(e, n + "onUpdated", f)];
                    for (var v in e) e.hasOwnProperty(v) && u.has(R, v) && c.isEmptyObject(e[v]) && delete e[v];
                    if (!c.isEmptyObject(e)) {
                        var d = function(e) {
                            c.each(e, function(t, n) {
                                c.isPlainObject(n) ? d(n) : c.type(n) === i.f && (e[t] = c.type(n))
                            })
                        };
                        d(e), console.warn("The following options are discarded due to invalidity:\r\n" + JSON.stringify(e, null, 2))
                    }
                    B = c.extend(!0, {}, B, ri(h, !1)), j = c.extend(!0, {}, j, ri(h, !0))
                }

                function si(t) {
                    var n = e.parseInt(t);
                    return isNaN(n) ? 0 : n
                }

                function li() {
                    return Mt ? re[0] : ne[0]
                }

                function ci(e, t, r) {
                    var i = s.now(),
                        l = sr > 0 && Ct && i - q < sr && !me && !ye;
                    if (clearTimeout(_), l && (ar.h = e, ar.c = t, ar.f = r, _ = setTimeout(ci, sr)), !(l || N || Ct && !r && J.is(":hidden") || "inline" === J.css("display"))) {
                        q = i, e = e || ar.h, t = t || ar.c, r = r || ar.f, ar = {}, e = e !== n && e, t = t !== n && t, r = r !== n && r, !g || C.x && C.y ? x = c.extend(!0, {}, h.nativeScrollbarSize) : (x.x = 0, x.y = 0), b = {
                            x: 3 * (x.x + (C.x ? 0 : 3)),
                            y: 3 * (x.y + (C.y ? 0 : 3))
                        }, mr($), mr(K);
                        var u = {
                                l: ee[on](),
                                t: ee[an]()
                            },
                            f = j.callbacks,
                            d = j.scrollbars,
                            m = j.textarea,
                            M = f.onUpdated,
                            S = f.onOverflowChanged,
                            T = f.onOverflowAmountChanged,
                            D = f.onDirectionChanged,
                            R = f.onContentSizeChanged,
                            B = f.onHostSizeChanged,
                            U = d.visibility,
                            Q = br(U, Ue, r),
                            V = d.autoHide,
                            X = br(V, Qe, r),
                            oe = d.clickScrolling,
                            ae = br(oe, Ve, r),
                            se = d.dragScrolling,
                            le = br(se, Xe, r),
                            ce = j.className,
                            ue = br(ce, Ke, r),
                            Me = j.resize,
                            Pe = br(Me, Ye, r) && !St,
                            Fe = !!Mt && "off" !== Y.attr("wrap"),
                            Ne = br(Fe, We, r),
                            De = j.paddingAbsolute,
                            Re = br(De, Se, r),
                            Be = j.clipAlways,
                            je = br(Be, Ae, r),
                            qe = j.sizeAutoCapable && !St,
                            _e = br(qe, Ie, r),
                            tt = j.nativeScrollbarsOverlaid.showNativeScrollbars,
                            nt = br(tt, He),
                            it = j.autoUpdate,
                            ot = br(it, ke),
                            st = j.overflowBehavior,
                            lt = Cr(st, ze, Jt, Kt, r),
                            pt = m.dynWidth,
                            yt = br(Ze, Ot),
                            Ot = m.dynHeight,
                            zt = br(Ge, Ot);
                        if (ut = "n" === V, ft = "s" === V, ht = "m" === V, vt = "l" === V, ct = d.autoHideDelay, dt = d.touchSupport, $e = Ke, mt = "n" === Me, gt = "b" === Me, wt = "h" === Me, xt = "v" === Me, Je = j.normalizeRTL, tt = tt && C.x && C.y, Ue = U, Qe = V, Ve = oe, Xe = se, Ke = ce, Ye = Me, We = Fe, Se = De, Ae = Be, Ie = qe, He = tt, ke = it, ze = c.extend(!0, {}, st), Ze = pt, Ge = Ot, ue && (J.removeClass($e).removeClass(or), ce !== n && null !== ce && ce.length > 0 ? J.addClass(ce) : J.addClass(or)), ot && (!0 === it ? (Tr(), v.add(bt)) : null === it && y ? (Tr(), v.add(bt)) : (v.remove(bt), Ar())), _e)
                            if (qe)
                                if (G === n && (G = c($t + Dn + Gt), Z.before(G)), At) K.show();
                                else {
                                    K = c($t + Rn + Gt), G.before(K);
                                    var Et = {
                                        w: -1,
                                        h: -1
                                    };
                                    wr(K, function() {
                                        var e = {
                                            w: K[0][o.oW],
                                            h: K[0][o.oH]
                                        };
                                        Cr(e, Et) && (Ct && me && e.h > 0 || ye && e.w > 0 ? ci() : (Ct && !me && 0 === e.h || !ye && 0 === e.w) && ci()), Et = e
                                    }), At = !0, null !== w && K.css(_t, w + "(100% + 1px)")
                                } else At && K.hide();
                        r && ($.find("*").trigger(Xt), At && K.find("*").trigger(Xt));
                        var kt, It = J.css("direction"),
                            Zt = br(It, Oe, r),
                            en = J.css("box-sizing"),
                            tn = br(en, we, r),
                            nn = {
                                c: r,
                                t: si(J.css(Lt + Ft)),
                                r: si(J.css(Lt + Nt)),
                                b: si(J.css(Lt + Dt)),
                                l: si(J.css(Lt + Rt))
                            };
                        try {
                            kt = At ? K[0].getBoundingClientRect() : null
                        } catch (e) {
                            return
                        }
                        E = "border-box" === en;
                        var rn = (F = "rtl" === It) ? Rt : Nt,
                            ln = F ? Nt : Rt,
                            hn = J[0],
                            vn = Z[0],
                            dn = !1,
                            pn = !(!At || "none" === J.css(Ut)) && (0 === Math.round(kt.right - kt.left) && (!!De || hn[o.cW] - H > 0));
                        if (qe && !pn) {
                            var yn = hn[o.oW],
                                mn = G.css(qt);
                            G.css(qt, Vt);
                            var gn = hn[o.oW];
                            G.css(qt, mn), (dn = yn !== gn) || (G.css(qt, yn + 1), gn = hn[o.oW], G.css(qt, mn), dn = yn !== gn)
                        }
                        var wn = (pn || dn) && qe,
                            xn = br(wn, ye, r),
                            bn = !wn && ye,
                            Cn = !!At && 0 === Math.round(kt.bottom - kt.top),
                            On = br(Cn, me, r),
                            Hn = !Cn && me,
                            kn = "-" + qt,
                            In = wn && E || !E,
                            Wn = Cn && E || !E,
                            Ln = {
                                c: r,
                                t: Wn ? si(J.css(Pt + Ft + kn)) : 0,
                                r: In ? si(J.css(Pt + Nt + kn)) : 0,
                                b: Wn ? si(J.css(Pt + Dt + kn)) : 0,
                                l: In ? si(J.css(Pt + Rt + kn)) : 0
                            },
                            Pn = {
                                c: r,
                                t: si(J.css(Wt + Ft)),
                                r: si(J.css(Wt + Nt)),
                                b: si(J.css(Wt + Dt)),
                                l: si(J.css(Wt + Rt))
                            },
                            Fn = {
                                h: String(J.css(jt + _t)),
                                w: String(J.css(jt + qt))
                            },
                            Bn = {},
                            jn = {};
                        if (H = nn.l + nn.r, k = nn.t + nn.b, nn.c = Or(nn, xe), I = Ln.l + Ln.r, W = Ln.t + Ln.b, Ln.c = Or(Ln, be), L = Pn.l + Pn.r, P = Pn.t + Pn.b, Pn.c = Or(Pn, Ce), Fn.ih = si(Fn.h), Fn.iw = si(Fn.w), Fn.ch = Fn.h.indexOf("px") > -1, Fn.cw = Fn.w.indexOf("px") > -1, Fn.c = Cr(Fn, ge, r), Oe = It, we = en, ye = wn, me = Cn, xe = nn, be = Ln, Ce = Pn, ge = Fn, Zt && At && K.css(Ut, ln), nn.c || Zt || Re || xn || On || tn || _e) {
                            var qn = {},
                                _n = {};
                            Sr(jn, Wt, [-nn.t, -nn.r, -nn.b, -nn.l]), De ? (Sr(qn, Qt, [nn.t, nn.r, nn.b, nn.l]), Sr(Mt ? _n : Bn, Lt)) : (Sr(qn, Qt), Sr(Mt ? _n : Bn, Lt, [nn.t, nn.r, nn.b, nn.l])), Z.css(qn), Y.css(_n)
                        }
                        Ht = {
                            w: vn[o.oW],
                            h: vn[o.oH]
                        };
                        var Un, Qn = !!Mt && kr();
                        if (Cn && (On || Re || tn || Fn.c || nn.c || Ln.c) ? (Fn.cw && (Bn[jt + _t] = Fn.ch ? Fn.ih - (De ? k : 0) + (E ? -W : k) : Qt), Bn[_t] = Vt) : (On || Re) && (Bn[jt + _t] = Qt, Bn[_t] = Yt), wn && (xn || Re || tn || Fn.c || nn.c || Ln.c || Zt) ? (Fn.cw && (Bn[jt + qt] = Fn.cw ? Fn.iw - (De ? H : 0) + (E ? -I : H) + (C.y ? O.y : 0) : Qt), Bn[qt] = Vt, jn[jt + qt] = Yt) : (xn || Re) && (Bn[jt + qt] = Qt, Bn[qt] = Yt, Bn[Ut] = Qt, jn[jt + qt] = Qt), wn && (Fn.cw || (Bn[jt + qt] = Qt), jn[qt] = Mt && pt ? Qn.dw : Vt, Bn[qt] = Vt, Bn[Ut] = ln), Cn && (Fn.ch || (Bn[jt + _t] = Qt), jn[_t] = Mt ? Ot ? Qn.dh : Vt : ne[0][o.cH]), qe && G.css(jn), ne.css(Bn), Bn = {}, jn = {}, de = de || {
                                x: !1,
                                y: !1
                            }, e || t || Zt || tn || Re || xn || wn || On || Cn || Fn.c || nt || lt || je || Pe || Q || yt || zt || Ne || Re || yt || zt || r) {
                            var Vn = "overflow",
                                Xn = Vn + "-x",
                                Yn = Vn + "-y",
                                Jn = "hidden",
                                Kn = "visible",
                                $n = z && (C.x || C.y || Ht.w < b.y || Ht.h < b.x) || Cn,
                                nr = {},
                                rr = de.y && pe.ys && !tt ? C.y ? ee.css(rn) : -x.y : 0,
                                ir = de.x && pe.xs && !tt ? C.x ? ee.css(Dt) : -x.x : 0;
                            Sr(nr, Qt), ee.css(nr), $n && ne.css(Vn, Jn);
                            var lr = li(),
                                cr = z && !$n ? ee[0] : lr,
                                ur = {
                                    w: lr[o.cW],
                                    h: lr[o.cH]
                                },
                                fr = {
                                    w: Math.max(lr[o.sW], cr[o.sW]),
                                    h: Math.max(lr[o.sH], cr[o.sH])
                                },
                                hr = Mt && Qn && !pt ? Qn.ow : wn ? ur.w : fr.w,
                                vr = Mt && Qn && !Ot ? Qn.oh : Cn ? ur.h : fr.h;
                            nr[Dt] = Hn ? Qt : ir, nr[rn] = bn ? Qt : rr, ee.css(nr);
                            var dr = {
                                    w: hn[o.cW],
                                    h: hn[o.cH]
                                },
                                xr = {
                                    w: Math.max(hr + (De ? H : 0), dr.w - H) - (pt && Mt && wn ? L + (E ? 0 : H + I) : 0),
                                    h: Math.max(vr + (De ? k : 0), dr.h - k)
                                };
                            if (xr.c = Cr(xr, Te, r), Te = xr, qe) {
                                (xr.c || Cn || wn) && (jn[qt] = xr.w, jn[_t] = xr.h);
                                var Er = jn[qt] + (E ? I : -H),
                                    Hr = jn[_t] + (E ? W : -H),
                                    Ir = {};
                                (!wn || !wn && Ln.c) && (jn[qt] = dr.w - (E ? 0 : H + I) - 1 - L), (!Cn || !Cn && Ln.c) && (jn[_t] = dr.h - (E ? 0 : k + W) - 1 - P), Fn.cw && Fn.iw === Er && (jn[qt] = Er + (E ? 0 : H) + 1), Fn.ch && Fn.ih === Hr && (jn[_t] = Hr + (E ? 0 : k) + 1), wn && (ur.w < Ht.w || Mt && !Fe) && 0 === H && (Mt && (Ir[qt] = si(re.css(qt)) - 1), jn[qt] -= 1), Cn && (ur.h < Ht.h || Mt) && 0 === k && (Mt && (Ir[_t] = si(re.css(_t)) - 1), jn[_t] -= 1), vr > 0 && (jn[qt] = Math.max(1, jn[qt]), jn[_t] = Math.max(1, jn[_t])), Mt && re.css(Ir), G.css(jn)
                            }
                            wn && (Bn[qt] = Yt), !wn || E || rt || (Bn[Ut] = "none"), ne.css(Bn), Bn = {};
                            var Wr = lr.getBoundingClientRect(),
                                Lr = {
                                    w: Math.max(lr[o.sW], cr[o.sW]),
                                    h: Math.max(lr[o.sH], cr[o.sH])
                                };
                            if ($n && ne.css(Vn, Qt), Wr.width !== n) {
                                var Pr = Wr.width,
                                    Fr = Wr.height;
                                Lr.w += si(Pr + .001) - Pr, Lr.h += si(Fr + .001) - Fr
                            }
                            Lr.c = t = Cr(Lr, he, r), he = Lr, e = Cr(dr = {
                                w: hn[o.cW],
                                h: hn[o.cH]
                            }, fe), fe = dr, Ht = {
                                w: vn[o.oW],
                                h: vn[o.oH]
                            };
                            var Nr = {
                                    x: "v-s" === st.x,
                                    y: "v-s" === st.y
                                },
                                Dr = "v-h" === st.x,
                                Rr = "v-h" === st.y,
                                Br = {
                                    x: "s" === st.x,
                                    y: "s" === st.y
                                },
                                jr = {
                                    x: Math.max(0, Math.round(100 * (Lr.w - dr.w + (De ? H : 0))) / 100),
                                    y: Math.max(0, Math.round(100 * (Lr.h - dr.h + (De ? k : 0))) / 100)
                                },
                                qr = Mt && (0 === Ht.w || 0 === Ht.h);
                            qr && (jr.x = 0, jr.y = 0);
                            var Yr = {
                                    x: jr.x > 0,
                                    y: jr.y > 0
                                },
                                Jr = {
                                    x: Yr.x,
                                    y: Yr.y
                                };
                            (Nr.x || Dr) && (Jr.x = Yr.y && !Nr.y && !Rr), (Nr.y || Rr) && (Jr.y = Yr.x && !Nr.x && !Dr), Jr.xs = !!Jr.x && (Br.x || Nr.x), Jr.ys = !!Jr.y && (Br.y || Nr.y);
                            var Zr = {
                                    x: Yr.x && Jr.xs,
                                    y: Yr.y && Jr.ys
                                },
                                ei = Ee;
                            if (jr.c = Cr(jr, Ee, Jt, Kt, r), Ee = jr, Yr.c = Cr(Yr, de, Jt, Kt, r), de = Yr, Jr.c = Cr(Jr, pe, Jt, Kt, r), pe = Jr, C.x || C.y) {
                                var ti = r,
                                    ri = {};
                                if ((Yr.x || Yr.y) && (ri.w = C.y && Yr.y ? Lr.w + O.y : Qt, ri.h = C.x && Yr.x ? Lr.h + O.x : Qt, ti = br(ri, ve, r), ve = ri), Yr.c || Jr.c || Lr.c || Zt || xn || On || wn || Cn || nt) {
                                    var ii = "px solid transparent";
                                    Bn[Pt + ln] = Qt, Bn[Wt + ln] = Qt, C.x && Yr.x && Jr.xs ? (Cn && (Bn[Wt + Dt] = tt ? Qt : O.x), Bn[Pt + Dt] = Cn || tt ? Qt : O.x + ii) : (ri.h = Qt, ti = !0, Bn[Pt + Dt] = Qt, Bn[Wt + Dt] = Qt), C.y && Yr.y && Jr.ys ? (wn && (Bn[Wt + rn] = tt ? Qt : O.y), Bn[Pt + rn] = tt ? Qt : O.y + ii) : (ri.w = Qt, ti = !0, Bn[Pt + rn] = Qt, Bn[Wt + rn] = Qt)
                                }
                                if (tt && (ri.w = Qt, ri.h = Qt, ti = !0), ti) {
                                    var oi = {};
                                    oi[qt] = Jr.y ? ri.w : Qt, oi[_t] = Jr.x ? ri.h : Qt, te === n && (te = c($t + Nn + Gt), ee.prepend(te)), te.css(oi)
                                }
                                ne.css(Bn)
                            }
                            var ai = {};
                            qn = {};
                            if (e || Yr.c || Jr.c || Lr.c || lt || tn || nt || Zt || je || On) {
                                ai[ln] = Qt;
                                var ui = function() {
                                        ai[Dt] = Qt, Tt.h = 0
                                    },
                                    fi = function() {
                                        ai[rn] = Qt, Tt.w = 0
                                    };
                                if (Yr.x && Jr.xs ? (ai[Xn] = Xt, tt ? ui() : (ai[Dt] = -(C.x ? O.x : x.x), Tt.h = C.x ? O.y : 0)) : (ai[Xn] = Qt, ui()), Yr.y && Jr.ys ? (ai[Yn] = Xt, tt ? fi() : (ai[rn] = -(C.y ? O.y : x.y), Tt.w = C.y ? O.x : 0)) : (ai[Yn] = Qt, fi()), (Ht.h < b.x || Ht.w < b.y) && (Yr.x && Jr.x && !C.x || Yr.y && Jr.y && !C.y) ? (ai[Lt + Ft] = b.x, ai[Wt + Ft] = -b.x, ai[Lt + ln] = b.y, ai[Wt + ln] = -b.y) : (ai[Lt + Ft] = Qt, ai[Wt + Ft] = Qt, ai[Lt + ln] = Qt, ai[Wt + ln] = Qt), ai[Lt + rn] = Qt, ai[Wt + rn] = Qt, Yr.x && Jr.x || Yr.y && Jr.y || qr ? Mt && qr && (qn[Xn] = Jn, qn[Yn] = Jn) : (!Be || Dr || Nr.x || Rr || Nr.y) && (Mt && (qn[Xn] = Qt, qn[Yn] = Qt), ai[Xn] = Kn, ai[Yn] = Kn), Z.css(qn), ee.css(ai), ai = {}, (Yr.c || tn || xn || On) && (!C.x || !C.y)) {
                                    var hi = ne[0],
                                        vi = hi.style;
                                    vi.webkitTransform = "scale(1)", vi.display = "run-in";
                                    hi[o.oH];
                                    vi.display = Qt, vi.webkitTransform = Qt
                                }
                                if (nt && tt) {
                                    J.hide();
                                    hn[o.oH];
                                    J.show()
                                }
                            }
                            if (Bn = {}, Zt || xn || On)
                                if (F && wn) {
                                    var di = ne.css(Ut),
                                        pi = Math.round(ne.css(Ut, Qt).css(Rt, Qt).position().left);
                                    ne.css(Ut, di), pi !== Math.round(ne.position().left) && (Bn[Rt] = pi)
                                } else Bn[Rt] = Qt;
                            ne.css(Bn);
                            var yi = "v" === U,
                                mi = "h" === U,
                                gi = "a" === U,
                                wi = a.bind(_r, 0, !0, !0, Zr.x),
                                xi = a.bind(_r, 0, !1, !0, Zr.y),
                                bi = a.bind(_r, 0, !0, !1, Zr.x),
                                Ci = a.bind(_r, 0, !1, !1, Zr.y);
                            if (Zt && (F ? J.addClass(Mn) : J.removeClass(Mn)), St && J.addClass(Sn), Pe) {
                                var Oi = function() {
                                    ie.off(sn, zr)
                                };
                                mt ? (J.addClass(Sn), ie.removeClass(Gn).removeClass(Zn).removeClass(er).removeClass(tr), Oi()) : (J.removeClass(Sn), ie.addClass(Gn), gt ? ie.addClass(Zn) : wt ? ie.addClass(er) : xt && ie.addClass(tr), Oi(), ie.on(sn, zr))
                            }
                            if ((Q || lt || Jr.c || Yr.c || nt) && (tt ? nt && (J.removeClass(An), tt && (bi(), Ci())) : gi ? (Zr.x ? wi() : bi(), Zr.y ? xi() : Ci()) : yi ? (wi(), xi()) : mi && (bi(), Ci())), X || nt) {
                                var Mi = function() {
                                    A ? (yr(J, cn, Gr), yr(J, un, Kr), yr(J, fn, $r)) : J.off(cn, Gr).off(un, Kr).off(fn, $r)
                                };
                                vt || ht ? (Mi(), Un = ht, A ? Un ? pr(J, cn, Gr) : (pr(J, un, Kr), pr(J, fn, $r)) : Un ? J.on(cn, Gr) : J.on(un, Kr).on(fn, $r)) : Mi(), ut ? Ur(!0) : Ur(!1, !0)
                            }
                            if ((e || jr.c || On || xn || Pe || tn || Re || nt || Zt) && (Qr(!0), Vr(!0, u.l), Qr(!1), Vr(!1, u.t)), ae && Xr(!0, oe), le && Xr(!1, se), Jr.x || Jr.y ? J.addClass(Tn) : J.removeClass(Tn), Jr.x ? J.addClass(zn) : J.removeClass(zn), Jr.y ? J.addClass(En) : J.removeClass(En), Mt && t) {
                                var Si = function() {
                                    var e = Y.prop("selectionStart");
                                    if (e !== n) {
                                        for (var t = Y.val(), r = t.length, i = t.split("\n"), o = i.length, a = t.substr(0, e).split("\n"), s = 0, l = 0, c = a.length, u = a[a.length - 1].length, f = 0; f < i.length; f++) {
                                            var h = i[f].length;
                                            h > l && (s = f + 1, l = h)
                                        }
                                        return {
                                            cursorRow: c,
                                            cursorCol: u,
                                            rows: o,
                                            cols: l,
                                            wRow: s,
                                            pos: e,
                                            max: r
                                        }
                                    }
                                }();
                                if (Si !== n) {
                                    var Ai = Le === n || Si.rows !== Le.rows,
                                        Ti = Si.wRow,
                                        zi = Si.cursorRow,
                                        Ei = Si.cursorCol,
                                        Hi = Si.rows,
                                        ki = Si.cols,
                                        Ii = Si.pos,
                                        Wi = Si.max === Ii && at,
                                        Li = {
                                            x: Fe || Ei !== ki || zi !== Ti ? -1 : Ee.x,
                                            y: (Fe ? Wi || Ai && ei !== n && u.t === ei.y : (Wi || Ai) && zi === Hi) ? Ee.y : -1
                                        },
                                        Pi = Li.x > -1,
                                        Fi = Li.y > -1;
                                    (Pi || Fi) && (Fi && ee[an](Li.y), Pi && (F && Je && p.i ? ee[on](0) : ee[on](Li.x)))
                                }
                                Le = Si
                            } else Mt || (F && p.i && C.y && Yr.x && Je && (u.l += Tt.w), ee[on](u.l), ee[an](u.t));
                            Zt && c.isFunction(D) && Mr(D, {
                                isRTL: F,
                                dir: It
                            }), e && c.isFunction(B) && Mr(B, {
                                width: fe.w,
                                height: fe.h
                            }), t && c.isFunction(R) && Mr(R, {
                                width: he.w,
                                height: he.h
                            }), (Yr.c || Jr.c) && c.isFunction(S) && Mr(S, {
                                x: Yr.x,
                                y: Yr.y,
                                xScrollable: Jr.xs,
                                yScrollable: Jr.ys,
                                clipped: Jr.x || Jr.y
                            }), jr.c && c.isFunction(T) && Mr(T, {
                                x: jr.x,
                                y: jr.y
                            })
                        }
                        St && (Yr.c || et.c) && (et.f || ni(), C.y && Yr.x && ne.css(Bt + qt, et.w + O.y), C.x && Yr.y && ne.css(Bt + _t, et.h + O.x), et.c = !1), gr($), gr(K), c.isFunction(M) && Mr(M, {
                            forced: r
                        })
                    }
                }
            }
            e[r] = function(e, t) {
                if (0 === arguments.length) return this;
                d();
                var r, i = [];
                return c.isPlainObject(t) ? e && e.length ? e.length > 1 ? (c.each(e, function() {
                    (r = this) !== n && i.push(p(r, t, f, h))
                }), i) : p(e[0], t, f, h) : p(e, t, f, h) : e ? e.length && e.length > 0 ? e.length > 1 ? (c.each(e, function() {
                    r = l.get(this), "!" === t ? r !== n && i.push(r) : i.push(r)
                }), i) : l.get(e[0]) : l.get(e) : void 0
            }, e[r].globals = function() {
                d();
                var e = c.extend(!0, {}, f);
                return delete e.msie, e
            }, e[r].defaultOptions = function(e) {
                d();
                var t = f.defaultOptions;
                if (e === n) return c.extend(!0, {}, t);
                f.defaultOptions = c.extend(!0, {}, t, e)
            }
        }(a, l, s, c), e.jQuery);
    return u && u.fn && (u.fn.overlayScrollbars = function(t) {
        return u.isPlainObject(t) ? (u.each(this, function() {
            e[r](this, t)
        }), this) : e[r](this, t)
    }), e[r]
});



$('.share_hotest_content').overlayScrollbars({	sizeAutoCapable : true});

/*==================================================================
[ BILLS_getImageFile ]*/
function doFirst() {
    document.getElementById('BILLS_getImageFile').onchange = fileChange; //有選取東西就執行fileChange方法
}
function fileChange() {
    var file = document.getElementById('BILLS_getImageFile').files[0];
    var readFile = new FileReader();
    readFile.readAsDataURL(file);
    readFile.addEventListener('load', function () {
        var image = document.getElementById('BILLS_image');
        image.src = this.result;
        image.style.maxWidth = '500px'; //最寬寬度不超過500px
        image.style.maxHeight = '400px'; //最高高度不超過500px
    });
}
window.addEventListener('load', doFirst);
/*==================================================================
[ register提示 ]*/