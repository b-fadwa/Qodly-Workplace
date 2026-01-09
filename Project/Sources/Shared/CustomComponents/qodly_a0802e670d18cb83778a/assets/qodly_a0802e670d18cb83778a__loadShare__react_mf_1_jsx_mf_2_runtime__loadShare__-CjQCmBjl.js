import { q as qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__, i as index_cjs } from './qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__-CbOscRFR.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_a0802e670d18cb83778a__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("react/jsx-runtime", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^17.0.2"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_a0802e670d18cb83778a__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ = exportModule;

export { qodly_a0802e670d18cb83778a__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ as q };
