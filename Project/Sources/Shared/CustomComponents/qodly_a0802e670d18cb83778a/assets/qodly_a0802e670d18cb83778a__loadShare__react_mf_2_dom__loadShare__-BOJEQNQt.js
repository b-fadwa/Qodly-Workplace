import { g as getDefaultExportFromCjs } from './_commonjsHelpers-BFTU3MAI.js';
import { q as qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__, i as index_cjs } from './qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__-CbOscRFR.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("react-dom", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^17.0.2"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_a0802e670d18cb83778a__loadShare__react_mf_2_dom__loadShare__ = exportModule;

const b = /*@__PURE__*/getDefaultExportFromCjs(qodly_a0802e670d18cb83778a__loadShare__react_mf_2_dom__loadShare__);

export { b, qodly_a0802e670d18cb83778a__loadShare__react_mf_2_dom__loadShare__ as q };
