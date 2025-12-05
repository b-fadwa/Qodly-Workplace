import { q as qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__ } from './qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__-DDrjuhme.js';
import { q as qodly_56415fbfa795854d3f81__mf_v__runtimeInit__mf_v__, a as index_cjs } from './qodly_56415fbfa795854d3f81__mf_v__runtimeInit__mf_v__-Dh63t4w-.js';
import { q as qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__ } from './qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__-CR0q2MXJ.js';
import { V } from './cloneDeep-rp9aBEpN.js';
import { F, q as qodly_56415fbfa795854d3f81__loadShare__react__loadShare__ } from './qodly_56415fbfa795854d3f81__loadShare__react__loadShare__-Dz9fwdjx.js';
import { g as getDefaultExportFromCjs } from './_commonjsHelpers-BFTU3MAI.js';

// dev uses dynamic import to separate chunks
    
    const {loadShare} = index_cjs;
    const {initPromise} = qodly_56415fbfa795854d3f81__mf_v__runtimeInit__mf_v__;
    const res = initPromise.then(_ => loadShare("@ws-ui/webform-editor", {
    customShareInfo: {shareConfig:{
      singleton: true,
      strictVersion: false,
      requiredVersion: "^1.6.0"
    }}}));
    const exportModule = await res.then(factory => factory());
    var qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ = exportModule;

const commonSettings = [];
const Settings = [
  {
    key: "properties",
    label: "Properties",
    type: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.GROUP,
    components: commonSettings
  },
  {
    key: "image",
    label: "Image",
    type: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.TEXT_FIELD
  },
  {
    key: "title",
    label: "Title",
    type: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.TEXT_FIELD
  },
  {
    key: "maxLength",
    label: "Max Length",
    type: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.ESetting.NUMBER_FIELD,
    defaultValue: 3
  },
  ...qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.DEFAULT_SETTINGS
];
const BasicSettings = [
  ...commonSettings,
  ...qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.load(qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.BASIC_SETTINGS).filter("style.overflow")
];

var DefaultContext = {
  color: undefined,
  size: undefined,
  className: undefined,
  style: undefined,
  attr: undefined
};
var IconContext = F.createContext && F.createContext(DefaultContext);

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
    return F.createElement(node.tag, __assign({
      key: i
    }, node.attr), Tree2Element(node.child));
  });
}
function GenIcon(data) {
  // eslint-disable-next-line react/display-name
  return function (props) {
    return F.createElement(IconBase, __assign({
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
    return F.createElement("svg", __assign({
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
    }), title && F.createElement("title", null, title), props.children);
  };
  return IconContext !== undefined ? F.createElement(IconContext.Consumer, null, function (conf) {
    return elem(conf);
  }) : elem(DefaultContext);
}

// THIS FILE IS AUTO GENERATED
function RxAvatar (props) {
  return GenIcon({"attr":{"viewBox":"0 0 15 15","fill":"none"},"child":[{"tag":"path","attr":{"fillRule":"evenodd","clipRule":"evenodd","d":"M0.877014 7.49988C0.877014 3.84219 3.84216 0.877045 7.49985 0.877045C11.1575 0.877045 14.1227 3.84219 14.1227 7.49988C14.1227 11.1575 11.1575 14.1227 7.49985 14.1227C3.84216 14.1227 0.877014 11.1575 0.877014 7.49988ZM7.49985 1.82704C4.36683 1.82704 1.82701 4.36686 1.82701 7.49988C1.82701 8.97196 2.38774 10.3131 3.30727 11.3213C4.19074 9.94119 5.73818 9.02499 7.50023 9.02499C9.26206 9.02499 10.8093 9.94097 11.6929 11.3208C12.6121 10.3127 13.1727 8.97172 13.1727 7.49988C13.1727 4.36686 10.6328 1.82704 7.49985 1.82704ZM10.9818 11.9787C10.2839 10.7795 8.9857 9.97499 7.50023 9.97499C6.01458 9.97499 4.71624 10.7797 4.01845 11.9791C4.97952 12.7272 6.18765 13.1727 7.49985 13.1727C8.81227 13.1727 10.0206 12.727 10.9818 11.9787ZM5.14999 6.50487C5.14999 5.207 6.20212 4.15487 7.49999 4.15487C8.79786 4.15487 9.84999 5.207 9.84999 6.50487C9.84999 7.80274 8.79786 8.85487 7.49999 8.85487C6.20212 8.85487 5.14999 7.80274 5.14999 6.50487ZM7.49999 5.10487C6.72679 5.10487 6.09999 5.73167 6.09999 6.50487C6.09999 7.27807 6.72679 7.90487 7.49999 7.90487C8.27319 7.90487 8.89999 7.27807 8.89999 6.50487C8.89999 5.73167 8.27319 5.10487 7.49999 5.10487Z","fill":"currentColor"}}]})(props);
}

const config = {
  craft: {
    displayName: "Avatar Group",
    rules: {
      canDrag: () => true
    },
    kind: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.EComponentKind.BASIC,
    props: {
      iterable: true,
      classNames: [],
      events: []
    },
    related: {
      settings: qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.Settings(Settings, BasicSettings)
    }
  },
  info: {
    displayName: "Avatar Group",
    sanityCheck: {
      keys: [{ name: "datasource", require: true, isDatasource: true }]
    },
    exposed: true,
    icon: RxAvatar,
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
      declarations: (props) => {
        const { image, title, datasource = "" } = props;
        const declarations = [
          { path: datasource, iterable: true }
        ];
        const { id: ds, namespace } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.splitDatasourceID(datasource?.trim()) || {};
        if (image) {
          const imageSrc = `${ds}.[].${image}`;
          declarations.push({
            path: namespace ? `${namespace}:${imageSrc}` : imageSrc,
            iterable: true
          });
        }
        if (title) {
          const titleSrc = `${ds}.[].${title}`;
          declarations.push({
            path: namespace ? `${namespace}:${titleSrc}` : titleSrc,
            iterable: true
          });
        }
        return declarations;
      },
      set: (nodeId, query, payload) => {
        const new_props = V(query.node(nodeId).get().data.props);
        payload.forEach((item) => {
          if (qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.isDatasourcePayload(item)) {
            if (qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.isEntitySelectionDatasource(item.source) || qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.isArrayDatasource(item.source)) {
              new_props.datasource = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.getDataTransferSourceID(item);
            }
          } else if (qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.isAttributePayload(item)) {
            if (qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_shared__loadShare__.isRelatedEntitiesAttribute(item.attribute)) {
              new_props.datasource = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.getDataTransferSourceID(item);
            } else {
              if (item.attribute.type === "image") {
                new_props.image = item.attribute.name || "";
              }
              if (item.attribute.type === "string") {
                new_props.title = item.attribute.name || "";
              }
            }
          }
        });
        return {
          [nodeId]: new_props
        };
      }
    }
  },
  defaultProps: {
    maxLength: 10,
    iterableChild: true
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

const AvatarGroup$2 = ({
  style,
  className,
  classNames = [],
  maxLength = 3
}) => {
  const {
    connectors: { connect }
  } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedNode();
  qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useDatasourceSub();
  const avatarStyle = {
    marginRight: style?.marginRight || "-40px",
    borderWidth: style?.borderWidth || "3px",
    borderColor: style?.borderColor || "white",
    borderStyle: style?.borderStyle || "solid",
    marginLeft: style?.marginLeft || "0px",
    display: style?.display || "flex",
    justifyContent: style?.justifyContent || "center",
    alignItems: style?.alignItems || "center",
    width: style?.width || style?.height || "100px",
    height: style?.height || style?.width || "100px",
    borderRadius: style?.borderRadius || "50%",
    backgroundColor: style?.backgroundColor || "#E6EAF4",
    color: style?.color || "#767B87",
    fontSize: style?.fontSize || "24px"
  };
  const avatarsCol = [
    {
      name: "John Doe",
      image: ""
    },
    {
      name: "John Doe",
      image: ""
    },
    {
      name: "John Doe",
      image: ""
    }
  ];
  const getInitials = (name) => {
    const words = name.split(" ");
    if (words.length > 2) {
      const haveMiddleName = words.map((word) => word.charAt(0).toUpperCase()).join("").substring(0, 4);
      const resultInitialName = haveMiddleName.split("");
      return `${resultInitialName[0]}${resultInitialName[resultInitialName.length - 1]}`;
    }
    return words.map((word) => word.charAt(0).toUpperCase()).join("").substring(0, 2);
  };
  const renderAvatars = () => {
    const remainingCount = avatarsCol.length - maxLength;
    const avatarsToRender = avatarsCol.slice(0, maxLength);
    const avatars = avatarsToRender.map(({ name, image }, index) => {
      const initials = getInitials(name);
      return /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "inline-block", "data-testid": "avatar-initial", children: image ? /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
        "div",
        {
          style: {
            ...avatarStyle,
            backgroundImage: `url(${image})`,
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            color: "transparent"
          },
          "data-testid": "avatar-initial-text",
          children: initials
        }
      ) : /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { style: avatarStyle, "data-testid": "avatar-initial-text", children: initials }) }, `avatar-${index}`);
    });
    if (remainingCount > 0) {
      avatars.push(
        /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { "data-testid": "avatar-initial-text", className: "inline-block", children: /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { "data-testid": "avatar-initial-item", style: avatarStyle, children: [
          "+",
          remainingCount
        ] }) }, "avatar-remaining")
      );
    }
    return avatars;
  };
  return /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { ref: connect, className: cn(className, classNames), children: renderAvatars() });
};

const AvatarGroup$1 = ({
  maxLength = 3,
  image = "",
  title = "",
  style,
  className,
  classNames = []
}) => {
  const { connect } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useRenderer();
  const [length, setLength] = qodly_56415fbfa795854d3f81__loadShare__react__loadShare__.useState(() => 0);
  const {
    sources: { datasource: ds }
  } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useSources({ acceptIteratorSel: true });
  const { entities, fetchIndex } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useDataLoader({
    source: ds
  });
  qodly_56415fbfa795854d3f81__loadShare__react__loadShare__.useEffect(() => {
    const fetch = async () => {
      const selLength = await ds.getValue("length");
      setLength(selLength);
      await fetchIndex(0);
    };
    fetch();
    ds.addListener("changed", fetch);
    return () => {
      ds.removeListener("changed", fetch);
    };
  }, []);
  const avatarStyle = {
    marginRight: style?.marginRight || "-40px",
    borderWidth: style?.borderWidth || "3px",
    borderColor: style?.borderColor || "white",
    borderStyle: style?.borderStyle || "solid",
    marginLeft: style?.marginLeft || "0px",
    display: style?.display || "flex",
    justifyContent: style?.justifyContent || "center",
    alignItems: style?.alignItems || "center",
    width: style?.width || style?.height || "100px",
    height: style?.height || style?.width || "100px",
    borderRadius: style?.borderRadius || "50%",
    backgroundColor: style?.backgroundColor || "#E6EAF4",
    color: style?.color || "#767B87",
    fontSize: style?.fontSize || "24px"
  };
  const getInitials = (name) => {
    const words = name.split(" ");
    if (words.length > 2) {
      const haveMiddleName = words.map((word) => word.charAt(0).toUpperCase()).join("").substring(0, 4);
      const resultInitialName = haveMiddleName.split("");
      return `${resultInitialName[0]}${resultInitialName[resultInitialName.length - 1]}`;
    }
    return words.map((word) => word.charAt(0).toUpperCase()).join("").substring(0, 2);
  };
  const renderAvatars = () => {
    const remainingCount = length - maxLength;
    const avatarsToRender = entities.slice(0, maxLength);
    const avatars = avatarsToRender.map((entity, index) => {
      const initials = entity[title] && getInitials(entity[title]);
      let imageObjec = entity[image];
      return /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { className: "inline-block", "data-testid": "avatar-initial", children: imageObjec?.__deferred?.image ? /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(
        "div",
        {
          style: {
            ...avatarStyle,
            backgroundImage: `url(${imageObjec?.__deferred?.uri})`,
            backgroundSize: "cover",
            backgroundRepeat: "no-repeat",
            color: "transparent"
          },
          "data-testid": "avatar-initial-text",
          children: initials
        }
      ) : /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { style: avatarStyle, "data-testid": "avatar-initial-text", children: initials }) }, `avatar-${index}`);
    });
    if (remainingCount > 0) {
      avatars.push(
        /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { "data-testid": "avatar-initial-text", className: "inline-block", children: /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsxs("div", { "data-testid": "avatar-initial-item", style: avatarStyle, children: [
          "+",
          remainingCount
        ] }) }, "avatar-remaining")
      );
    }
    return avatars;
  };
  return /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx("div", { ref: connect, className: cn(className, classNames), children: renderAvatars() });
};

const AvatarGroup = (props) => {
  const { enabled } = qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__.useEnhancedEditor((state) => ({
    enabled: state.options.enabled
  }));
  return enabled ? /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(AvatarGroup$2, { ...props }) : /* @__PURE__ */ qodly_56415fbfa795854d3f81__loadShare__react_mf_1_jsx_mf_2_runtime__loadShare__.jsx(AvatarGroup$1, { ...props });
};
AvatarGroup.craft = config.craft;
AvatarGroup.info = config.info;
AvatarGroup.defaultProps = config.defaultProps;

const components = {
  // components
  AvatarGroup
};

const index = /*#__PURE__*/Object.freeze(/*#__PURE__*/Object.defineProperty({
  __proto__: null,
  default: components
}, Symbol.toStringTag, { value: 'Module' }));

export { components as c, index as i, qodly_56415fbfa795854d3f81__loadShare___mf_0_ws_mf_2_ui_mf_1_webform_mf_2_editor__loadShare__ as q };
