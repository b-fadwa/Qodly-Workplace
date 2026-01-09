import { q as qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ } from './qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__-DGM51GIt.js';
import { LSPProvider, useLSP } from '@ws-ui/code-editor';
import { r as rk, I as II, o as oGa, B as BI, k as kr, G as GM, d as dD, A as Af, O as Of, R as Rf, x as xn, p as p_, X as X7a, q as qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__, s as sGa, E as EGt, _ as _oe, g as gGa, a as q$, b as qr, w as wM, c as wf, n as nI, D as Dt, $ as $M, j as jN, F as FN } from './index.es-S6NZ1-7W.js';
import { q as qodly_b9a9063ce591e8f43bcd__loadShare__react__loadShare__ } from './qodly_b9a9063ce591e8f43bcd__loadShare__react__loadShare__-B71YHbTT.js';
import './qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_2_dom__loadShare__-DBzeHcUe.js';
import './qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__-DRvCl4Bk.js';
import './qodly_b9a9063ce591e8f43bcd__mf_v__runtimeInit__mf_v__-Cy7HYfiH.js';
import './preload-helper-CqoC6PUU.js';
import './index.es-DqZTCgoI.js';
import './_commonjsHelpers-BFTU3MAI.js';
import './tiny-invariant-w-EUxzzv.js';

const J = () => {
  const t = kr($M), s = BI();
  return /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.Fragment, { children: t.map((o, n) => /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
    qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.Modal,
    {
      hasOverlay: n === 0,
      ...o,
      onClose: (r) => s(FN(r)),
      onEdit: (r) => s(jN(r))
    },
    o.id
  )) });
};
function K(t) {
  const s = BI(), o = kr(qr(t.path)), n = kr(wM);
  return qodly_b9a9063ce591e8f43bcd__loadShare__react__loadShare__.useEffect(() => {
    o ? (t.replace && t.date && o && o.date !== t.date && s(wf(o)), n !== t.path && s(nI(t.path))) : s(
      Dt({
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
        type: qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.FileFolderType.WEBFORM,
        initialContent: t.content,
        content: t.content
      })
    );
  }, []), o;
}
function Q({ webform: t, onChange: s, userComponents: o }) {
  const { inited: n, lastError: r, reload: S } = useLSP(), i = BI(), c = K(t), d = kr(
    GM("studio.tips", "studio.tipsBaseUrl")
  ), f = d["studio.tips"], m = d["studio.tipsBaseUrl"];
  return qodly_b9a9063ce591e8f43bcd__loadShare__react__loadShare__.useEffect(() => {
    i(dD()), i(Af()), i(Of()), i(Rf()), i(xn()), i(p_());
  }, []), /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "flex flex-1 bg-grey-900 h-screen", children: [
    /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(X7a, { isInsideStudio: true, isStandaloneEditor: true, children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.TipsProvider, { enabled: f, baseUrl: m, children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(sGa, { children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(EGt, { children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(_oe, { children: [
      /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
        gGa,
        {
          useDispatch: BI,
          useSelector: kr,
          store: II(),
          lspProps: {
            inited: n,
            lastError: r,
            reload: S
          },
          path: t.path,
          content: (c == null ? void 0 : c.content) || t.content,
          userComponents: o,
          onChange: s
        }
      ),
      /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(q$.Global, {})
    ] }) }) }) }) }),
    /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(J, {})
  ] });
}
const nt = (t) => {
  const s = `ws${location.protocol === "https:" ? "s" : ""}://${location.host}/LSP`;
  return /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(rk, { store: II(), children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(oGa, { children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
    LSPProvider,
    {
      url: s,
      qodly: true,
      defaultZoom: 0,
      defaultInited: true,
      children: /* @__PURE__ */ qodly_b9a9063ce591e8f43bcd__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(Q, { ...t })
    }
  ) }) });
};

export { nt as default };
