import { q as qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ } from './qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__-CV51GBwp.js';
import { LSPProvider, useLSP } from '@ws-ui/code-editor';
import { _ as _k, G as GI, T as Tir, e as eM, F as Fr, s as sN, a as TP, P as Pl, D as Dl, M as Ml, R as Rn, b as __, I as Il, y as yir, q as qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__, c as Iir, d as _8t, A as Aie, f as Fir, v as v5, g as qr, $ as $M, C as Cl, h as gI, i as It, K as KM, t as tL, j as eL } from './index.es-ChTU7AjJ.js';
import { q as qodly_e1919439b85b40a0017f__loadShare__react__loadShare__ } from './qodly_e1919439b85b40a0017f__loadShare__react__loadShare__-QmcVMZEG.js';
import './qodly_e1919439b85b40a0017f__loadShare__react_mf_2_dom__loadShare__-RRXr2Zsk.js';
import './qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__-ZhN4C5Hh.js';
import './qodly_e1919439b85b40a0017f__mf_v__runtimeInit__mf_v__-i5q9-4q8.js';
import './preload-helper-CqoC6PUU.js';
import './index.es-8m3doBu1.js';
import './_commonjsHelpers-BFTU3MAI.js';
import './tiny-invariant-w-EUxzzv.js';
import './tslib.es6-W2ahr3gh.js';

const K = () => {
  const t = Fr(KM), s = eM();
  return /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.Fragment, { children: t.map((o, n) => /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
    qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.Modal,
    {
      hasOverlay: n === 0,
      ...o,
      onClose: (i) => s(eL(i)),
      onEdit: (i) => s(tL(i))
    },
    o.id
  )) });
};
function Q(t) {
  const s = eM(), o = Fr(qr(t.path)), n = Fr($M);
  return qodly_e1919439b85b40a0017f__loadShare__react__loadShare__.useEffect(() => {
    o ? (t.replace && t.date && o && o.date !== t.date && s(Cl(o)), n !== t.path && s(gI(t.path))) : s(
      It({
        date: t.date,
        view: {
          panel: {
            isOpen: false,
            type: "",
            current: ""
          }
        },
        flags: { enabled: true },
        name: t.name,
        path: t.path,
        type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.FileFolderType.WEBFORM,
        initialContent: t.content,
        content: t.content
      })
    );
  }, []), o;
}
function V({ webform: t, onChange: s, userComponents: o }) {
  const { inited: n, lastError: i, reload: S } = useLSP(), r = eM(), c = Q(t), d = Fr(
    sN("studio.tips", "studio.tipsBaseUrl")
  ), f = d["studio.tips"], v = d["studio.tipsBaseUrl"];
  return qodly_e1919439b85b40a0017f__loadShare__react__loadShare__.useEffect(() => {
    r(TP()), r(Pl()), r(Dl()), r(Ml()), r(Rn()), r(__()), r(Il());
  }, []), /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "flex flex-1 bg-grey-900 h-screen", children: [
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(yir, { isInsideStudio: true, isStandaloneEditor: true, children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.TipsProvider, { enabled: f, baseUrl: v, children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(Iir, { children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(_8t, { children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(Aie, { children: [
      /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
        Fir,
        {
          useDispatch: eM,
          useSelector: Fr,
          store: GI(),
          lspProps: {
            inited: n,
            lastError: i,
            reload: S
          },
          path: t.path,
          content: (c == null ? void 0 : c.content) || t.content,
          userComponents: o,
          onChange: s
        }
      ),
      /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(v5.Global, {})
    ] }) }) }) }) }),
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(K, {})
  ] });
}
const at = (t) => {
  const s = `ws${location.protocol === "https:" ? "s" : ""}://${location.host}/LSP`;
  return /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(_k, { store: GI(), children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(Tir, { children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
    LSPProvider,
    {
      url: s,
      qodly: true,
      defaultZoom: 0,
      defaultInited: true,
      children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(V, { ...t })
    }
  ) }) });
};

export { at as default };
