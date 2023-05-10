; bind shift + vertical scroll to horizontal scroll events
; https://coderwall.com/p/xnez3g/horizontal-scroll-with-mouse-under-linux
; NOTE: Firefox has to be configured separately, read comment in that link
; NOTE: Need packages: xbindkeys xautomation
(xbindkey '(shift "b:4") "xte 'mouseclick 6'")
(xbindkey '(shift "b:5") "xte 'mouseclick 7'")
