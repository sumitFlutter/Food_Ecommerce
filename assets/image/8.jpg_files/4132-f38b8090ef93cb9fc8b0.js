"use strict";(self.webpackChunk_unisporkal_global_nav=self.webpackChunk_unisporkal_global_nav||[]).push([[4132],{844:function(e,n,t){t.d(n,{z:function(){return T}});var r=t(7462),o=t(3366),l=t(2851),u=(t(5697),t(4780)),i=t(8562);function s(e){return(0,i.Z)("MuiButton",e)}(0,t(1588).Z)("MuiButton",["root","active","disabled","focusVisible"]);let a,c=!0,d=!1;const f={text:!0,search:!0,url:!0,tel:!0,email:!0,password:!0,number:!0,date:!0,month:!0,week:!0,time:!0,datetime:!0,"datetime-local":!0};function v(e){e.metaKey||e.altKey||e.ctrlKey||(c=!0)}function p(){c=!1}function b(){"hidden"===this.visibilityState&&d&&(c=!0)}function y(e){const{target:n}=e;try{return n.matches(":focus-visible")}catch(e){}return c||function(e){const{type:n,tagName:t}=e;return!("INPUT"!==t||!f[n]||e.readOnly)||"TEXTAREA"===t&&!e.readOnly||!!e.isContentEditable}(n)}function h(){const e=l.useCallback((e=>{var n;null!=e&&((n=e.ownerDocument).addEventListener("keydown",v,!0),n.addEventListener("mousedown",p,!0),n.addEventListener("pointerdown",p,!0),n.addEventListener("touchstart",p,!0),n.addEventListener("visibilitychange",b,!0))}),[]),n=l.useRef(!1);return{isFocusVisibleRef:n,onFocus:function(e){return!!y(e)&&(n.current=!0,!0)},onBlur:function(){return!!n.current&&(d=!0,window.clearTimeout(a),a=window.setTimeout((()=>{d=!1}),100),n.current=!1,!0)},ref:e}}var m=t(3703),g=t(437);var Z=t(148),k=t(1873),w=t(5893);const R=["action","children","disabled","focusableWhenDisabled","onFocusVisible","slotProps","slots"],T=l.forwardRef((function(e,n){var t;const{action:i,children:a,focusableWhenDisabled:c=!1,slotProps:d={},slots:f={}}=e,v=(0,o.Z)(e,R),p=l.useRef(),{active:b,focusVisible:y,setFocusVisible:T,getRootProps:P}=function(e={}){const{disabled:n=!1,focusableWhenDisabled:t,href:o,rootRef:u,tabIndex:i,to:s,type:a}=e,c=l.useRef(),[d,f]=l.useState(!1),{isFocusVisibleRef:v,onFocus:p,onBlur:b,ref:y}=h(),[Z,k]=l.useState(!1);n&&!t&&Z&&k(!1),l.useEffect((()=>{v.current=Z}),[Z,v]);const[w,R]=l.useState(""),T=e=>n=>{var t;Z&&n.preventDefault(),null==(t=e.onMouseLeave)||t.call(e,n)},P=e=>n=>{var t,r;c.current||(c.current=n.currentTarget),p(n),!0===v.current&&(k(!0),null==(r=e.onFocusVisible)||r.call(e,n)),null==(t=e.onFocus)||t.call(e,n)},S=()=>{const e=c.current;return"BUTTON"===w||"INPUT"===w&&["button","submit","reset"].includes(null==e?void 0:e.type)||"A"===w&&(null==e?void 0:e.href)},E=e=>t=>{var r;n||null==(r=e.onClick)||r.call(e,t)},N=e=>t=>{var r;n||(f(!0),document.addEventListener("mouseup",(()=>{f(!1)}),{once:!0})),null==(r=e.onMouseDown)||r.call(e,t)},x=e=>t=>{var r,o;null==(r=e.onKeyDown)||r.call(e,t),t.defaultMuiPrevented||(t.target!==t.currentTarget||S()||" "!==t.key||t.preventDefault(),t.target!==t.currentTarget||" "!==t.key||n||f(!0),t.target!==t.currentTarget||S()||"Enter"!==t.key||n||(null==(o=e.onClick)||o.call(e,t),t.preventDefault()))},M=e=>t=>{var r,o;t.target===t.currentTarget&&f(!1),null==(r=e.onKeyUp)||r.call(e,t),t.target!==t.currentTarget||S()||n||" "!==t.key||t.defaultMuiPrevented||null==(o=e.onClick)||o.call(e,t)},C=l.useCallback((e=>{var n;R(null!=(n=null==e?void 0:e.tagName)?n:"")}),[]),D=(0,m.Z)(C,u,y,c),L={};return void 0!==i&&(L.tabIndex=i),"BUTTON"===w?(L.type=null!=a?a:"button",t?L["aria-disabled"]=n:L.disabled=n):""!==w&&(o||s||(L.role="button",L.tabIndex=null!=i?i:0),n&&(L["aria-disabled"]=n,L.tabIndex=t?null!=i?i:0:-1)),{getRootProps:(n={})=>{const t=(0,r.Z)({},(0,g._)(e),(0,g._)(n)),o=(0,r.Z)({type:a},t,L,n,{onBlur:(l=t,e=>{var n;b(e),!1===v.current&&k(!1),null==(n=l.onBlur)||n.call(l,e)}),onClick:E(t),onFocus:P(t),onKeyDown:x(t),onKeyUp:M(t),onMouseDown:N(t),onMouseLeave:T(t),ref:D});var l;return delete o.onFocusVisible,o},focusVisible:Z,setFocusVisible:k,active:d,rootRef:D}}((0,r.Z)({},e,{focusableWhenDisabled:c}));l.useImperativeHandle(i,(()=>({focusVisible:()=>{T(!0),p.current.focus()}})),[T]);const S=(0,r.Z)({},e,{active:b,focusableWhenDisabled:c,focusVisible:y}),E=(e=>{const{active:n,disabled:t,focusVisible:r}=e,o={root:["root",t&&"disabled",r&&"focusVisible",n&&"active"]};return(0,u.Z)(o,(0,k.T)(s))})(S),N=v.href||v.to?"a":"button",x=null!=(t=f.root)?t:N,M=(0,Z.y)({elementType:x,getSlotProps:P,externalForwardedProps:v,externalSlotProps:d.root,additionalProps:{ref:n},ownerState:S,className:E.root});return(0,w.jsx)(x,(0,r.Z)({},M,{children:a}))}))},1873:function(e,n,t){t.d(n,{T:function(){return u}});var r=t(2851);t(5893);const o={disableDefaultClasses:!1},l=r.createContext(o);function u(e){const{disableDefaultClasses:n}=r.useContext(l);return t=>n?"":e(t)}},437:function(e,n,t){function r(e,n=[]){if(void 0===e)return{};const t={};return Object.keys(e).filter((t=>t.match(/^on[A-Z]/)&&"function"==typeof e[t]&&!n.includes(t))).forEach((n=>{t[n]=e[n]})),t}t.d(n,{_:function(){return r}})},8442:function(e,n,t){function r(e){return"string"==typeof e}t.d(n,{X:function(){return r}})},148:function(e,n,t){t.d(n,{y:function(){return f}});var r=t(7462),o=t(3366),l=t(3703),u=t(8442);function i(e){var n,t,r="";if("string"==typeof e||"number"==typeof e)r+=e;else if("object"==typeof e)if(Array.isArray(e))for(n=0;n<e.length;n++)e[n]&&(t=i(e[n]))&&(r&&(r+=" "),r+=t);else for(n in e)e[n]&&(r&&(r+=" "),r+=n);return r}var s=function(){for(var e,n,t=0,r="";t<arguments.length;)(e=arguments[t++])&&(n=i(e))&&(r&&(r+=" "),r+=n);return r},a=t(437);function c(e){if(void 0===e)return{};const n={};return Object.keys(e).filter((n=>!(n.match(/^on[A-Z]/)&&"function"==typeof e[n]))).forEach((t=>{n[t]=e[t]})),n}const d=["elementType","externalSlotProps","ownerState","skipResolvingSlotProps"];function f(e){var n;const{elementType:t,externalSlotProps:i,ownerState:f,skipResolvingSlotProps:v=!1}=e,p=(0,o.Z)(e,d),b=v?{}:function(e,n,t){return"function"==typeof e?e(n,t):e}(i,f),{props:y,internalRef:h}=function(e){const{getSlotProps:n,additionalProps:t,externalSlotProps:o,externalForwardedProps:l,className:u}=e;if(!n){const e=s(null==l?void 0:l.className,null==o?void 0:o.className,u,null==t?void 0:t.className),n=(0,r.Z)({},null==t?void 0:t.style,null==l?void 0:l.style,null==o?void 0:o.style),i=(0,r.Z)({},t,l,o);return e.length>0&&(i.className=e),Object.keys(n).length>0&&(i.style=n),{props:i,internalRef:void 0}}const i=(0,a._)((0,r.Z)({},l,o)),d=c(o),f=c(l),v=n(i),p=s(null==v?void 0:v.className,null==t?void 0:t.className,u,null==l?void 0:l.className,null==o?void 0:o.className),b=(0,r.Z)({},null==v?void 0:v.style,null==t?void 0:t.style,null==l?void 0:l.style,null==o?void 0:o.style),y=(0,r.Z)({},v,t,f,d);return p.length>0&&(y.className=p),Object.keys(b).length>0&&(y.style=b),{props:y,internalRef:v.ref}}((0,r.Z)({},p,{externalSlotProps:b})),m=(0,l.Z)(h,null==b?void 0:b.ref,null==(n=e.additionalProps)?void 0:n.ref),g=function(e,n,t){return void 0===e||(0,u.X)(e)?n:(0,r.Z)({},n,{ownerState:(0,r.Z)({},n.ownerState,t)})}(t,(0,r.Z)({},y,{ref:m}),f);return g}},4780:function(e,n,t){function r(e,n,t=void 0){const r={};return Object.keys(e).forEach((o=>{r[o]=e[o].reduce(((e,r)=>{if(r){const o=n(r);""!==o&&e.push(o),t&&t[r]&&e.push(t[r])}return e}),[]).join(" ")})),r}t.d(n,{Z:function(){return r}})},8562:function(e,n,t){t.d(n,{Z:function(){return u}});const r=e=>e;var o=(()=>{let e=r;return{configure(n){e=n},generate(n){return e(n)},reset(){e=r}}})();const l={active:"active",checked:"checked",completed:"completed",disabled:"disabled",error:"error",expanded:"expanded",focused:"focused",focusVisible:"focusVisible",open:"open",readOnly:"readOnly",required:"required",selected:"selected"};function u(e,n,t="Mui"){const r=l[n];return r?`${t}-${r}`:`${o.generate(e)}-${n}`}},1588:function(e,n,t){t.d(n,{Z:function(){return o}});var r=t(8562);function o(e,n,t="Mui"){const o={};return n.forEach((n=>{o[n]=(0,r.Z)(e,n,t)})),o}},7960:function(e,n,t){function r(e,n){"function"==typeof e?e(n):e&&(e.current=n)}t.d(n,{Z:function(){return r}})},3703:function(e,n,t){t.d(n,{Z:function(){return l}});var r=t(2851),o=t(7960);function l(...e){return r.useMemo((()=>e.every((e=>null==e))?null:n=>{e.forEach((e=>{(0,o.Z)(e,n)}))}),e)}},4132:function(e,n,t){t.d(n,{hZ:function(){return o},tS:function(){return r}});var r,o,l=t(5893),u=t(2851),i=t(4184),s=t.n(i),a=t(844),c=t(5311);!function(e){e.EXTRA_SMALL="extraSmall",e.SMALL="small",e.MEDIUM="medium",e.LARGE="large"}(r||(r={})),function(e){e.PRIMARY="primary",e.SECONDARY="secondary",e.TERTIARY="tertiary",e.HOLLOW="hollow",e.TEXT="text"}(o||(o={}));const d=(0,u.forwardRef)((({variant:e=o.PRIMARY,size:n=r.SMALL,children:t,className:u,fullWidth:i=!1,...d},f)=>{const v=(0,c.Z)("button"),p=s()(v.Button,v[e],v[n],{[v.fullWidth]:i},u),b=s()(d.pendingClassName);return(0,l.jsx)(a.z,{...d,className:s()(p,{[b]:d.pending}),ref:f,children:d.pending&&d.pendingChildren?d.pendingChildren:t})}));d.displayName="Button",n.ZP=d}}]);
//# sourceMappingURL=4132-f38b8090ef93cb9fc8b0.js.map