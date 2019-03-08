(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define([], factory);
	else if(typeof exports === 'object')
		exports["ImageMapHighlighter"] = factory();
	else
		root["ImageMapHighlighter"] = factory();
})(this, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports) {

	'use strict';

	var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

	function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

	var ImageMapHighlighter = function () {
	    /**
	     * @param {HTMLImageElement} element
	     * @param {Object} options
	     */
	    function ImageMapHighlighter(element) {
	        var options = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : {};

	        _classCallCheck(this, ImageMapHighlighter);

	        this.element = element;
	        this.options = Object.assign({}, this._getDefaultOptions(), options);
	    }

	    /**
	     * Convert the image into a canvas that animates when you hover over parts
	     * of it.
	     */


	    _createClass(ImageMapHighlighter, [{
	        key: 'init',
	        value: function init() {
	            var _this = this;

	            // Get the HTML map element associated with the given image element.
	            var map = this._getAssociatedMap(this.element);

	            // Create a shiny new canvas with the same dimensions as the image.
	            var canvas = this._createCanvasFor(this.element);

	            // Create a container element and move the image element as well as
	            // our shiny new canvas into it.
	            var container = this._createContainerFor(this.element);
	            this.element.parentNode.insertBefore(container, this.element);
	            container.appendChild(this.element);
                container.insertBefore(canvas, this.element);
                
	            /* if (this.options.alwaysOn) {
	                for (var i = 0; i < map.areas.length; i++) {
	                    var area = map.areas[i];

	                    this._drawHighlightByArea(canvas, area);
	                }
	            } else {
	                // Animate the canvas accordingly every time we hover over an image
	                // mapping.
	                map.addEventListener('mouseover', function (event) {
	                    _this._clearHighlights(canvas);
	                    _this._drawHighlightByArea(canvas, event.target);
	                });

	                // Clear the canvas when we hover off a mapping.
	                map.addEventListener('mouseout', function (event) {
	                    _this._clearHighlights(canvas);
                    });
                } */
                
                map.addEventListener('click', function (event) {
                    _this._clearHighlights(canvas);
                    _this._drawHighlightByArea(canvas, event.target);
                });
	        }
	    }, {
	        key: '_getDefaultOptions',
	        value: function _getDefaultOptions() {
	            return {
	                fill: true,
	                fillColor: '000000',
	                fillOpacity: 0.2,
	                stroke: true,
	                strokeColor: 'ff0000',
	                strokeOpacity: 1,
	                strokeWidth: 1,
	                alwaysOn: false
	            };
	        }

	        /**
	         * Create and return a new HTML div element.
	         *
	         * @param {HTMLImageElement} element
	         * @returns {HTMLDivElement}
	         * @private
	         */

	    }, {
	        key: '_createContainerFor',
	        value: function _createContainerFor(element) {
	            var container = document.createElement('div');
	            container.classList.add('map-container');
	            container.style.backgroundImage = 'url(' + element.src + ')';
	            container.style.height = element.height + 'px';
	            container.style.width = element.width + 'px';
	            return container;
	        }

	        /**
	         * Create and return a new HTML canvas element.
	         *
	         * @param {HTMLImageElement} element
	         * @returns {HTMLCanvasElement}
	         * @private
	         */

	    }, {
	        key: '_createCanvasFor',
	        value: function _createCanvasFor(element) {
	            var canvas = document.createElement('canvas');
	            canvas.height = element.height;
	            canvas.width = element.width;
	            return canvas;
	        }

	        /**
	         * Return the HTML map element referenced by the given HTML image element.
	         *
	         * @param {HTMLImageElement} element
	         * @returns {HTMLMapElement}
	         * @private
	         */

	    }, {
	        key: '_getAssociatedMap',
	        value: function _getAssociatedMap(element) {
	            if (!element.useMap) {
	                throw new Error('The "useMap" attribute for this image element has not been set.');
	            }

	            var map = document.querySelector('map[name=' + element.useMap.substr(1) + ']');
	            if (map === null) {
	                throw new Error('The requested map "' + element.useMap + '" could not be found.');
	            }

	            return map;
	        }

	        /**
	         * Clear the canvas.
	         *
	         * @param {HTMLCanvasElement} canvas
	         * @private
	         */

	    }, {
	        key: '_clearHighlights',
	        value: function _clearHighlights(canvas) {
	            var context = canvas.getContext('2d');
	            context.clearRect(0, 0, canvas.width, canvas.height);
	        }

	        /**
	         * Draw the map area co-ordinates onto the provided HTML canvas element.
	         *
	         * @param {HTMLCanvasElement} canvas
	         * @param {HTMLAreaElement} area
	         * @private
	         */

	    }, {
	        key: '_drawHighlightByArea',
	        value: function _drawHighlightByArea(canvas, area) {
	            var coords = area.coords.split(',').map(function (coord) {
	                return parseInt(coord);
	            });
	            var shape = area.shape;

	            this._drawHighlight(canvas, shape, coords);
	        }

	        /**
	         * Draw a highlight onto the provided HTML canvas element.
	         *
	         * @param {HTMLCanvasElement} canvas
	         * @param {String} shape
	         * @param {Array} coords
	         * @private
	         */

	    }, {
	        key: '_drawHighlight',
	        value: function _drawHighlight(canvas, shape, coords) {
	            var context = canvas.getContext('2d');

	            context.beginPath();
	            switch (shape) {
	                case 'circle':
	                    context.arc(coords[0], coords[1], coords[2], 0, Math.PI * 2, false);
	                    break;
	                case 'poly':
	                    context.moveTo(coords[0], coords[1]);
	                    for (var i = 2; i < coords.length; i += 2) {
	                        context.lineTo(coords[i], coords[i + 1]);
	                    }
	                    break;
	                case 'rect':
	                    context.rect(coords[0], coords[1], coords[2] - coords[0], coords[3] - coords[1]);
	                    break;
	                default:
	            }
	            context.closePath();

	            if (this.options.fill) {
	                context.fillStyle = this.css3Colour(this.options.fillColor, this.options.fillOpacity);
	                context.fill();
	            }

	            if (this.options.stroke) {
	                context.strokeStyle = this.css3Colour(this.options.strokeColor, this.options.strokeOpacity);
	                context.lineWidth = this.options.strokeWidth;
	            }

	            context.stroke();
	        }

	        /**
	         * @param {String} hex
	         * @returns {Number}
	         */

	    }, {
	        key: 'hexToDecimal',
	        value: function hexToDecimal(hex) {
	            return Math.max(0, Math.min(parseInt(hex, 16), 255));
	        }

	        /**
	         * @param {String} colour
	         * @param {Number} opacity
	         * @returns {String}
	         */

	    }, {
	        key: 'css3Colour',
	        value: function css3Colour(colour, opacity) {
	            var r = +this.hexToDecimal(colour.substr(0, 2));
	            var g = +this.hexToDecimal(colour.substr(2, 2));
	            var b = +this.hexToDecimal(colour.substr(4, 2));

	            return 'rgba(' + r + ', ' + g + ', ' + b + ', ' + opacity + ')';
	        }
	    }]);

	    return ImageMapHighlighter;
	}();

	module.exports = ImageMapHighlighter;

/***/ }
/******/ ])
});