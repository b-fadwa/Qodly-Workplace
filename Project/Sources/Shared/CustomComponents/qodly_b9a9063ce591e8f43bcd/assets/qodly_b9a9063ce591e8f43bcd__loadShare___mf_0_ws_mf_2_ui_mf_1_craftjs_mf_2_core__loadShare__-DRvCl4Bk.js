import { q as qodly_b9a9063ce591e8f43bcd__mf_v__runtimeInit__mf_v__, i as index_cjs } from './qodly_b9a9063ce591e8f43bcd__mf_v__runtimeInit__mf_v__-Cy7HYfiH.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_b9a9063ce591e8f43bcd__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("@ws-ui/craftjs-core", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^0.2.26"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__ = exportModule;

export { qodly_b9a9063ce591e8f43bcd__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__ as q };
