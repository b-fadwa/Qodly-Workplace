import { q as qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ } from './qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__-CvVebiUZ.js';
import { q as qodly_ec160b83147d6cc638ea__mf_v__runtimeInit__mf_v__, i as index_cjs } from './qodly_ec160b83147d6cc638ea__mf_v__runtimeInit__mf_v__-M8kmgJ7d.js';
import { R as React, q as qodly_ec160b83147d6cc638ea__loadShare__react__loadShare__ } from './qodly_ec160b83147d6cc638ea__loadShare__react__loadShare__-Bm1UiiYF.js';
import { g as getDefaultExportFromCjs } from './_commonjsHelpers-BFTU3MAI.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_ec160b83147d6cc638ea__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("@ws-ui/webform-editor", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^1.5.15"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ = exportModule;

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
function RiOrganizationChart (props) {
  return GenIcon({"attr":{"viewBox":"0 0 24 24"},"child":[{"tag":"path","attr":{"d":"M15 3C15.5523 3 16 3.44772 16 4V8C16 8.55228 15.5523 9 15 9H13V11H17C17.5523 11 18 11.4477 18 12V15H20C20.5523 15 21 15.4477 21 16V20C21 20.5523 20.5523 21 20 21H14C13.4477 21 13 20.5523 13 20V16C13 15.4477 13.4477 15 14 15H16V13H8V15H10C10.5523 15 11 15.4477 11 16V20C11 20.5523 10.5523 21 10 21H4C3.44772 21 3 20.5523 3 20V16C3 15.4477 3.44772 15 4 15H6V12C6 11.4477 6.44772 11 7 11H11V9H9C8.44772 9 8 8.55228 8 8V4C8 3.44772 8.44772 3 9 3H15ZM9 17H5V19H9V17ZM19 17H15V19H19V17ZM14 5H10V7H14V5Z"}}]})(props);
}

const commonSettings = [
  {
    key: "name",
    label: "Name",
    type: qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.TEXT_FIELD,
    defaultValue: "Qodly"
  }
];
const Settings = [
  {
    key: "properties",
    label: "Properties",
    type: qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.GROUP,
    components: commonSettings
  },
  ...qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.DEFAULT_SETTINGS
];
const BasicSettings = [
  ...commonSettings,
  ...qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.load(qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.BASIC_SETTINGS).filter("style.overflow")
];

const config = {
  craft: {
    displayName: "OrganigramChart",
    kind: qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.EComponentKind.BASIC,
    props: {
      name: "",
      classNames: [],
      events: []
    },
    related: {
      settings: qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.Settings(Settings, BasicSettings)
    }
  },
  info: {
    settings: Settings,
    displayName: "OrganigramChart",
    exposed: true,
    icon: RiOrganizationChart,
    events: [
      {
        label: "On Click",
        value: "onclick"
      },
      {
        label: "On Blur",
        value: "onblur"
      },
      {
        label: "On Focus",
        value: "onfocus"
      },
      {
        label: "On MouseEnter",
        value: "onmouseenter"
      },
      {
        label: "On MouseLeave",
        value: "onmouseleave"
      },
      {
        label: "On KeyDown",
        value: "onkeydown"
      },
      {
        label: "On KeyUp",
        value: "onkeyup"
      }
    ],
    datasources: {
      accept: ["string"]
    }
  },
  defaultProps: {
    name: "Qodly"
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

const OrganigramChart$2 = ({ name, style, className, classNames = [] }) => {
  const {
    connectors: { connect }
  } = qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedNode();
  return /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("span", { ref: connect, style, className: cn(className, classNames), children: [
    "Hello ",
    name,
    "!"
  ] });
};

const OrgNode = ({ node }) => {
  return /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "org-node flex flex-col items-center", children: [
    /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "org-parent bg-red-500 text-white px-4 py-2 rounded shadow-md", children: node?.label }),
    node?.children?.length > 0 && /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "org-child flex flex-row justify-center gap-4 mt-4", children: node.children.map((child, index) => /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { className: "flex flex-col items-center", children: [
      /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "h-4 w-1 bg-gray-400" }),
      /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(OrgNode, { node: child })
    ] }, index)) })
  ] });
};

const OrganigramChart$1 = ({ style, className, classNames = [] }) => {
  const { connect } = qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useRenderer();
  const [value, setValue] = qodly_ec160b83147d6cc638ea__loadShare__react__loadShare__.useState({});
  const {
    sources: { datasource: ds }
  } = qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useSources();
  qodly_ec160b83147d6cc638ea__loadShare__react__loadShare__.useEffect(() => {
    if (!ds) return;
    const listener = async () => {
      const v = await ds.getValue();
      setValue(v);
    };
    listener();
    ds.addListener("changed", listener);
    return () => {
      ds.removeListener("changed", listener);
    };
  }, [ds]);
  return /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { ref: connect, style, className: cn(className, classNames), children: /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(OrgNode, { node: value }) });
};

const OrganigramChart = (props) => {
  const { enabled } = qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedEditor((state) => ({
    enabled: state.options.enabled
  }));
  return enabled ? /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(OrganigramChart$2, { ...props }) : /* @__PURE__ */ qodly_ec160b83147d6cc638ea__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(OrganigramChart$1, { ...props });
};
OrganigramChart.craft = config.craft;
OrganigramChart.info = config.info;
OrganigramChart.defaultProps = config.defaultProps;

const components = {
  // components
  OrganigramChart
};

const index = /*#__PURE__*/Object.freeze(/*#__PURE__*/Object.defineProperty({
  __proto__: null,
  default: components
}, Symbol.toStringTag, { value: 'Module' }));

export { components as c, index as i, qodly_ec160b83147d6cc638ea__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ as q };
