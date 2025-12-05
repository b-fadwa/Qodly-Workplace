import { q as qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ } from './qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__-CV51GBwp.js';
import { q as qodly_e1919439b85b40a0017f__mf_v__runtimeInit__mf_v__, i as index_cjs } from './qodly_e1919439b85b40a0017f__mf_v__runtimeInit__mf_v__-i5q9-4q8.js';
import { R as React, q as qodly_e1919439b85b40a0017f__loadShare__react__loadShare__ } from './qodly_e1919439b85b40a0017f__loadShare__react__loadShare__-QmcVMZEG.js';
import { g as getDefaultExportFromCjs } from './_commonjsHelpers-BFTU3MAI.js';
import { q as qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__ } from './qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__-ZhN4C5Hh.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_e1919439b85b40a0017f__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("@ws-ui/webform-editor", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^1.8.3"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ = exportModule;

var DefaultContext = {
  color: undefined,
  size: undefined,
  className: undefined,
  style: undefined,
  attr: undefined
};
var IconContext = React.createContext && React.createContext(DefaultContext);

var __assign = undefined && undefined.__assign || function () {
  __assign = Object.assign || function (t) {
    for (var s, i = 1, n = arguments.length; i < n; i++) {
      s = arguments[i];
      for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p)) t[p] = s[p];
    }
    return t;
  };
  return __assign.apply(this, arguments);
};
var __rest = undefined && undefined.__rest || function (s, e) {
  var t = {};
  for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0) t[p] = s[p];
  if (s != null && typeof Object.getOwnPropertySymbols === "function") for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) {
    if (e.indexOf(p[i]) < 0 && Object.prototype.propertyIsEnumerable.call(s, p[i])) t[p[i]] = s[p[i]];
  }
  return t;
};
function Tree2Element(tree) {
  return tree && tree.map(function (node, i) {
    return React.createElement(node.tag, __assign({
      key: i
    }, node.attr), Tree2Element(node.child));
  });
}
function GenIcon(data) {
  // eslint-disable-next-line react/display-name
  return function (props) {
    return React.createElement(IconBase, __assign({
      attr: __assign({}, data.attr)
    }, props), Tree2Element(data.child));
  };
}
function IconBase(props) {
  var elem = function (conf) {
    var attr = props.attr,
      size = props.size,
      title = props.title,
      svgProps = __rest(props, ["attr", "size", "title"]);
    var computedSize = size || conf.size || "1em";
    var className;
    if (conf.className) className = conf.className;
    if (props.className) className = (className ? className + " " : "") + props.className;
    return React.createElement("svg", __assign({
      stroke: "currentColor",
      fill: "currentColor",
      strokeWidth: "0"
    }, conf.attr, attr, svgProps, {
      className: className,
      style: __assign(__assign({
        color: props.color || conf.color
      }, conf.style), props.style),
      height: computedSize,
      width: computedSize,
      xmlns: "http://www.w3.org/2000/svg"
    }), title && React.createElement("title", null, title), props.children);
  };
  return IconContext !== undefined ? React.createElement(IconContext.Consumer, null, function (conf) {
    return elem(conf);
  }) : elem(DefaultContext);
}

// THIS FILE IS AUTO GENERATED
function MdOutlineLinearScale (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"path","attr":{"fill":"none","d":"M0 0h24v24H0z"}},{"tag":"path","attr":{"d":"M19.5 9.5c-1.03 0-1.9.62-2.29 1.5h-2.92c-.39-.88-1.26-1.5-2.29-1.5s-1.9.62-2.29 1.5H6.79c-.39-.88-1.26-1.5-2.29-1.5a2.5 2.5 0 000 5c1.03 0 1.9-.62 2.29-1.5h2.92c.39.88 1.26 1.5 2.29 1.5s1.9-.62 2.29-1.5h2.92c.39.88 1.26 1.5 2.29 1.5a2.5 2.5 0 000-5z"}}]})(props);
}

// THIS FILE IS AUTO GENERATED
function CiAlignBottom (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"g","attr":{"id":"Align_Bottom"},"child":[{"tag":"g","attr":{},"child":[{"tag":"path","attr":{"d":"M3.548,20.922h16.9a.5.5,0,0,0,0-1H3.548a.5.5,0,0,0,0,1Z"}},{"tag":"path","attr":{"d":"M9,18.919H6.565a2.5,2.5,0,0,1-2.5-2.5V5.578a2.5,2.5,0,0,1,2.5-2.5H9a2.5,2.5,0,0,1,2.5,2.5V16.419A2.5,2.5,0,0,1,9,18.919ZM6.565,4.078a1.5,1.5,0,0,0-1.5,1.5V16.419a1.5,1.5,0,0,0,1.5,1.5H9a1.5,1.5,0,0,0,1.5-1.5V5.578A1.5,1.5,0,0,0,9,4.078Z"}},{"tag":"path","attr":{"d":"M17.437,18.919H15a2.5,2.5,0,0,1-2.5-2.5V10.55A2.5,2.5,0,0,1,15,8.05h2.434a2.5,2.5,0,0,1,2.5,2.5v5.869A2.5,2.5,0,0,1,17.437,18.919ZM15,9.05a1.5,1.5,0,0,0-1.5,1.5v5.869a1.5,1.5,0,0,0,1.5,1.5h2.434a1.5,1.5,0,0,0,1.5-1.5V10.55a1.5,1.5,0,0,0-1.5-1.5Z"}}]}]}]})(props);
}function CiAlignLeft (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"g","attr":{"id":"Align_Left"},"child":[{"tag":"g","attr":{},"child":[{"tag":"path","attr":{"d":"M3.078,3.548v16.9a.5.5,0,0,0,1,0V3.548a.5.5,0,0,0-1,0Z"}},{"tag":"path","attr":{"d":"M18.422,11.5H7.582A2.5,2.5,0,0,1,5.082,9V6.565a2.5,2.5,0,0,1,2.5-2.5h10.84a2.5,2.5,0,0,1,2.5,2.5V9A2.5,2.5,0,0,1,18.422,11.5ZM7.582,5.065a1.5,1.5,0,0,0-1.5,1.5V9a1.5,1.5,0,0,0,1.5,1.5h10.84a1.5,1.5,0,0,0,1.5-1.5V6.565a1.5,1.5,0,0,0-1.5-1.5Z"}},{"tag":"path","attr":{"d":"M13.451,19.938H7.582a2.5,2.5,0,0,1-2.5-2.5V15a2.5,2.5,0,0,1,2.5-2.5h5.869a2.5,2.5,0,0,1,2.5,2.5v2.436A2.5,2.5,0,0,1,13.451,19.938ZM7.582,13.5a1.5,1.5,0,0,0-1.5,1.5v2.436a1.5,1.5,0,0,0,1.5,1.5h5.869a1.5,1.5,0,0,0,1.5-1.5V15a1.5,1.5,0,0,0-1.5-1.5Z"}}]}]}]})(props);
}function CiAlignRight (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"g","attr":{"id":"Align_Right"},"child":[{"tag":"g","attr":{},"child":[{"tag":"path","attr":{"d":"M19.922,3.548v16.9a.5.5,0,0,0,1,0V3.548a.5.5,0,0,0-1,0Z"}},{"tag":"path","attr":{"d":"M16.419,11.5H5.578A2.5,2.5,0,0,1,3.078,9V6.565a2.5,2.5,0,0,1,2.5-2.5H16.419a2.5,2.5,0,0,1,2.5,2.5V9A2.5,2.5,0,0,1,16.419,11.5ZM5.578,5.065a1.5,1.5,0,0,0-1.5,1.5V9a1.5,1.5,0,0,0,1.5,1.5H16.419a1.5,1.5,0,0,0,1.5-1.5V6.565a1.5,1.5,0,0,0-1.5-1.5Z"}},{"tag":"path","attr":{"d":"M16.419,19.938H10.55a2.5,2.5,0,0,1-2.5-2.5V15a2.5,2.5,0,0,1,2.5-2.5h5.869a2.5,2.5,0,0,1,2.5,2.5v2.436A2.5,2.5,0,0,1,16.419,19.938ZM10.55,13.5A1.5,1.5,0,0,0,9.05,15v2.436a1.5,1.5,0,0,0,1.5,1.5h5.869a1.5,1.5,0,0,0,1.5-1.5V15a1.5,1.5,0,0,0-1.5-1.5Z"}}]}]}]})(props);
}function CiAlignTop (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"g","attr":{"id":"Align_Top"},"child":[{"tag":"g","attr":{},"child":[{"tag":"path","attr":{"d":"M3.548,4.078h16.9a.5.5,0,0,0,0-1H3.548a.5.5,0,0,0,0,1Z"}},{"tag":"path","attr":{"d":"M9,20.922H6.565a2.5,2.5,0,0,1-2.5-2.5V7.582a2.5,2.5,0,0,1,2.5-2.5H9a2.5,2.5,0,0,1,2.5,2.5v10.84A2.5,2.5,0,0,1,9,20.922ZM6.565,6.082a1.5,1.5,0,0,0-1.5,1.5v10.84a1.5,1.5,0,0,0,1.5,1.5H9a1.5,1.5,0,0,0,1.5-1.5V7.582A1.5,1.5,0,0,0,9,6.082Z"}},{"tag":"path","attr":{"d":"M17.438,15.951H15a2.5,2.5,0,0,1-2.5-2.5V7.582a2.5,2.5,0,0,1,2.5-2.5h2.435a2.5,2.5,0,0,1,2.5,2.5v5.869A2.5,2.5,0,0,1,17.438,15.951ZM15,6.082a1.5,1.5,0,0,0-1.5,1.5v5.869a1.5,1.5,0,0,0,1.5,1.5h2.435a1.5,1.5,0,0,0,1.5-1.5V7.582a1.5,1.5,0,0,0-1.5-1.5Z"}}]}]}]})(props);
}

const commonSettings = [
  {
    key: "linear",
    label: "Linear",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.CHECKBOX,
    defaultValue: false
  },
  {
    key: "labelPosition",
    label: "Label Position",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.RADIOGROUP,
    options: [
      { value: "right", icon: CiAlignRight },
      { value: "left", icon: CiAlignLeft },
      { value: "top", icon: CiAlignTop },
      { value: "bottom", icon: CiAlignBottom }
    ],
    defaultValue: "right"
  },
  {
    key: "activeColor",
    label: "Active Color",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.COLOR_PICKER,
    defaultValue: "#3b82f6"
  },
  {
    key: "inactiveColor",
    label: "Inactive Color",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.COLOR_PICKER,
    defaultValue: "#c7cad4"
  },
  {
    key: "stepStyle",
    label: "Step Style",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.SELECT,
    options: [
      {
        value: "icon",
        label: "Icon"
      },
      {
        value: "text",
        label: "Text"
      }
    ],
    defaultValue: "text"
  },
  {
    key: "steps",
    label: "Steps",
    titleProperty: "title",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.DATAGRID,
    data: [
      {
        key: "title",
        label: "Title",
        type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.TEXT_FIELD
      }
    ]
  }
];
const Settings = [
  {
    key: "properties",
    label: "Properties",
    type: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.GROUP,
    components: commonSettings
  },
  ...qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.load(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.DEFAULT_SETTINGS).filter("dataAccess")
];
const BasicSettings = [
  ...commonSettings,
  ...qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.load(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.BASIC_SETTINGS).filter("style.overflow")
];

const config = {
  craft: {
    displayName: "Stepper",
    kind: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.EComponentKind.BASIC,
    rules: {
      canMoveIn: () => true,
      canMoveOut: () => true
    },
    props: {
      name: "",
      classNames: [],
      events: []
    },
    related: {
      settings: qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.Settings(Settings, BasicSettings)
    }
  },
  info: {
    displayName: "Stepper",
    exposed: true,
    icon: MdOutlineLinearScale,
    events: [],
    datasources: {
      accept: ["string"]
    }
  },
  defaultProps: {
    activeColor: "#3b82f6",
    inactiveColor: "#c7cad4",
    stepStyle: "text",
    labelPosition: "right",
    linear: false
  }
};

var classnames = {exports: {}};

/*!
	Copyright (c) 2018 Jed Watson.
	Licensed under the MIT License (MIT), see
	http://jedwatson.github.io/classnames
*/

(function (module) {
	/* global define */

	(function () {

		var hasOwn = {}.hasOwnProperty;

		function classNames () {
			var classes = '';

			for (var i = 0; i < arguments.length; i++) {
				var arg = arguments[i];
				if (arg) {
					classes = appendClass(classes, parseValue(arg));
				}
			}

			return classes;
		}

		function parseValue (arg) {
			if (typeof arg === 'string' || typeof arg === 'number') {
				return arg;
			}

			if (typeof arg !== 'object') {
				return '';
			}

			if (Array.isArray(arg)) {
				return classNames.apply(null, arg);
			}

			if (arg.toString !== Object.prototype.toString && !arg.toString.toString().includes('[native code]')) {
				return arg.toString();
			}

			var classes = '';

			for (var key in arg) {
				if (hasOwn.call(arg, key) && arg[key]) {
					classes = appendClass(classes, key);
				}
			}

			return classes;
		}

		function appendClass (value, newClass) {
			if (!newClass) {
				return value;
			}
		
			if (value) {
				return value + ' ' + newClass;
			}
		
			return value + newClass;
		}

		if (module.exports) {
			classNames.default = classNames;
			module.exports = classNames;
		} else {
			window.classNames = classNames;
		}
	}()); 
} (classnames));

var classnamesExports = classnames.exports;
const cn = /*@__PURE__*/getDefaultExportFromCjs(classnamesExports);

// THIS FILE IS AUTO GENERATED
function BsFillInfoCircleFill (props) {
  return GenIcon({"attr":{"fill":"currentColor","viewBox":"0 0 16 16"},"child":[{"tag":"path","attr":{"d":"M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"}}]})(props);
}

/**
 * Take input from [0, n] and return it as [0, 1]
 * @hidden
 */
function bound01(n, max) {
    if (isOnePointZero(n)) {
        n = '100%';
    }
    const isPercent = isPercentage(n);
    n = max === 360 ? n : Math.min(max, Math.max(0, parseFloat(n)));
    // Automatically convert percentage into number
    if (isPercent) {
        n = parseInt(String(n * max), 10) / 100;
    }
    // Handle floating point rounding errors
    if (Math.abs(n - max) < 0.000001) {
        return 1;
    }
    // Convert into [0, 1] range if it isn't already
    if (max === 360) {
        // If n is a hue given in degrees,
        // wrap around out-of-range values into [0, 360] range
        // then convert into [0, 1].
        n = (n < 0 ? (n % max) + max : n % max) / parseFloat(String(max));
    }
    else {
        // If n not a hue given in degrees
        // Convert into [0, 1] range if it isn't already.
        n = (n % max) / parseFloat(String(max));
    }
    return n;
}
/**
 * Force a number between 0 and 1
 * @hidden
 */
function clamp01(val) {
    return Math.min(1, Math.max(0, val));
}
/**
 * Need to handle 1.0 as 100%, since once it is a number, there is no difference between it and 1
 * <http://stackoverflow.com/questions/7422072/javascript-how-to-detect-number-as-a-decimal-including-1-0>
 * @hidden
 */
function isOnePointZero(n) {
    return typeof n === 'string' && n.indexOf('.') !== -1 && parseFloat(n) === 1;
}
/**
 * Check to see if string passed in is a percentage
 * @hidden
 */
function isPercentage(n) {
    return typeof n === 'string' && n.indexOf('%') !== -1;
}
/**
 * Return a valid alpha value [0,1] with all invalid values being set to 1
 * @hidden
 */
function boundAlpha(a) {
    a = parseFloat(a);
    if (isNaN(a) || a < 0 || a > 1) {
        a = 1;
    }
    return a;
}
/**
 * Replace a decimal with it's percentage value
 * @hidden
 */
function convertToPercentage(n) {
    if (Number(n) <= 1) {
        return `${Number(n) * 100}%`;
    }
    return n;
}
/**
 * Force a hex value to have 2 characters
 * @hidden
 */
function pad2(c) {
    return c.length === 1 ? '0' + c : String(c);
}

// `rgbToHsl`, `rgbToHsv`, `hslToRgb`, `hsvToRgb` modified from:
// <http://mjijackson.com/2008/02/rgb-to-hsl-and-rgb-to-hsv-color-model-conversion-algorithms-in-javascript>
/**
 * Handle bounds / percentage checking to conform to CSS color spec
 * <http://www.w3.org/TR/css3-color/>
 * *Assumes:* r, g, b in [0, 255] or [0, 1]
 * *Returns:* { r, g, b } in [0, 255]
 */
function rgbToRgb(r, g, b) {
    return {
        r: bound01(r, 255) * 255,
        g: bound01(g, 255) * 255,
        b: bound01(b, 255) * 255,
    };
}
/**
 * Converts an RGB color value to HSL.
 * *Assumes:* r, g, and b are contained in [0, 255] or [0, 1]
 * *Returns:* { h, s, l } in [0,1]
 */
function rgbToHsl(r, g, b) {
    r = bound01(r, 255);
    g = bound01(g, 255);
    b = bound01(b, 255);
    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);
    let h = 0;
    let s = 0;
    const l = (max + min) / 2;
    if (max === min) {
        s = 0;
        h = 0; // achromatic
    }
    else {
        const d = max - min;
        s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
        switch (max) {
            case r:
                h = (g - b) / d + (g < b ? 6 : 0);
                break;
            case g:
                h = (b - r) / d + 2;
                break;
            case b:
                h = (r - g) / d + 4;
                break;
        }
        h /= 6;
    }
    return { h, s, l };
}
function hue2rgb(p, q, t) {
    if (t < 0) {
        t += 1;
    }
    if (t > 1) {
        t -= 1;
    }
    if (t < 1 / 6) {
        return p + (q - p) * (6 * t);
    }
    if (t < 1 / 2) {
        return q;
    }
    if (t < 2 / 3) {
        return p + (q - p) * (2 / 3 - t) * 6;
    }
    return p;
}
/**
 * Converts an HSL color value to RGB.
 *
 * *Assumes:* h is contained in [0, 1] or [0, 360] and s and l are contained [0, 1] or [0, 100]
 * *Returns:* { r, g, b } in the set [0, 255]
 */
function hslToRgb(h, s, l) {
    let r;
    let g;
    let b;
    h = bound01(h, 360);
    s = bound01(s, 100);
    l = bound01(l, 100);
    if (s === 0) {
        // achromatic
        g = l;
        b = l;
        r = l;
    }
    else {
        const q = l < 0.5 ? l * (1 + s) : l + s - l * s;
        const p = 2 * l - q;
        r = hue2rgb(p, q, h + 1 / 3);
        g = hue2rgb(p, q, h);
        b = hue2rgb(p, q, h - 1 / 3);
    }
    return { r: r * 255, g: g * 255, b: b * 255 };
}
/**
 * Converts an RGB color value to HSV
 *
 * *Assumes:* r, g, and b are contained in the set [0, 255] or [0, 1]
 * *Returns:* { h, s, v } in [0,1]
 */
function rgbToHsv(r, g, b) {
    r = bound01(r, 255);
    g = bound01(g, 255);
    b = bound01(b, 255);
    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);
    let h = 0;
    const v = max;
    const d = max - min;
    const s = max === 0 ? 0 : d / max;
    if (max === min) {
        h = 0; // achromatic
    }
    else {
        switch (max) {
            case r:
                h = (g - b) / d + (g < b ? 6 : 0);
                break;
            case g:
                h = (b - r) / d + 2;
                break;
            case b:
                h = (r - g) / d + 4;
                break;
        }
        h /= 6;
    }
    return { h, s, v };
}
/**
 * Converts an HSV color value to RGB.
 *
 * *Assumes:* h is contained in [0, 1] or [0, 360] and s and v are contained in [0, 1] or [0, 100]
 * *Returns:* { r, g, b } in the set [0, 255]
 */
function hsvToRgb(h, s, v) {
    h = bound01(h, 360) * 6;
    s = bound01(s, 100);
    v = bound01(v, 100);
    const i = Math.floor(h);
    const f = h - i;
    const p = v * (1 - s);
    const q = v * (1 - f * s);
    const t = v * (1 - (1 - f) * s);
    const mod = i % 6;
    const r = [v, q, p, p, t, v][mod];
    const g = [t, v, v, q, p, p][mod];
    const b = [p, p, t, v, v, q][mod];
    return { r: r * 255, g: g * 255, b: b * 255 };
}
/**
 * Converts an RGB color to hex
 *
 * *Assumes:* r, g, and b are contained in the set [0, 255]
 * *Returns:* a 3 or 6 character hex
 */
function rgbToHex(r, g, b, allow3Char) {
    const hex = [
        pad2(Math.round(r).toString(16)),
        pad2(Math.round(g).toString(16)),
        pad2(Math.round(b).toString(16)),
    ];
    // Return a 3 character hex if possible
    if (allow3Char &&
        hex[0].startsWith(hex[0].charAt(1)) &&
        hex[1].startsWith(hex[1].charAt(1)) &&
        hex[2].startsWith(hex[2].charAt(1))) {
        return hex[0].charAt(0) + hex[1].charAt(0) + hex[2].charAt(0);
    }
    return hex.join('');
}
/**
 * Converts an RGBA color plus alpha transparency to hex
 *
 * *Assumes:* r, g, b are contained in the set [0, 255] and a in [0, 1]
 * *Returns:* a 4 or 8 character rgba hex
 */
// eslint-disable-next-line max-params
function rgbaToHex(r, g, b, a, allow4Char) {
    const hex = [
        pad2(Math.round(r).toString(16)),
        pad2(Math.round(g).toString(16)),
        pad2(Math.round(b).toString(16)),
        pad2(convertDecimalToHex(a)),
    ];
    // Return a 4 character hex if possible
    if (allow4Char &&
        hex[0].startsWith(hex[0].charAt(1)) &&
        hex[1].startsWith(hex[1].charAt(1)) &&
        hex[2].startsWith(hex[2].charAt(1)) &&
        hex[3].startsWith(hex[3].charAt(1))) {
        return hex[0].charAt(0) + hex[1].charAt(0) + hex[2].charAt(0) + hex[3].charAt(0);
    }
    return hex.join('');
}
/**
 * Converts CMYK to RBG
 * Assumes c, m, y, k are in the set [0, 100]
 */
function cmykToRgb(c, m, y, k) {
    const cConv = c / 100;
    const mConv = m / 100;
    const yConv = y / 100;
    const kConv = k / 100;
    const r = 255 * (1 - cConv) * (1 - kConv);
    const g = 255 * (1 - mConv) * (1 - kConv);
    const b = 255 * (1 - yConv) * (1 - kConv);
    return { r, g, b };
}
function rgbToCmyk(r, g, b) {
    let c = 1 - r / 255;
    let m = 1 - g / 255;
    let y = 1 - b / 255;
    let k = Math.min(c, m, y);
    if (k === 1) {
        c = 0;
        m = 0;
        y = 0;
    }
    else {
        c = ((c - k) / (1 - k)) * 100;
        m = ((m - k) / (1 - k)) * 100;
        y = ((y - k) / (1 - k)) * 100;
    }
    k *= 100;
    return {
        c: Math.round(c),
        m: Math.round(m),
        y: Math.round(y),
        k: Math.round(k),
    };
}
/** Converts a decimal to a hex value */
function convertDecimalToHex(d) {
    return Math.round(parseFloat(d) * 255).toString(16);
}
/** Converts a hex value to a decimal */
function convertHexToDecimal(h) {
    return parseIntFromHex(h) / 255;
}
/** Parse a base-16 hex value into a base-10 integer */
function parseIntFromHex(val) {
    return parseInt(val, 16);
}
function numberInputToObject(color) {
    return {
        r: color >> 16,
        g: (color & 0xff00) >> 8,
        b: color & 0xff,
    };
}

// https://github.com/bahamas10/css-color-names/blob/master/css-color-names.json
/**
 * @hidden
 */
const names = {
    aliceblue: '#f0f8ff',
    antiquewhite: '#faebd7',
    aqua: '#00ffff',
    aquamarine: '#7fffd4',
    azure: '#f0ffff',
    beige: '#f5f5dc',
    bisque: '#ffe4c4',
    black: '#000000',
    blanchedalmond: '#ffebcd',
    blue: '#0000ff',
    blueviolet: '#8a2be2',
    brown: '#a52a2a',
    burlywood: '#deb887',
    cadetblue: '#5f9ea0',
    chartreuse: '#7fff00',
    chocolate: '#d2691e',
    coral: '#ff7f50',
    cornflowerblue: '#6495ed',
    cornsilk: '#fff8dc',
    crimson: '#dc143c',
    cyan: '#00ffff',
    darkblue: '#00008b',
    darkcyan: '#008b8b',
    darkgoldenrod: '#b8860b',
    darkgray: '#a9a9a9',
    darkgreen: '#006400',
    darkgrey: '#a9a9a9',
    darkkhaki: '#bdb76b',
    darkmagenta: '#8b008b',
    darkolivegreen: '#556b2f',
    darkorange: '#ff8c00',
    darkorchid: '#9932cc',
    darkred: '#8b0000',
    darksalmon: '#e9967a',
    darkseagreen: '#8fbc8f',
    darkslateblue: '#483d8b',
    darkslategray: '#2f4f4f',
    darkslategrey: '#2f4f4f',
    darkturquoise: '#00ced1',
    darkviolet: '#9400d3',
    deeppink: '#ff1493',
    deepskyblue: '#00bfff',
    dimgray: '#696969',
    dimgrey: '#696969',
    dodgerblue: '#1e90ff',
    firebrick: '#b22222',
    floralwhite: '#fffaf0',
    forestgreen: '#228b22',
    fuchsia: '#ff00ff',
    gainsboro: '#dcdcdc',
    ghostwhite: '#f8f8ff',
    goldenrod: '#daa520',
    gold: '#ffd700',
    gray: '#808080',
    green: '#008000',
    greenyellow: '#adff2f',
    grey: '#808080',
    honeydew: '#f0fff0',
    hotpink: '#ff69b4',
    indianred: '#cd5c5c',
    indigo: '#4b0082',
    ivory: '#fffff0',
    khaki: '#f0e68c',
    lavenderblush: '#fff0f5',
    lavender: '#e6e6fa',
    lawngreen: '#7cfc00',
    lemonchiffon: '#fffacd',
    lightblue: '#add8e6',
    lightcoral: '#f08080',
    lightcyan: '#e0ffff',
    lightgoldenrodyellow: '#fafad2',
    lightgray: '#d3d3d3',
    lightgreen: '#90ee90',
    lightgrey: '#d3d3d3',
    lightpink: '#ffb6c1',
    lightsalmon: '#ffa07a',
    lightseagreen: '#20b2aa',
    lightskyblue: '#87cefa',
    lightslategray: '#778899',
    lightslategrey: '#778899',
    lightsteelblue: '#b0c4de',
    lightyellow: '#ffffe0',
    lime: '#00ff00',
    limegreen: '#32cd32',
    linen: '#faf0e6',
    magenta: '#ff00ff',
    maroon: '#800000',
    mediumaquamarine: '#66cdaa',
    mediumblue: '#0000cd',
    mediumorchid: '#ba55d3',
    mediumpurple: '#9370db',
    mediumseagreen: '#3cb371',
    mediumslateblue: '#7b68ee',
    mediumspringgreen: '#00fa9a',
    mediumturquoise: '#48d1cc',
    mediumvioletred: '#c71585',
    midnightblue: '#191970',
    mintcream: '#f5fffa',
    mistyrose: '#ffe4e1',
    moccasin: '#ffe4b5',
    navajowhite: '#ffdead',
    navy: '#000080',
    oldlace: '#fdf5e6',
    olive: '#808000',
    olivedrab: '#6b8e23',
    orange: '#ffa500',
    orangered: '#ff4500',
    orchid: '#da70d6',
    palegoldenrod: '#eee8aa',
    palegreen: '#98fb98',
    paleturquoise: '#afeeee',
    palevioletred: '#db7093',
    papayawhip: '#ffefd5',
    peachpuff: '#ffdab9',
    peru: '#cd853f',
    pink: '#ffc0cb',
    plum: '#dda0dd',
    powderblue: '#b0e0e6',
    purple: '#800080',
    rebeccapurple: '#663399',
    red: '#ff0000',
    rosybrown: '#bc8f8f',
    royalblue: '#4169e1',
    saddlebrown: '#8b4513',
    salmon: '#fa8072',
    sandybrown: '#f4a460',
    seagreen: '#2e8b57',
    seashell: '#fff5ee',
    sienna: '#a0522d',
    silver: '#c0c0c0',
    skyblue: '#87ceeb',
    slateblue: '#6a5acd',
    slategray: '#708090',
    slategrey: '#708090',
    snow: '#fffafa',
    springgreen: '#00ff7f',
    steelblue: '#4682b4',
    tan: '#d2b48c',
    teal: '#008080',
    thistle: '#d8bfd8',
    tomato: '#ff6347',
    turquoise: '#40e0d0',
    violet: '#ee82ee',
    wheat: '#f5deb3',
    white: '#ffffff',
    whitesmoke: '#f5f5f5',
    yellow: '#ffff00',
    yellowgreen: '#9acd32',
};

/**
 * Given a string or object, convert that input to RGB
 *
 * Possible string inputs:
 * ```
 * "red"
 * "#f00" or "f00"
 * "#ff0000" or "ff0000"
 * "#ff000000" or "ff000000"
 * "rgb 255 0 0" or "rgb (255, 0, 0)"
 * "rgb 1.0 0 0" or "rgb (1, 0, 0)"
 * "rgba (255, 0, 0, 1)" or "rgba 255, 0, 0, 1"
 * "rgba (1.0, 0, 0, 1)" or "rgba 1.0, 0, 0, 1"
 * "hsl(0, 100%, 50%)" or "hsl 0 100% 50%"
 * "hsla(0, 100%, 50%, 1)" or "hsla 0 100% 50%, 1"
 * "hsv(0, 100%, 100%)" or "hsv 0 100% 100%"
 * "cmyk(0, 20, 0, 0)" or "cmyk 0 20 0 0"
 * ```
 */
function inputToRGB(color) {
    let rgb = { r: 0, g: 0, b: 0 };
    let a = 1;
    let s = null;
    let v = null;
    let l = null;
    let ok = false;
    let format = false;
    if (typeof color === 'string') {
        color = stringInputToObject(color);
    }
    if (typeof color === 'object') {
        if (isValidCSSUnit(color.r) && isValidCSSUnit(color.g) && isValidCSSUnit(color.b)) {
            rgb = rgbToRgb(color.r, color.g, color.b);
            ok = true;
            format = String(color.r).substr(-1) === '%' ? 'prgb' : 'rgb';
        }
        else if (isValidCSSUnit(color.h) && isValidCSSUnit(color.s) && isValidCSSUnit(color.v)) {
            s = convertToPercentage(color.s);
            v = convertToPercentage(color.v);
            rgb = hsvToRgb(color.h, s, v);
            ok = true;
            format = 'hsv';
        }
        else if (isValidCSSUnit(color.h) && isValidCSSUnit(color.s) && isValidCSSUnit(color.l)) {
            s = convertToPercentage(color.s);
            l = convertToPercentage(color.l);
            rgb = hslToRgb(color.h, s, l);
            ok = true;
            format = 'hsl';
        }
        else if (isValidCSSUnit(color.c) &&
            isValidCSSUnit(color.m) &&
            isValidCSSUnit(color.y) &&
            isValidCSSUnit(color.k)) {
            rgb = cmykToRgb(color.c, color.m, color.y, color.k);
            ok = true;
            format = 'cmyk';
        }
        if (Object.prototype.hasOwnProperty.call(color, 'a')) {
            a = color.a;
        }
    }
    a = boundAlpha(a);
    return {
        ok,
        format: color.format || format,
        r: Math.min(255, Math.max(rgb.r, 0)),
        g: Math.min(255, Math.max(rgb.g, 0)),
        b: Math.min(255, Math.max(rgb.b, 0)),
        a,
    };
}
// <http://www.w3.org/TR/css3-values/#integers>
const CSS_INTEGER = '[-\\+]?\\d+%?';
// <http://www.w3.org/TR/css3-values/#number-value>
const CSS_NUMBER = '[-\\+]?\\d*\\.\\d+%?';
// Allow positive/negative integer/number.  Don't capture the either/or, just the entire outcome.
const CSS_UNIT = '(?:' + CSS_NUMBER + ')|(?:' + CSS_INTEGER + ')';
// Actual matching.
// Parentheses and commas are optional, but not required.
// Whitespace can take the place of commas or opening paren
// eslint-disable-next-line prettier/prettier
const PERMISSIVE_MATCH3 = '[\\s|\\(]+(' + CSS_UNIT + ')[,|\\s]+(' + CSS_UNIT + ')[,|\\s]+(' + CSS_UNIT + ')\\s*\\)?';
const PERMISSIVE_MATCH4 = 
// eslint-disable-next-line prettier/prettier
'[\\s|\\(]+(' + CSS_UNIT + ')[,|\\s]+(' + CSS_UNIT + ')[,|\\s]+(' + CSS_UNIT + ')[,|\\s]+(' + CSS_UNIT + ')\\s*\\)?';
const matchers = {
    CSS_UNIT: new RegExp(CSS_UNIT),
    rgb: new RegExp('rgb' + PERMISSIVE_MATCH3),
    rgba: new RegExp('rgba' + PERMISSIVE_MATCH4),
    hsl: new RegExp('hsl' + PERMISSIVE_MATCH3),
    hsla: new RegExp('hsla' + PERMISSIVE_MATCH4),
    hsv: new RegExp('hsv' + PERMISSIVE_MATCH3),
    hsva: new RegExp('hsva' + PERMISSIVE_MATCH4),
    cmyk: new RegExp('cmyk' + PERMISSIVE_MATCH4),
    hex3: /^#?([0-9a-fA-F]{1})([0-9a-fA-F]{1})([0-9a-fA-F]{1})$/,
    hex6: /^#?([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})$/,
    hex4: /^#?([0-9a-fA-F]{1})([0-9a-fA-F]{1})([0-9a-fA-F]{1})([0-9a-fA-F]{1})$/,
    hex8: /^#?([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})$/,
};
/**
 * Permissive string parsing.  Take in a number of formats, and output an object
 * based on detected format.  Returns `{ r, g, b }` or `{ h, s, l }` or `{ h, s, v}` or `{c, m, y, k}` or `{c, m, y, k, a}`
 */
function stringInputToObject(color) {
    color = color.trim().toLowerCase();
    if (color.length === 0) {
        return false;
    }
    let named = false;
    if (names[color]) {
        color = names[color];
        named = true;
    }
    else if (color === 'transparent') {
        return { r: 0, g: 0, b: 0, a: 0, format: 'name' };
    }
    // Try to match string input using regular expressions.
    // Keep most of the number bounding out of this function - don't worry about [0,1] or [0,100] or [0,360]
    // Just return an object and let the conversion functions handle that.
    // This way the result will be the same whether the tinycolor is initialized with string or object.
    let match = matchers.rgb.exec(color);
    if (match) {
        return { r: match[1], g: match[2], b: match[3] };
    }
    match = matchers.rgba.exec(color);
    if (match) {
        return { r: match[1], g: match[2], b: match[3], a: match[4] };
    }
    match = matchers.hsl.exec(color);
    if (match) {
        return { h: match[1], s: match[2], l: match[3] };
    }
    match = matchers.hsla.exec(color);
    if (match) {
        return { h: match[1], s: match[2], l: match[3], a: match[4] };
    }
    match = matchers.hsv.exec(color);
    if (match) {
        return { h: match[1], s: match[2], v: match[3] };
    }
    match = matchers.hsva.exec(color);
    if (match) {
        return { h: match[1], s: match[2], v: match[3], a: match[4] };
    }
    match = matchers.cmyk.exec(color);
    if (match) {
        return {
            c: match[1],
            m: match[2],
            y: match[3],
            k: match[4],
        };
    }
    match = matchers.hex8.exec(color);
    if (match) {
        return {
            r: parseIntFromHex(match[1]),
            g: parseIntFromHex(match[2]),
            b: parseIntFromHex(match[3]),
            a: convertHexToDecimal(match[4]),
            format: named ? 'name' : 'hex8',
        };
    }
    match = matchers.hex6.exec(color);
    if (match) {
        return {
            r: parseIntFromHex(match[1]),
            g: parseIntFromHex(match[2]),
            b: parseIntFromHex(match[3]),
            format: named ? 'name' : 'hex',
        };
    }
    match = matchers.hex4.exec(color);
    if (match) {
        return {
            r: parseIntFromHex(match[1] + match[1]),
            g: parseIntFromHex(match[2] + match[2]),
            b: parseIntFromHex(match[3] + match[3]),
            a: convertHexToDecimal(match[4] + match[4]),
            format: named ? 'name' : 'hex8',
        };
    }
    match = matchers.hex3.exec(color);
    if (match) {
        return {
            r: parseIntFromHex(match[1] + match[1]),
            g: parseIntFromHex(match[2] + match[2]),
            b: parseIntFromHex(match[3] + match[3]),
            format: named ? 'name' : 'hex',
        };
    }
    return false;
}
/**
 * Check to see if it looks like a CSS unit
 * (see `matchers` above for definition).
 */
function isValidCSSUnit(color) {
    if (typeof color === 'number') {
        return !Number.isNaN(color);
    }
    return matchers.CSS_UNIT.test(color);
}

class TinyColor {
    constructor(color = '', opts = {}) {
        // If input is already a tinycolor, return itself
        if (color instanceof TinyColor) {
            // eslint-disable-next-line no-constructor-return
            return color;
        }
        if (typeof color === 'number') {
            color = numberInputToObject(color);
        }
        this.originalInput = color;
        const rgb = inputToRGB(color);
        this.originalInput = color;
        this.r = rgb.r;
        this.g = rgb.g;
        this.b = rgb.b;
        this.a = rgb.a;
        this.roundA = Math.round(100 * this.a) / 100;
        this.format = opts.format ?? rgb.format;
        this.gradientType = opts.gradientType;
        // Don't let the range of [0,255] come back in [0,1].
        // Potentially lose a little bit of precision here, but will fix issues where
        // .5 gets interpreted as half of the total, instead of half of 1
        // If it was supposed to be 128, this was already taken care of by `inputToRgb`
        if (this.r < 1) {
            this.r = Math.round(this.r);
        }
        if (this.g < 1) {
            this.g = Math.round(this.g);
        }
        if (this.b < 1) {
            this.b = Math.round(this.b);
        }
        this.isValid = rgb.ok;
    }
    isDark() {
        return this.getBrightness() < 128;
    }
    isLight() {
        return !this.isDark();
    }
    /**
     * Returns the perceived brightness of the color, from 0-255.
     */
    getBrightness() {
        // http://www.w3.org/TR/AERT#color-contrast
        const rgb = this.toRgb();
        return (rgb.r * 299 + rgb.g * 587 + rgb.b * 114) / 1000;
    }
    /**
     * Returns the perceived luminance of a color, from 0-1.
     */
    getLuminance() {
        // http://www.w3.org/TR/2008/REC-WCAG20-20081211/#relativeluminancedef
        const rgb = this.toRgb();
        let R;
        let G;
        let B;
        const RsRGB = rgb.r / 255;
        const GsRGB = rgb.g / 255;
        const BsRGB = rgb.b / 255;
        if (RsRGB <= 0.03928) {
            R = RsRGB / 12.92;
        }
        else {
            // eslint-disable-next-line prefer-exponentiation-operator
            R = Math.pow((RsRGB + 0.055) / 1.055, 2.4);
        }
        if (GsRGB <= 0.03928) {
            G = GsRGB / 12.92;
        }
        else {
            // eslint-disable-next-line prefer-exponentiation-operator
            G = Math.pow((GsRGB + 0.055) / 1.055, 2.4);
        }
        if (BsRGB <= 0.03928) {
            B = BsRGB / 12.92;
        }
        else {
            // eslint-disable-next-line prefer-exponentiation-operator
            B = Math.pow((BsRGB + 0.055) / 1.055, 2.4);
        }
        return 0.2126 * R + 0.7152 * G + 0.0722 * B;
    }
    /**
     * Returns the alpha value of a color, from 0-1.
     */
    getAlpha() {
        return this.a;
    }
    /**
     * Sets the alpha value on the current color.
     *
     * @param alpha - The new alpha value. The accepted range is 0-1.
     */
    setAlpha(alpha) {
        this.a = boundAlpha(alpha);
        this.roundA = Math.round(100 * this.a) / 100;
        return this;
    }
    /**
     * Returns whether the color is monochrome.
     */
    isMonochrome() {
        const { s } = this.toHsl();
        return s === 0;
    }
    /**
     * Returns the object as a HSVA object.
     */
    toHsv() {
        const hsv = rgbToHsv(this.r, this.g, this.b);
        return { h: hsv.h * 360, s: hsv.s, v: hsv.v, a: this.a };
    }
    /**
     * Returns the hsva values interpolated into a string with the following format:
     * "hsva(xxx, xxx, xxx, xx)".
     */
    toHsvString() {
        const hsv = rgbToHsv(this.r, this.g, this.b);
        const h = Math.round(hsv.h * 360);
        const s = Math.round(hsv.s * 100);
        const v = Math.round(hsv.v * 100);
        return this.a === 1 ? `hsv(${h}, ${s}%, ${v}%)` : `hsva(${h}, ${s}%, ${v}%, ${this.roundA})`;
    }
    /**
     * Returns the object as a HSLA object.
     */
    toHsl() {
        const hsl = rgbToHsl(this.r, this.g, this.b);
        return { h: hsl.h * 360, s: hsl.s, l: hsl.l, a: this.a };
    }
    /**
     * Returns the hsla values interpolated into a string with the following format:
     * "hsla(xxx, xxx, xxx, xx)".
     */
    toHslString() {
        const hsl = rgbToHsl(this.r, this.g, this.b);
        const h = Math.round(hsl.h * 360);
        const s = Math.round(hsl.s * 100);
        const l = Math.round(hsl.l * 100);
        return this.a === 1 ? `hsl(${h}, ${s}%, ${l}%)` : `hsla(${h}, ${s}%, ${l}%, ${this.roundA})`;
    }
    /**
     * Returns the hex value of the color.
     * @param allow3Char will shorten hex value to 3 char if possible
     */
    toHex(allow3Char = false) {
        return rgbToHex(this.r, this.g, this.b, allow3Char);
    }
    /**
     * Returns the hex value of the color -with a # prefixed.
     * @param allow3Char will shorten hex value to 3 char if possible
     */
    toHexString(allow3Char = false) {
        return '#' + this.toHex(allow3Char);
    }
    /**
     * Returns the hex 8 value of the color.
     * @param allow4Char will shorten hex value to 4 char if possible
     */
    toHex8(allow4Char = false) {
        return rgbaToHex(this.r, this.g, this.b, this.a, allow4Char);
    }
    /**
     * Returns the hex 8 value of the color -with a # prefixed.
     * @param allow4Char will shorten hex value to 4 char if possible
     */
    toHex8String(allow4Char = false) {
        return '#' + this.toHex8(allow4Char);
    }
    /**
     * Returns the shorter hex value of the color depends on its alpha -with a # prefixed.
     * @param allowShortChar will shorten hex value to 3 or 4 char if possible
     */
    toHexShortString(allowShortChar = false) {
        return this.a === 1 ? this.toHexString(allowShortChar) : this.toHex8String(allowShortChar);
    }
    /**
     * Returns the object as a RGBA object.
     */
    toRgb() {
        return {
            r: Math.round(this.r),
            g: Math.round(this.g),
            b: Math.round(this.b),
            a: this.a,
        };
    }
    /**
     * Returns the RGBA values interpolated into a string with the following format:
     * "RGBA(xxx, xxx, xxx, xx)".
     */
    toRgbString() {
        const r = Math.round(this.r);
        const g = Math.round(this.g);
        const b = Math.round(this.b);
        return this.a === 1 ? `rgb(${r}, ${g}, ${b})` : `rgba(${r}, ${g}, ${b}, ${this.roundA})`;
    }
    /**
     * Returns the object as a RGBA object.
     */
    toPercentageRgb() {
        const fmt = (x) => `${Math.round(bound01(x, 255) * 100)}%`;
        return {
            r: fmt(this.r),
            g: fmt(this.g),
            b: fmt(this.b),
            a: this.a,
        };
    }
    /**
     * Returns the RGBA relative values interpolated into a string
     */
    toPercentageRgbString() {
        const rnd = (x) => Math.round(bound01(x, 255) * 100);
        return this.a === 1
            ? `rgb(${rnd(this.r)}%, ${rnd(this.g)}%, ${rnd(this.b)}%)`
            : `rgba(${rnd(this.r)}%, ${rnd(this.g)}%, ${rnd(this.b)}%, ${this.roundA})`;
    }
    toCmyk() {
        return {
            ...rgbToCmyk(this.r, this.g, this.b),
        };
    }
    toCmykString() {
        const { c, m, y, k } = rgbToCmyk(this.r, this.g, this.b);
        return `cmyk(${c}, ${m}, ${y}, ${k})`;
    }
    /**
     * The 'real' name of the color -if there is one.
     */
    toName() {
        if (this.a === 0) {
            return 'transparent';
        }
        if (this.a < 1) {
            return false;
        }
        const hex = '#' + rgbToHex(this.r, this.g, this.b, false);
        for (const [key, value] of Object.entries(names)) {
            if (hex === value) {
                return key;
            }
        }
        return false;
    }
    toString(format) {
        const formatSet = Boolean(format);
        format = format ?? this.format;
        let formattedString = false;
        const hasAlpha = this.a < 1 && this.a >= 0;
        const needsAlphaFormat = !formatSet && hasAlpha && (format.startsWith('hex') || format === 'name');
        if (needsAlphaFormat) {
            // Special case for "transparent", all other non-alpha formats
            // will return rgba when there is transparency.
            if (format === 'name' && this.a === 0) {
                return this.toName();
            }
            return this.toRgbString();
        }
        if (format === 'rgb') {
            formattedString = this.toRgbString();
        }
        if (format === 'prgb') {
            formattedString = this.toPercentageRgbString();
        }
        if (format === 'hex' || format === 'hex6') {
            formattedString = this.toHexString();
        }
        if (format === 'hex3') {
            formattedString = this.toHexString(true);
        }
        if (format === 'hex4') {
            formattedString = this.toHex8String(true);
        }
        if (format === 'hex8') {
            formattedString = this.toHex8String();
        }
        if (format === 'name') {
            formattedString = this.toName();
        }
        if (format === 'hsl') {
            formattedString = this.toHslString();
        }
        if (format === 'hsv') {
            formattedString = this.toHsvString();
        }
        if (format === 'cmyk') {
            formattedString = this.toCmykString();
        }
        return formattedString || this.toHexString();
    }
    toNumber() {
        return (Math.round(this.r) << 16) + (Math.round(this.g) << 8) + Math.round(this.b);
    }
    clone() {
        return new TinyColor(this.toString());
    }
    /**
     * Lighten the color a given amount. Providing 100 will always return white.
     * @param amount - valid between 1-100
     */
    lighten(amount = 10) {
        const hsl = this.toHsl();
        hsl.l += amount / 100;
        hsl.l = clamp01(hsl.l);
        return new TinyColor(hsl);
    }
    /**
     * Brighten the color a given amount, from 0 to 100.
     * @param amount - valid between 1-100
     */
    brighten(amount = 10) {
        const rgb = this.toRgb();
        rgb.r = Math.max(0, Math.min(255, rgb.r - Math.round(255 * -(amount / 100))));
        rgb.g = Math.max(0, Math.min(255, rgb.g - Math.round(255 * -(amount / 100))));
        rgb.b = Math.max(0, Math.min(255, rgb.b - Math.round(255 * -(amount / 100))));
        return new TinyColor(rgb);
    }
    /**
     * Darken the color a given amount, from 0 to 100.
     * Providing 100 will always return black.
     * @param amount - valid between 1-100
     */
    darken(amount = 10) {
        const hsl = this.toHsl();
        hsl.l -= amount / 100;
        hsl.l = clamp01(hsl.l);
        return new TinyColor(hsl);
    }
    /**
     * Mix the color with pure white, from 0 to 100.
     * Providing 0 will do nothing, providing 100 will always return white.
     * @param amount - valid between 1-100
     */
    tint(amount = 10) {
        return this.mix('white', amount);
    }
    /**
     * Mix the color with pure black, from 0 to 100.
     * Providing 0 will do nothing, providing 100 will always return black.
     * @param amount - valid between 1-100
     */
    shade(amount = 10) {
        return this.mix('black', amount);
    }
    /**
     * Desaturate the color a given amount, from 0 to 100.
     * Providing 100 will is the same as calling greyscale
     * @param amount - valid between 1-100
     */
    desaturate(amount = 10) {
        const hsl = this.toHsl();
        hsl.s -= amount / 100;
        hsl.s = clamp01(hsl.s);
        return new TinyColor(hsl);
    }
    /**
     * Saturate the color a given amount, from 0 to 100.
     * @param amount - valid between 1-100
     */
    saturate(amount = 10) {
        const hsl = this.toHsl();
        hsl.s += amount / 100;
        hsl.s = clamp01(hsl.s);
        return new TinyColor(hsl);
    }
    /**
     * Completely desaturates a color into greyscale.
     * Same as calling `desaturate(100)`
     */
    greyscale() {
        return this.desaturate(100);
    }
    /**
     * Spin takes a positive or negative amount within [-360, 360] indicating the change of hue.
     * Values outside of this range will be wrapped into this range.
     */
    spin(amount) {
        const hsl = this.toHsl();
        const hue = (hsl.h + amount) % 360;
        hsl.h = hue < 0 ? 360 + hue : hue;
        return new TinyColor(hsl);
    }
    /**
     * Mix the current color a given amount with another color, from 0 to 100.
     * 0 means no mixing (return current color).
     */
    mix(color, amount = 50) {
        const rgb1 = this.toRgb();
        const rgb2 = new TinyColor(color).toRgb();
        const p = amount / 100;
        const rgba = {
            r: (rgb2.r - rgb1.r) * p + rgb1.r,
            g: (rgb2.g - rgb1.g) * p + rgb1.g,
            b: (rgb2.b - rgb1.b) * p + rgb1.b,
            a: (rgb2.a - rgb1.a) * p + rgb1.a,
        };
        return new TinyColor(rgba);
    }
    analogous(results = 6, slices = 30) {
        const hsl = this.toHsl();
        const part = 360 / slices;
        const ret = [this];
        for (hsl.h = (hsl.h - ((part * results) >> 1) + 720) % 360; --results;) {
            hsl.h = (hsl.h + part) % 360;
            ret.push(new TinyColor(hsl));
        }
        return ret;
    }
    /**
     * taken from https://github.com/infusion/jQuery-xcolor/blob/master/jquery.xcolor.js
     */
    complement() {
        const hsl = this.toHsl();
        hsl.h = (hsl.h + 180) % 360;
        return new TinyColor(hsl);
    }
    monochromatic(results = 6) {
        const hsv = this.toHsv();
        const { h } = hsv;
        const { s } = hsv;
        let { v } = hsv;
        const res = [];
        const modification = 1 / results;
        while (results--) {
            res.push(new TinyColor({ h, s, v }));
            v = (v + modification) % 1;
        }
        return res;
    }
    splitcomplement() {
        const hsl = this.toHsl();
        const { h } = hsl;
        return [
            this,
            new TinyColor({ h: (h + 72) % 360, s: hsl.s, l: hsl.l }),
            new TinyColor({ h: (h + 216) % 360, s: hsl.s, l: hsl.l }),
        ];
    }
    /**
     * Compute how the color would appear on a background
     */
    onBackground(background) {
        const fg = this.toRgb();
        const bg = new TinyColor(background).toRgb();
        const alpha = fg.a + bg.a * (1 - fg.a);
        return new TinyColor({
            r: (fg.r * fg.a + bg.r * bg.a * (1 - fg.a)) / alpha,
            g: (fg.g * fg.a + bg.g * bg.a * (1 - fg.a)) / alpha,
            b: (fg.b * fg.a + bg.b * bg.a * (1 - fg.a)) / alpha,
            a: alpha,
        });
    }
    /**
     * Alias for `polyad(3)`
     */
    triad() {
        return this.polyad(3);
    }
    /**
     * Alias for `polyad(4)`
     */
    tetrad() {
        return this.polyad(4);
    }
    /**
     * Get polyad colors, like (for 1, 2, 3, 4, 5, 6, 7, 8, etc...)
     * monad, dyad, triad, tetrad, pentad, hexad, heptad, octad, etc...
     */
    polyad(n) {
        const hsl = this.toHsl();
        const { h } = hsl;
        const result = [this];
        const increment = 360 / n;
        for (let i = 1; i < n; i++) {
            result.push(new TinyColor({ h: (h + i * increment) % 360, s: hsl.s, l: hsl.l }));
        }
        return result;
    }
    /**
     * compare color vs current color
     */
    equals(color) {
        const comparedColor = new TinyColor(color);
        /**
         * RGB and CMYK do not have the same color gamut, so a CMYK conversion will never be 100%.
         * This means we need to compare CMYK to CMYK to ensure accuracy of the equals function.
         */
        if (this.format === 'cmyk' || comparedColor.format === 'cmyk') {
            return this.toCmykString() === comparedColor.toCmykString();
        }
        return this.toRgbString() === comparedColor.toRgbString();
    }
}

const colorToHex = (baseColor) => {
  const color = new TinyColor(baseColor);
  return color.toHexString();
};

const Stepper$2 = ({
  labelPosition,
  steps = [],
  stepStyle,
  activeColor,
  inactiveColor,
  style,
  className,
  classNames = []
}) => {
  const {
    connectors: { connect }
  } = qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedNode();
  const { resolver } = qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedEditor(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.selectResolver);
  const [currentStep, setCurrentStep] = qodly_e1919439b85b40a0017f__loadShare__react__loadShare__.useState(0);
  if (activeColor === inactiveColor) {
    inactiveColor = colorToHex(inactiveColor) + "70";
  }
  const activeCol = (index) => currentStep === index ? activeColor : inactiveColor;
  const isFinalStep = (index) => index === steps.length - 1;
  const goToNextStep = () => {
    if (currentStep < steps.length - 1) {
      setCurrentStep(currentStep + 1);
    }
  };
  const goToPreviousStep = () => {
    if (currentStep > 0) {
      setCurrentStep(currentStep - 1);
    }
  };
  const getLabelPositionClasses = () => {
    switch (labelPosition) {
      case "left":
        return { labelPos: "flex-row-reverse", linePos: "items-center" };
      case "right":
        return { labelPos: "flex-row", linePos: "items-center" };
      case "top":
        return { labelPos: "flex-col-reverse", linePos: "items-end" };
      case "bottom":
        return { labelPos: "flex-col", linePos: "items-start" };
      default:
        return { labelPos: "", linePos: "" };
    }
  };
  const { labelPos, linePos } = getLabelPositionClasses();
  return /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { ref: connect, style, className: cn(className, classNames), children: steps.length > 0 ? /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.Fragment, { children: [
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "navigation my-3 flex w-full", children: steps.map((step, index) => /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(
      "div",
      {
        className: `steptitle-Container flex items-center ${isFinalStep(index) ? "justify-end w-fit" : "justify-between w-full"}`,
        children: [
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: `h-full px-3 flex ${labelPos} items-center justify-center`, children: [
            /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "div",
              {
                className: "nav-circle mx-1 rounded-full cursor-pointer font-semibold",
                onClick: () => setCurrentStep(index),
                style: {
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  backgroundColor: activeCol(index),
                  color: currentStep === index && new TinyColor(activeColor).isDark() ? "white" : "black"
                },
                children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("span", { className: "nav-title flex w-10 h-10 px-4 py-2 items-center justify-center", children: stepStyle === "text" ? index + 1 : /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__.Element, { id: `icon-${index}`, is: resolver.Icon, canvas: true }) })
              }
            ),
            step.title && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "span",
              {
                className: "label max-w-8 mx-1 font-semibold text-center",
                style: {
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : activeCol(index)
                },
                children: step.title
              }
            )
          ] }),
          !isFinalStep(index) && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: `flex w-full h-6 ${linePos}`, children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
            "div",
            {
              className: "separator-line w-full h-0.5",
              style: {
                backgroundColor: colorToHex(activeCol(index + 1)) === "#ffffff" ? "#000000" : activeCol(index + 1)
              }
            }
          ) })
        ]
      },
      index
    )) }),
    steps.map((_, index) => /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(
      "div",
      {
        className: "content flex items-center justify-center w-full",
        style: { display: currentStep === index ? "block" : "none" },
        children: [
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__.Element, { id: `step-${index}`, is: resolver.StyleBox, canvas: true }),
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "buttons flex justify-around", children: [
            currentStep > 0 && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "button",
              {
                className: "back-btn w-24 h-8 text-white font-semibold",
                style: {
                  backgroundColor: activeCol(index),
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : "white"
                },
                onClick: goToPreviousStep,
                children: "Back"
              }
            ),
            currentStep < steps.length - 1 && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "button",
              {
                className: "next-btn w-24 h-8 text-white font-semibold",
                style: {
                  backgroundColor: activeCol(index),
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : "white"
                },
                onClick: goToNextStep,
                children: "Next"
              }
            )
          ] })
        ]
      },
      index
    ))
  ] }) : /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "no-steps flex h-24 w-full flex-col items-center justify-center rounded-lg border bg-purple-400 py-4 text-white", children: [
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(BsFillInfoCircleFill, { className: "mb-1 h-8 w-8" }),
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("p", { children: "Please create some steps" })
  ] }) });
};

const Stepper$1 = ({
  linear,
  labelPosition,
  steps = [],
  stepStyle,
  activeColor,
  inactiveColor,
  style,
  className,
  classNames = []
}) => {
  const { connect } = qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useRenderer();
  const { resolver } = qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedEditor(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.selectResolver);
  const [currentStep, setCurrentStep] = qodly_e1919439b85b40a0017f__loadShare__react__loadShare__.useState(0);
  const activeCol = (index) => currentStep === index ? activeColor : inactiveColor;
  const isFinalStep = (index) => index === steps.length - 1;
  const goToNextStep = () => {
    if (currentStep < steps.length - 1) {
      setCurrentStep(currentStep + 1);
    }
  };
  const goToPreviousStep = () => {
    if (currentStep > 0) {
      setCurrentStep(currentStep - 1);
    }
  };
  let labelPos;
  let linePos;
  switch (labelPosition) {
    case "left":
      labelPos = "flex-row-reverse";
      linePos = "items-center";
      break;
    case "right":
      labelPos = "flex-row";
      linePos = "items-center";
      break;
    case "top":
      labelPos = "flex-col-reverse";
      linePos = "items-end";
      break;
    case "bottom":
      labelPos = "flex-col";
      linePos = "items-start";
      break;
  }
  return /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { ref: connect, style, className: cn(className, classNames), children: steps.length > 0 ? /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.Fragment, { children: [
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "navigation my-3 flex w-full", children: steps.map((step, index) => /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(
      "div",
      {
        className: `steptitle-Container flex items-center ${isFinalStep(index) ? "justify-end w-fit" : "justify-between w-full"}`,
        children: [
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: `h-full px-3 flex ${labelPos} items-center justify-center`, children: [
            /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "div",
              {
                className: "nav-circle mx-1 rounded-full cursor-pointer font-semibold",
                onClick: linear ? () => setCurrentStep(0) : () => setCurrentStep(index),
                style: {
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  backgroundColor: activeCol(index),
                  color: currentStep === index && new TinyColor(activeColor).isDark() ? "white" : "black"
                },
                children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("span", { className: "nav-title flex w-10 h-10 px-4 py-2 items-center justify-center", children: stepStyle === "text" ? index + 1 : /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__.Element, { id: `icon-${index}`, is: resolver.Icon, canvas: true }) })
              }
            ),
            step.title && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "span",
              {
                className: "label max-w-8 mx-1 font-semibold text-center",
                style: {
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : activeCol(index)
                },
                children: step.title
              }
            )
          ] }),
          !isFinalStep(index) && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: `flex w-full h-6 ${linePos}`, children: /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
            "div",
            {
              className: "separator-line w-full h-0.5",
              style: {
                backgroundColor: colorToHex(activeCol(index + 1)) === "#ffffff" ? "#000000" : activeCol(index + 1)
              }
            }
          ) })
        ]
      },
      index
    )) }),
    steps.map((_, index) => /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs(
      "div",
      {
        className: "content flex items-center justify-center w-full",
        style: { display: currentStep === index ? "block" : "none" },
        children: [
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_craftjs_mf_2_core__loadShare__.Element, { id: `step-${index}`, is: resolver.StyleBox, canvas: true }),
          /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "buttons flex justify-around", children: [
            currentStep > 0 && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "button",
              {
                className: "back-btn w-24 h-8 text-white font-semibold",
                style: {
                  backgroundColor: activeCol(index),
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : "white"
                },
                onClick: goToPreviousStep,
                children: "Back"
              }
            ),
            currentStep < steps.length - 1 && /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
              "button",
              {
                className: "next-btn w-24 h-8 text-white font-semibold",
                style: {
                  backgroundColor: activeCol(index),
                  border: colorToHex(activeCol(index)) === "#ffffff" ? "2px solid #000000" : "",
                  color: colorToHex(activeCol(index)) === "#ffffff" ? "#000000" : "white"
                },
                onClick: goToNextStep,
                children: "Next"
              }
            )
          ] })
        ]
      },
      index
    ))
  ] }) : /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "no-steps flex h-24 w-full flex-col items-center justify-center rounded-lg border-2 border-red-700 py-4 text-red-700", children: [
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(BsFillInfoCircleFill, { className: "mb-1 h-7 w-7 text-red-700" }),
    /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("p", { className: "font-semibold", children: "No Steps" })
  ] }) });
};

const Stepper = (props) => {
  const { enabled } = qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedEditor((state) => ({
    enabled: state.options.enabled
  }));
  return enabled ? /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(Stepper$2, { ...props }) : /* @__PURE__ */ qodly_e1919439b85b40a0017f__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(Stepper$1, { ...props });
};
Stepper.craft = config.craft;
Stepper.info = config.info;
Stepper.defaultProps = config.defaultProps;

const components = {
  // components
  Stepper
};

const index = /*#__PURE__*/Object.freeze(/*#__PURE__*/Object.defineProperty({
  __proto__: null,
  default: components
}, Symbol.toStringTag, { value: 'Module' }));

export { components as c, index as i, qodly_e1919439b85b40a0017f__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ as q };
