webpackJsonp(["main"],{

/***/ "../../../../../src/$$_gendir lazy recursive":
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	return new Promise(function(resolve, reject) { reject(new Error("Cannot find module '" + req + "'.")); });
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = "../../../../../src/$$_gendir lazy recursive";

/***/ }),

/***/ "../../../../../src/app/app.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "/*@font-face {\r\n  font-family: Gilroy-ExtraBold;\r\n  src: url(assets/fonts/Gilroy-ExtraBold.ttf) format(\"truetype\");\r\n}\r\n@font-face {\r\n  font-family: Gilroy-Light;\r\n  src: url(assets/fonts/Gilroy-Light.ttf) format(\"truetype\");\r\n}\r\n@font-face {\r\n  font-family: Gilroy-Thin;\r\n  src: url(assets/fonts/Gilroy-Thin.otf) format(\"opentype\");\r\n}*/\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/app.component.html":
/***/ (function(module, exports) {

module.exports = "<router-outlet></router-outlet>\n"

/***/ }),

/***/ "../../../../../src/app/app.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_config_service__ = __webpack_require__("../../../../../src/app/services/config.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AppComponent = (function () {
    function AppComponent(configService) {
        this.configService = configService;
        this.title = 'app';
    }
    AppComponent.prototype.ngOnInit = function () {
        this.configService.getJSON()
            .then(function (res) {
            localStorage.setItem("server_path", res.json().server_path);
        });
    };
    return AppComponent;
}());
AppComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-root',
        template: __webpack_require__("../../../../../src/app/app.component.html"),
        styles: [__webpack_require__("../../../../../src/app/app.component.css")],
        providers: [__WEBPACK_IMPORTED_MODULE_1__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]],
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__services_config_service__["a" /* ConfigService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_config_service__["a" /* ConfigService */]) === "function" && _a || Object])
], AppComponent);

var _a;
//# sourceMappingURL=app.component.js.map

/***/ }),

/***/ "../../../../../src/app/app.module.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__ = __webpack_require__("../../../platform-browser/@angular/platform-browser.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__app_component__ = __webpack_require__("../../../../../src/app/app.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__components_home_home_component__ = __webpack_require__("../../../../../src/app/components/home/home.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__components_privateOffice_privateOffice_component__ = __webpack_require__("../../../../../src/app/components/privateOffice/privateOffice.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__components_login_login_component__ = __webpack_require__("../../../../../src/app/components/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__components_register_register_component__ = __webpack_require__("../../../../../src/app/components/register/register.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__components_status_status_component__ = __webpack_require__("../../../../../src/app/components/status/status.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__services_ensure_authenticated_service__ = __webpack_require__("../../../../../src/app/services/ensure-authenticated.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__ = __webpack_require__("../../../../../src/app/services/auth-guard.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15__services_login_redirect_service__ = __webpack_require__("../../../../../src/app/services/login-redirect.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17__services_config_service__ = __webpack_require__("../../../../../src/app/services/config.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19__components_about_about_component__ = __webpack_require__("../../../../../src/app/components/about/about.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20__components_how_it_works_how_it_works_component__ = __webpack_require__("../../../../../src/app/components/how-it-works/how-it-works.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21__components_public_statistics_public_statistics_component__ = __webpack_require__("../../../../../src/app/components/public-statistics/public-statistics.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_22__components_buy_ticket_buy_ticket_component__ = __webpack_require__("../../../../../src/app/components/buy-ticket/buy-ticket.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_23__components_my_bets_my_bets_component__ = __webpack_require__("../../../../../src/app/components/my-bets/my-bets.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_24__components_my_tokens_my_tokens_component__ = __webpack_require__("../../../../../src/app/components/my-tokens/my-tokens.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_25__components_wallet_wallet_component__ = __webpack_require__("../../../../../src/app/components/wallet/wallet.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_26__components_my_statistics_my_statistics_component__ = __webpack_require__("../../../../../src/app/components/my-statistics/my-statistics.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_27__components_settings_settings_component__ = __webpack_require__("../../../../../src/app/components/settings/settings.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_28__components_faq_faq_component__ = __webpack_require__("../../../../../src/app/components/faq/faq.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_29__components_scratch_scratch_component__ = __webpack_require__("../../../../../src/app/components/scratch/scratch.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_30__components_buy_test_buy_test_component__ = __webpack_require__("../../../../../src/app/components/buy-test/buy-test.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_31__components_templates_cube_cube_component__ = __webpack_require__("../../../../../src/app/components/templates/cube/cube.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_32__components_give_ticket_give_ticket_component__ = __webpack_require__("../../../../../src/app/components/give-ticket/give-ticket.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_33__components_give_scratch_give_scratch_component__ = __webpack_require__("../../../../../src/app/components/give-scratch/give-scratch.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_34__components_templates_navbar_navbar_component__ = __webpack_require__("../../../../../src/app/components/templates/navbar/navbar.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_35__components_templates_navbar_registered_navbar_registered_component__ = __webpack_require__("../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};




































var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["M" /* NgModule */])({
        declarations: [
            __WEBPACK_IMPORTED_MODULE_6__app_component__["a" /* AppComponent */],
            __WEBPACK_IMPORTED_MODULE_7__components_home_home_component__["a" /* HomeComponent */],
            __WEBPACK_IMPORTED_MODULE_8__components_privateOffice_privateOffice_component__["a" /* PrivateOfficeComponent */],
            __WEBPACK_IMPORTED_MODULE_9__components_login_login_component__["a" /* LoginComponent */],
            __WEBPACK_IMPORTED_MODULE_11__components_register_register_component__["a" /* RegisterComponent */],
            __WEBPACK_IMPORTED_MODULE_12__components_status_status_component__["a" /* StatusComponent */],
            __WEBPACK_IMPORTED_MODULE_19__components_about_about_component__["a" /* AboutComponent */],
            __WEBPACK_IMPORTED_MODULE_20__components_how_it_works_how_it_works_component__["a" /* HowItWorksComponent */],
            __WEBPACK_IMPORTED_MODULE_21__components_public_statistics_public_statistics_component__["a" /* PublicStatisticsComponent */],
            __WEBPACK_IMPORTED_MODULE_22__components_buy_ticket_buy_ticket_component__["a" /* BuyTicketComponent */],
            __WEBPACK_IMPORTED_MODULE_23__components_my_bets_my_bets_component__["a" /* MyBetsComponent */],
            __WEBPACK_IMPORTED_MODULE_24__components_my_tokens_my_tokens_component__["a" /* MyTokensComponent */],
            __WEBPACK_IMPORTED_MODULE_25__components_wallet_wallet_component__["a" /* WalletComponent */],
            __WEBPACK_IMPORTED_MODULE_26__components_my_statistics_my_statistics_component__["a" /* MyStatisticsComponent */],
            __WEBPACK_IMPORTED_MODULE_27__components_settings_settings_component__["a" /* SettingsComponent */],
            __WEBPACK_IMPORTED_MODULE_28__components_faq_faq_component__["a" /* FaqComponent */],
            __WEBPACK_IMPORTED_MODULE_29__components_scratch_scratch_component__["a" /* ScratchComponent */],
            __WEBPACK_IMPORTED_MODULE_30__components_buy_test_buy_test_component__["a" /* BuyTestComponent */],
            __WEBPACK_IMPORTED_MODULE_31__components_templates_cube_cube_component__["a" /* CubeComponent */],
            __WEBPACK_IMPORTED_MODULE_32__components_give_ticket_give_ticket_component__["a" /* GiveTicketComponent */],
            __WEBPACK_IMPORTED_MODULE_33__components_give_scratch_give_scratch_component__["a" /* GiveScratchComponent */],
            __WEBPACK_IMPORTED_MODULE_34__components_templates_navbar_navbar_component__["a" /* NavbarComponent */],
            __WEBPACK_IMPORTED_MODULE_35__components_templates_navbar_registered_navbar_registered_component__["a" /* NavbarRegisteredComponent */]
        ],
        imports: [
            __WEBPACK_IMPORTED_MODULE_0__angular_platform_browser__["a" /* BrowserModule */],
            __WEBPACK_IMPORTED_MODULE_3__angular_http__["c" /* HttpModule */],
            __WEBPACK_IMPORTED_MODULE_4__angular_forms__["a" /* FormsModule */],
            __WEBPACK_IMPORTED_MODULE_5__ng_bootstrap_ng_bootstrap__["c" /* NgbModule */].forRoot(),
            __WEBPACK_IMPORTED_MODULE_2__angular_router__["b" /* RouterModule */].forRoot([
                {
                    path: '',
                    component: __WEBPACK_IMPORTED_MODULE_7__components_home_home_component__["a" /* HomeComponent */]
                },
                {
                    path: 'home',
                    component: __WEBPACK_IMPORTED_MODULE_7__components_home_home_component__["a" /* HomeComponent */]
                },
                {
                    path: 'privateOffice',
                    component: __WEBPACK_IMPORTED_MODULE_8__components_privateOffice_privateOffice_component__["a" /* PrivateOfficeComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'login',
                    component: __WEBPACK_IMPORTED_MODULE_9__components_login_login_component__["a" /* LoginComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_15__services_login_redirect_service__["a" /* LoginRedirect */]]
                },
                {
                    path: 'register',
                    component: __WEBPACK_IMPORTED_MODULE_11__components_register_register_component__["a" /* RegisterComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_15__services_login_redirect_service__["a" /* LoginRedirect */]]
                },
                {
                    path: 'status',
                    component: __WEBPACK_IMPORTED_MODULE_12__components_status_status_component__["a" /* StatusComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_13__services_ensure_authenticated_service__["a" /* EnsureAuthenticated */]]
                },
                {
                    path: 'about',
                    component: __WEBPACK_IMPORTED_MODULE_19__components_about_about_component__["a" /* AboutComponent */]
                },
                {
                    path: 'public-statistics',
                    component: __WEBPACK_IMPORTED_MODULE_21__components_public_statistics_public_statistics_component__["a" /* PublicStatisticsComponent */]
                },
                {
                    path: 'how-it-works',
                    component: __WEBPACK_IMPORTED_MODULE_20__components_how_it_works_how_it_works_component__["a" /* HowItWorksComponent */]
                },
                {
                    path: 'buy-ticket',
                    component: __WEBPACK_IMPORTED_MODULE_22__components_buy_ticket_buy_ticket_component__["a" /* BuyTicketComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'give-ticket',
                    component: __WEBPACK_IMPORTED_MODULE_32__components_give_ticket_give_ticket_component__["a" /* GiveTicketComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'give-scratch',
                    component: __WEBPACK_IMPORTED_MODULE_33__components_give_scratch_give_scratch_component__["a" /* GiveScratchComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'buy-test',
                    component: __WEBPACK_IMPORTED_MODULE_30__components_buy_test_buy_test_component__["a" /* BuyTestComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'scratch',
                    component: __WEBPACK_IMPORTED_MODULE_29__components_scratch_scratch_component__["a" /* ScratchComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'my-bets',
                    component: __WEBPACK_IMPORTED_MODULE_23__components_my_bets_my_bets_component__["a" /* MyBetsComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'my-tokens',
                    component: __WEBPACK_IMPORTED_MODULE_24__components_my_tokens_my_tokens_component__["a" /* MyTokensComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'wallet',
                    component: __WEBPACK_IMPORTED_MODULE_25__components_wallet_wallet_component__["a" /* WalletComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'my-statistics',
                    component: __WEBPACK_IMPORTED_MODULE_26__components_my_statistics_my_statistics_component__["a" /* MyStatisticsComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'settings',
                    component: __WEBPACK_IMPORTED_MODULE_27__components_settings_settings_component__["a" /* SettingsComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                },
                {
                    path: 'faq',
                    component: __WEBPACK_IMPORTED_MODULE_28__components_faq_faq_component__["a" /* FaqComponent */],
                    canActivate: [__WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */]]
                }
            ])
        ],
        providers: [
            __WEBPACK_IMPORTED_MODULE_10__services_auth_service__["a" /* AuthService */],
            __WEBPACK_IMPORTED_MODULE_13__services_ensure_authenticated_service__["a" /* EnsureAuthenticated */],
            __WEBPACK_IMPORTED_MODULE_14__services_auth_guard_service__["a" /* AuthGuard */],
            __WEBPACK_IMPORTED_MODULE_15__services_login_redirect_service__["a" /* LoginRedirect */],
            __WEBPACK_IMPORTED_MODULE_16__services_lottery_service__["a" /* LotteryService */],
            __WEBPACK_IMPORTED_MODULE_17__services_config_service__["a" /* ConfigService */],
            __WEBPACK_IMPORTED_MODULE_18__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]
        ],
        bootstrap: [__WEBPACK_IMPORTED_MODULE_6__app_component__["a" /* AppComponent */]]
    })
], AppModule);

//# sourceMappingURL=app.module.js.map

/***/ }),

/***/ "../../../../../src/app/components/about/about.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\n.table-dark {\r\n  background-color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/about/about.component.html":
/***/ (function(module, exports) {

module.exports = "  <div class=\"header\">\r\n    <table style=\"margin-left: 20px;\">\r\n      <tr>\r\n        <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n        <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/home\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n      </tr>\r\n    </table>\r\n    <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n  </div>\r\n\r\n    <table class=\"page-content\">\r\n      <tr>\r\n        <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n          <app-navbar></app-navbar>\r\n      </td>\r\n      <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n        <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n          <!--<ol class=\"carousel-indicators\">\r\n            <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n            <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n          </ol>-->\r\n          <div class=\"carousel-inner\">\r\n            <div class=\"carousel-item active\">\r\n              <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n              <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n                <p>{{superjackpot_value}} SJP</p>\r\n              </div>\r\n            </div>\r\n            <!--<div class=\"carousel-item\">\r\n              <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n              <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n                <p>{{superjackpot_value}} SJP</p>\r\n              </div>\r\n            </div>-->\r\n          </div>\r\n        </div>\r\n      </td>\r\n      <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n        <app-cube></app-cube>\r\n      </td>\r\n    </tr>\r\n        <tr>\r\n          <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n              <div class=\"control-group\">\r\n                <div style=\"width: 887px; padding-left: 20px; margin-bottom: 50px;\">\r\n\r\n                  <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n                  <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n                     <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n                     <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n                    <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n                    <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n                    <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n                    <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n                    <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n                    <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n                    <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n                    <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n                    <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n                    <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n                    <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n                    <h5>How to withdraw winnings to a bank account</h5>\r\n                    <table class=\"table-dark\">\r\n                      <thead>\r\n                        <tr>\r\n                          <th></th>\r\n                          <th>Approach</th>\r\n                          <th>Algorithm of actions</th>\r\n                          <th>Comments, restrictions</th>\r\n                        </tr>\r\n                      </thead>\r\n                      <tbody>\r\n                        <tr>\r\n                          <td>1</td>\r\n                          <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n                          <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n                          <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>2</td>\r\n                          <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n                          <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n                          <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>3</td>\r\n                          <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n                          <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n                          <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>4</td>\r\n                          <td>SJP conversion with third party exchange services </td>\r\n                          <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n                          <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table>\r\n\r\n\r\n                </div>\r\n              </div>\r\n        </tr>\r\n\r\n      </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/about/about.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AboutComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var AboutComponent = (function () {
    function AboutComponent(router, tpService, lottery) {
        this.router = router;
        this.tpService = tpService;
        this.lottery = lottery;
    }
    AboutComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    AboutComponent.prototype.goLogin = function (lotteryType) {
        this.router.navigateByUrl('/login');
        this.tpService.setLotteryType(lotteryType);
    };
    return AboutComponent;
}());
AboutComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-about',
        template: __webpack_require__("../../../../../src/app/components/about/about.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/about/about.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _c || Object])
], AboutComponent);

var _a, _b, _c;
//# sourceMappingURL=about.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/buy-test/buy-test.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-dark {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  margin: 0;\r\n  margin-left:5px;\r\n}\r\n\r\nh2 {\r\n  margin-bottom: 10px;\r\n  color: black;\r\n}\r\n\r\nh4 {\r\n  color: black;\r\n}\r\n\r\n.border {\r\n  /*width: 535px;\r\n  height: 350px;\r\n  padding: 15px;*/\r\n  width: 630px;\r\n  /*width: 80%;*/\r\n  padding: 15px;\r\n}\r\n\r\n.ok {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 630px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n}\r\n\r\n.ok:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.ok p {\r\n  margin-top: 5px;\r\n}\r\n\r\nul {\r\n  list-style: none;\r\n  padding: 0;\r\n  margin:0;\r\n}\r\n\r\n.border ul button {\r\n  text-decoration: none;\r\n  color: #FFF;\r\n  border: none;\r\n  cursor: pointer;\r\n  color: #000;\r\n}\r\n\r\n.border ul li button{\r\n  width: 70px;\r\n  background: #FFF;\r\n  height: 70px;\r\n  border-radius: 50%;\r\n  border: 1px solid #000;\r\n  float: left;\r\n  margin: 5px;\r\n  margin-left: 8px; /* Для Firefox */\r\n  -webkit-column-count: 4; /* Для Safari и Chrome */\r\n  column-count: 4;\r\n  font-size: 22px;\r\n  font-weight: bold;\r\n\r\n  /*text-shadow:\r\n  -1px -1px 0 #000,\r\n  1px -1px 0 #000,\r\n  -1px 1px 0 #000,\r\n  1px 1px 0 #000;*/\r\n\r\n  /*border: 1px solid rgba(0,0,0,0.5);\r\n  border-bottom: 3px solid rgba(0,0,0,0.5);*/\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n\r\n  /*background: rgba(0,0,0,0.25);*/\r\n\r\n  /*box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);*/\r\n}\r\n\r\n.border ul li button:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n  transition: 0.3s;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.border ul li .clicked {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.timer {\r\n  margin:0;\r\n  padding: 0;\r\n  text-align: center;\r\n}\r\n\r\n.container {\r\n  margin-top: 35px;\r\n  margin-left: 5%;\r\n  height: 100%;\r\n}\r\n\r\n#rules {\r\n  text-align: top;\r\n  -ms-flex-line-pack: stretch;\r\n      align-content: stretch;\r\n  -ms-flex-align: stretch;\r\n      align-items: stretch;\r\n}\r\n\r\n.nav > li > button.active, .nav > li > button:hover {\r\n    background-color: #fff;\r\n    color: #000;\r\n}\r\n\r\n#random-button:hover {\r\n  color: #000;\r\n  background-color: #FFF;\r\n}\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  position: fixed;\r\n  z-index: 10;\r\n  padding-top: 107px;\r\n  padding-left: 20px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.container {\r\n  /*margin-left: 10px;*/\r\n  width: 80%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n  margin-top: 8%;\r\n  padding-left: 10%;\r\n  /*position: fixed;*/\r\n  left: 1%;\r\n\r\n\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  /*margin-left: 85%;*/\r\n  /*margin-top: 5%;*/\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.card {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card img {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n  text-transform: uppercase;\r\n  color: black;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n  color: black;\r\n}\r\n\r\n.top-panel-button {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  /*display: inline-block;*/\r\n}\r\n\r\n.top-panel-button:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  /*transition: 0.3s;*/\r\n}\r\n\r\n.top-panel-button:visited {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button:active {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.btn-dark.top-panel-button.active.show {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n}\r\n\r\n.top-panel-button:link {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button p {\r\n  margin-top: 5px;\r\n}\r\n\r\n#buyButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n#buyButton:hover{\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n#ballsContainer {\r\n  /*background-color: white;*/\r\n}\r\n\r\n.btn-shake:hover {\r\n    /* Start the shake animation and make the animation last for 0.5 seconds */\r\n    animation: shake 0.5s;\r\n    /* When the animation is finished, start again */\r\n    /*animation-iteration-count: infinite;*/\r\n    animation-iteration-count: 1;\r\n}\r\n\r\n@keyframes shake {\r\n    0% { transform: translate(1px, 1px) rotate(0deg); }\r\n    10% { transform: translate(-1px, -2px) rotate(-1deg); }\r\n    20% { transform: translate(-3px, 0px) rotate(1deg); }\r\n    30% { transform: translate(3px, 2px) rotate(0deg); }\r\n    40% { transform: translate(1px, -1px) rotate(1deg); }\r\n    50% { transform: translate(-1px, 2px) rotate(-1deg); }\r\n    60% { transform: translate(-3px, 1px) rotate(0deg); }\r\n    70% { transform: translate(3px, 1px) rotate(-1deg); }\r\n    80% { transform: translate(-1px, -1px) rotate(1deg); }\r\n    90% { transform: translate(1px, 2px) rotate(0deg); }\r\n    100% { transform: translate(1px, -2px) rotate(-1deg); }\r\n}\r\n\r\n.btn-zoom {\r\n  transition: transform .2s; /* Animation */\r\n}\r\n\r\n.btn-zoom:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n#rules {\r\n  /*background-color: white;*/\r\n  color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/buy-test/buy-test.component.html":
/***/ (function(module, exports) {

module.exports = "<!--<img src=\"{{backgroundImage}}\" style=\"position: fixed; width: 100%; height: 100%\">-->\n\n<div class=\"header\">\n  <table style=\"margin-left: 20px;\">\n    <tr>\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\n    </tr>\n  </table>\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\n</div>\n\n          <div id=\"navbar\">\n            <p><a routerLink=\"/privateOffice\">Buy Ticket</a></p>\n            <p><a routerLink=\"/my-bets\">My Bets</a></p>\n            <p><a routerLink=\"/my-tokens\">My Tokens</a></p>\n            <p><a routerLink=\"/my-statistics\">Statistics</a></p>\n            <p><a routerLink=\"/settings\">Settings</a></p>\n            <p><a routerLink=\"/faq\">FAQ</a></p>\n            <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\n            <hr>\n            <p><a routerLink=\"/buy-ticket\">Switch Design</a></p>\n          </div>\n\n          <div class=\"container\" align=\"center\">\n            <table border=\"0\" style=\"margin-bottom: 50px; table-layout: auto; width: 100%;\" width=\"100%\">\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n                <div style=\"width: 630px;\">\n                  <ul class=\"nav\">\n                    <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 312px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\n                    <li><button class=\"btn-dark top-panel-button\" style=\"width: 312px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\n                  </ul>\n                </div>\n              </td>\n                <td align=\"center\" style=\"padding-left: 80px;\">\n                  <a routerLink=\"/privateOffice\"><h2 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h2></a>\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n\n                  <div class=\"tab-content\" [ngStyle]=\"{'background-image': backgroundImage}\">\n                    <div class=\"tab-pane fade show active\" id=\"tickets\" role=\"tabpanel\">\n\n                      <div *ngFor=\"let t of tickets; let i = index\">\n                      <div class=\"border\" id=\"ballsContainer\">\n                      <table align=\"center\" id=\"numbersTable\">\n                        <tr *ngFor=\"let r of tickets[i]\">\n                          <td *ngFor=\"let block of r\">\n                            <ul>\n                              <li>\n                            <button class=\"btn-zoom\"\n                              [class.clicked]=\"block.clicked\"\n                              (click)=\"addDelete(block, i)\">{{ block.num }}\n                            </button>\n                          </li>\n                        </ul>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <div style=\"margin-top: 6px;\">\n                      <div class=\"ok\" style=\"width: 207px; margin-bottom: 1px;\"><p>Raffles: {{raffles[i]}}</p></div>\n                      <div class=\"ok\" (click)=\"addRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>+</p></div>\n                      <div class=\"ok\" (click)=\"removeRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>-</p></div>\n                    </div>\n                    <div style=\"margin-top: 6px;\">\n                      <div class=\"ok\" style=\"width: 630px; margin-bottom: 5px;\" (click)=\"chooseForMe(i)\"><p>Choose for Me</p></div>\n                    </div>\n                    <div *ngIf=removeButtonFlag() class=\"ok\" (click)=\"removeTicket(i)\" style=\"margin-bottom: 5px;\"><p>- Remove Ticket</p></div>\n                    <hr>\n                  </div>\n                </div>\n\n                  <div class=\"tab-pane fade\" id=\"rules\" style=\"text-align: justify;\">\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 1\">\n                      <p>The 4x21 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_4_21_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      <p>Drawings are held daily, at 02:00, 05:00, 08:00, 11:00, 14:00, 17:00, 20:00 and 23:00 GMT. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      <p>To participate in the Lottery, you need to choose 4 numbers from 1 to 21 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                        <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  1 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:<br/>\n                      The distribution of the Prize pool by the number of guessed numbers<br/>\n                      2 - 32% of the Prize Pool / The number of Players who matched 2 numbers<br/>\n                      3\t- 33% of the Prize Pool / The number of Players who matched 3 numbers<br/>\n                      4\t- 35% of the Prize Pool – Jackpot<br/>\n                      9% are used to cover technical and operating expenses.<hr/>\n                      <p><b>Jackpot</b></p>\n                      35% of the Prize pool (Category 4) are always rolled over to the Jackpot for the following drawing. The Jackpot built up over the previous drawings is divided between the  Owners of the tickets with 4 matching numbers. If there are no such tickets, the current Jackpot is rolled over to the Jackpot for the following drawing. In category 2, 3 the winning amount is divided by the number of Winners in this category. If there are no Winners, then the Prize pool of these categories also goes to the Jackpot of the following drawing.<hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE<hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.<hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 2\">\n                      <p>The 5x36 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_5_36_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held daily, at 04:00, 10:00, 16:00 and 22:00 GMT.\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      To participate in the Lottery, you need to choose 5 numbers from 1 to 36 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                      <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  2 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:\n                      There are four winning categories in the Lottery: two with fixed winnings and two with accumulated Jackpot.<br/>\n                      2 - 2 SJP / The number of Players who matched 2 numbers <br/>\n                      3\t- 20 SJP / The number of Players who matched 3 numbers<br/>\n                      4\t- 50% / The number of Players who matched 4 numbers\t<br/>\n                      5 - 50% / Jackpot<br/>\n                      First, fixed winnings are calculated for 2 and 3 guessed numbers. After that, the rest of the Prize pool is divided equally between the categories 4 and 5  (Jackpot). If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\n                      9% are used to cover technical and operating expenses.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 3\">\n                      <p>The 6x45 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_6_45_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held daily, at 09:00 and 21:00 GMT.\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      To participate in the Lottery, you need to choose 6 numbers from 1 to 45 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                      <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  3 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:\n                      Win combinations in which in one field 2, 3, 4, 5 or 6 numbers from 45 coincide with winning numbers.\n                      Those participants who guessed the 2 numbers receive 3 SJP each. The remaining Prize pool is distributed in the following percentage:<br/>\n                      3\t- 24% of the Prize Pool / The number of Players who matched 3 numbers<br/>\n                      4\t- 14% of the Prize Pool / The number of Players who matched 4 numbers<br/>\n                      5\t- 26% of the Prize Pool / The number of Players who matched 5 numbers\t<br/>\n                      6\t- 36% of the Prize Pool – Jackpot<br/>\n                      Guessing 6 numbers, You get a Jackpot! The Jackpot is accumulated. Therefore, if no one guesses 6 numbers in the current draw, the accumulated amount goes to the next draw Jackpot Prize pool. In category 3, 4, 5 the winning amount is divided by the number of Winners in this category. If there are no Winners in any of these categories, then the Prize pool of these categories also goes to the Jackpot of the following drawing.\n                      9% are used to cover technical and operating expenses.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 4\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\n                      The Rapidos Lottery has a minimum guaranteed Jackpot of {{rapidos_value}} SJP and to win a Jackpot, you just need to guess 8 numbers out of 20 in the first part of the field and one number in four - in the second part.\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                      The price of one ticket  -  1 SJP\n                      <hr/>\n                      <p><b>How to play</b></p>\n                      In a ticket - only one playing field, consisting of two parts (the first and second).<br/>\n                      • You need to choose 8 non-repeating numbers from 1 to 20 in the first part of the playing field and one number from 1 to 4 - in the second part.<br/>\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\n                      • To participate in several runs, specify their number in a special column.<br/>\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\n                      <hr/>\n                      <p><b>What can be won?</b></p>\n\n                      In Rapid SJP there are 9 categories of winnings.<br/>\n                      All winnings, except for the Jackpot, are fixed. The minimum winnings are 1 SJP.<br/>\n\n                    <table class=\"table\" style=\"text-align: left;\">\n                      <thead>\n                        <tr colspan=\"3\">\n                          <th>You can win in Rapidos</th>\n                        </tr>\n                      </thead>\n                      <tbody>\n                        <tr>\n                          <td>Guessed the numbers in the first part of the field</td>\n                          <td>Guessed the numbers in the second part of the field</td>\n                          <td>You win</td>\n                        </tr>\n                        <tr>\n                          <td>8</td>\n                          <td>1</td>\n                          <td>Jackpot</td>\n                        </tr>\n                        <tr>\n                          <td>8</td>\n                          <td>0</td>\n                          <td>1 000 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>7</td>\n                          <td>1</td>\n                          <td>150 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>7</td>\n                          <td>0</td>\n                          <td>50 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>6</td>\n                          <td>1</td>\n                          <td>30 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>6</td>\n                          <td>0</td>\n                          <td>10 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>5</td>\n                          <td>1</td>\n                          <td>5 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>5</td>\n                          <td>0</td>\n                          <td>2 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>4</td>\n                          <td>1</td>\n                          <td>1 SJP</td>\n                        </tr>\n                      </tbody>\n                    </table>\n                    The Jackpot is received by the one who guessed 8 numbers in the first part of the field and one number in the second. The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. Therefore, if no one guesses the combination of the draw in the current draw, the accumulated amount goes to the next draw.\n                    <hr/>\n                    <p><b>Casting</b></p>\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                    <hr/>\n                    <p><b>Taxes</b></p>\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                    <hr/>\n                    <p><b>Agreement</b></p>\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 5\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\n                    The Two Numbers  Lottery is one of the most simple and popular Lotteries in the world since ancient times.\n                    <hr/>\n                    <p><b>Time</b></p>\n                    Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                    The price of one ticket  -  2 SJP\n                    <hr/>\n                    <p><b>How to play</b></p>\n                    In a ticket - only one playing field, consisting of two parts (the first and second). <br/>\n                    • You need to choose 1 numbers from 1 to 100 in the first part of the playing field and one number from 1 to 8 - in the second part.<br/>\n                    • To participate in several runs, specify their number in a special column.<br/>\n                    • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                    When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\n                    <hr/>\n                    <p><b>What can be won?</b></p>\n                    The Jackpot is received by the one who guessed one number in the first part of the field and one number in the second.\n                    <table class=\"table\">\n                      <thead>\n                        <tr colspan=\"3\">\n                          <th>You can win in Two Numbers Lottery</th>\n                        </tr>\n                      </thead>\n                      <tbody>\n                        <tr>\n                          <td>Guessed the numbers in the first part of the field</td>\n                          <td>Guessed the numbers in the second part of the field</td>\n                          <td>You win</td>\n                        </tr>\n                        <tr>\n                          <td>1</td>\n                          <td>1</td>\n                          <td>Jackpot</td>\n                        </tr>\n                        <tr>\n                          <td>1</td>\n                          <td>0</td>\n                          <td>150 SJP</td>\n                        </tr>\n                      </tbody>\n                    </table>\n                    First, fixed winnings are calculated for 1 guessed number. After that, the rest of the Prize pool transferees to Jackpot and distributes equally among the Winners. The Jackpot is accumulative. Therefore, if there were no Winners in these two categories, then the Prize pool will be transferred to the next draw Jackpot Prize pool.\n                    <hr/>\n                    <p><b>Casting</b></p>\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                    <hr/>\n                    <p><b>Taxes</b></p>\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                    <hr/>\n                    <p><b>Agreement</b></p>\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 6\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.\n                      The 24/12 SJP Lottery has a minimum guaranteed Jackpot of {{prize_jackpot_value }} SJP and  this is the only lottery where you can win a Jackpot without guessing a single number. Also the Jackpot is received by those who guess 12 numbers from 24.\n                      <p><b>Time</b></p>\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                      The price of one ticket  -  1 SJP\n                      <hr/>\n                      <p><b>How to play</b></p>\n                      The ticket Prize&Jackpot Lottery consists of one field with numbers from 1 to 24. <br/>\n                      • Select 12 non-repeating numbers from 1 to 24.<br/>\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\n                      • To participate in several runs, specify their number in a special column.<br/>\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!\n                      <hr/>\n                      <p><b>How to increase the chances?</b></p>\n                      The chance of winning the lottery is regarded as one to 4.5. This is one of the highest figures among lotteries.\n                      <p>Now multiply the winnings! To do this, select the multiplier (maximum - 100).\n                      It will multiply all your winnings, except for the Jackpot.</p>\n                      <p>Also you can choose the number of runs in which your ticket will participate. The maximum number of runs is 100.</p>\n                      <hr/>\n                      <p><b>What can be won?</b></p>\n                      Winners are considered to be combinations in which 0, 1, 2, 3, 4, 8, 9, 10, 11 or 12 numbers coincide with the numbers in the draw. All winnings, except for the Prize and the Jackpot, are fixed. The minimum winnings are 2 SJP.\n\n                      <table class=\"table\">\n                        <thead>\n                          <tr colspan=\"2\">\n                            <th>You can win in Prize&Jackpot Lottery</th>\n                          </tr>\n                        </thead>\n                        <tbody>\n                          <tr>\n                            <td>Guessed the numbers</td>\n                            <td>You win</td>\n                          </tr>\n                          <tr>\n                            <td>0 or 12 guessed numbers</td>\n                            <td>50% of the Prize pool / Jackpot</td>\n                          </tr>\n                          <tr>\n                            <td>1 or 11 guessed numbers</td>\n                            <td>50% of the Prize pool / Prize</td>\n                          </tr>\n                          <tr>\n                            <td>2 or 10 guessed numbers</td>\n                            <td>25 SJP</td>\n                          </tr>\n                          <tr>\n                            <td>3 or 9 guessed numbers</td>\n                            <td>5 SJP</td>\n                          </tr>\n                          <tr>\n                            <td>4 or 8 guessed numbers</td>\n                            <td>2 SJP</td>\n                          </tr>\n                        </tbody>\n                        <tr colspan=\"2\">\n                          <td>Combinations in which 5, 6 and 7 numbers have coincided, do not win.</td>\n                        </tr>\n                      </table>\n                      The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. First, fixed winnings are calculated. After that, the rest of the Prize pool is divided equally between the categories Prize and Jackpot. If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\">\n                    <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\n                    <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\n                       <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\n                      <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\n                      <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\n                      <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\n                      <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\n                      <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\n                      <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\n                      <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\n                      <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\n                      <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\n                      <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\n                      <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\n                      <h5>How to withdraw winnings to a bank account</h5>\n                      <table class=\"table\">\n                        <thead>\n                          <tr>\n                            <th>Approach</th>\n                            <th>Algorithm of actions</th>\n                            <th>Comments, restrictions</th>\n                          </tr>\n                        </thead>\n                        <tbody>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\n                            <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\n                            <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\n                          </tr>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\n                          </tr>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\n                          </tr>\n                          <tr>\n                            <td>SJP conversion with third party exchange services </td>\n                            <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\n                            <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\n                          </tr>\n                        </tbody>\n                      </table>\n                    </div>\n\n\n                  </div>\n\n\n\n                </div>\n                </td>\n                <td rowspan=\"1\" style=\"padding-left: 80px;\" valign=\"top\" align=\"center\">\n                  <h4>{{cd}}</h4>\n                  <div class=\"timer\">\n                    <div class=\"card\" style=\"width: 15rem;  margin: 0 auto; \">\n                      <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" alt=\"Card image cap\">\n                      <div class=\"lotteryTitle\">{{lotteryName}}</div>\n                      <!--<div class=\"lotteryFunds\">{{lotteryFunds}} SJP</div>-->\n                      <div class=\"lotteryFunds\">{{lotteryFunds}} <img style=\"width:24px;\" src=\"assets/img/logo_small.png\" alt=\"logo\"></div>\n                      <div class=\"buttonSector\">\n                        <div id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Tickets</p></div>\n                      </div>\n                    </div>\n                  </div>\n                </td>\n\n                <td style=\"vertical-align: top; padding-left: 5%;\">\n                  <div class=\"cube\" style=\"margin-top: 35px;\">\n                    <div class=\"side\" id=\"side-1\" (click)=\"buyTicketRedirect('jackpot_4x21')\"><img style=\"width: inherit;\" src=\"assets/img/4_21_small.jpg\"></div>\n                    <div class=\"side\" id=\"side-2\" (click)=\"buyTicketRedirect('jackpot_6x45')\"><img style=\"width: inherit;\" src=\"assets/img/6_45_small.jpg\"></div>\n                    <div class=\"side\" id=\"side-3\" (click)=\"buyTicketRedirect('jackpot_5x36')\"><img style=\"width: inherit;\" src=\"assets/img/5_36_small.jpg\"></div>\n                    <div class=\"side\" id=\"side-4\" (click)=\"buyTicketRedirect('rapidos')\"><img style=\"width: inherit;\" src=\"assets/img/rapidos_small.jpg\"></div>\n                    <div class=\"side\" id=\"side-5\" (click)=\"buyTicketRedirect('two_numbers')\"><img style=\"width: inherit;\" src=\"assets/img/two_numbers_small.jpg\"></div>\n                    <div class=\"side\" id=\"side-6\" (click)=\"buyTicketRedirect('prize_jackpot')\"><img style=\"width: inherit;\" src=\"assets/img/prize_jackpot_small.jpg\"></div>\n                  </div>\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n                  <div class=\"ok\" (click)=\"addTicket()\"><p>+ Add Ticket</p></div>\n                  <!--<div id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Ticket</p></div>-->\n                </td>\n              </tr>\n            </table>\n          </div>\n"

/***/ }),

/***/ "../../../../../src/app/components/buy-test/buy-test.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BuyTestComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var BuyTestComponent = (function () {
    function BuyTestComponent(router, lottery, tpService) {
        this.router = router;
        this.lottery = lottery;
        this.tpService = tpService;
        this.blocks = [];
        this.combination = [];
        this.combinations = [];
        this.tableData = [];
        this.tickets = [];
        this.raffles = [];
        this.lottery_description = 0;
        this.testFlag = false;
        var lotteryTypes = ["jackpot_4x21", "jackpot_5x36", "jackpot_6x45", "rapidos", "two_numbers", "prize_jackpot"];
        var scratchTypes = ["777", "100CASH", "fruity"];
        //if (this.tpService.getLotteryType() == null || this.tpService.getLotteryType() == "" || lotteryTypes.indexOf(this.tpService.getLotteryType()) == -1) {
        if (this.tpService.getLotteryType() == null || lotteryTypes.indexOf(this.tpService.getLotteryType()) == -1) {
            if (scratchTypes.indexOf(this.tpService.getLotteryType()) != -1) {
                this.router.navigateByUrl('/scratch');
            }
            else {
                this.router.navigateByUrl('/privateOffice');
            }
        }
        else {
        }
    }
    BuyTestComponent.prototype.ngOnInit = function () {
        //this.countDown();
        var _this = this;
        setInterval(function () {
            _this.countDown();
        }, 1000);
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
                _this.jackpot_5_36_value = res.json().data.jackpot_5x36;
                _this.jackpot_6_45_value = res.json().data.jackpot_6x45;
                _this.jackpot_4_21_value = res.json().data.jackpot_4x21;
                _this.rapidos_value = res.json().data.rapidos;
                _this.two_numbers_value = res.json().data.two_numbers;
                _this.prize_jackpot_value = res.json().data.prize_jackpot;
                switch (_this.tpService.getLotteryType()) {
                    case "jackpot_5x36": {
                        _this.lotteryFunds = res.json().data.jackpot_5x36;
                        break;
                    }
                    case "jackpot_4x21": {
                        _this.lotteryFunds = res.json().data.jackpot_4x21;
                        break;
                    }
                    case "jackpot_6x45": {
                        _this.lotteryFunds = res.json().data.jackpot_6x45;
                        break;
                    }
                    case "rapidos": {
                        _this.lotteryFunds = res.json().data.rapidos;
                        break;
                    }
                    case "two_numbers": {
                        _this.lotteryFunds = res.json().data.two_numbers;
                        break;
                    }
                    case "prize_jackpot": {
                        _this.lotteryFunds = res.json().data.prize_jackpot;
                        break;
                    }
                    default: {
                        break;
                    }
                }
                _this.lotteryFunds += 1;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        switch (this.tpService.getLotteryType()) {
            case "jackpot_5x36": {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryName = "Jackpot 5x36";
                this.lotteryBunner = "assets/img/5_36.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "url(assets/img/b_5_36.jpg)";
                this.lottery_description = 2;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
                //statements;
                break;
            }
            case "jackpot_6x45": {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryName = "Jackpot 6x45";
                this.lotteryBunner = "assets/img/6_45.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "url(assets/img/b_6_45.jpg)";
                this.lottery_description = 3;
                this.testFlag = true;
                break;
            }
            case "jackpot_4x21": {
                this.maxNumber = 21;
                this.combinationSize = 4;
                this.lotteryName = "Jackpot 4x21";
                this.lotteryBunner = "assets/img/4_21.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "url(assets/img/b_4_21.jpg)";
                this.lottery_description = 1;
                break;
            }
            case "rapidos": {
                this.maxNumber = 20;
                this.combinationSize = 8;
                this.lotteryName = "Rapidos";
                this.lotteryBunner = "assets/img/rapidos.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
                this.backgroundImage = "url(assets/img/b_rapidos.jpg)";
                this.lottery_description = 4;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_rapidos.jpg");');
                //statements;
                break;
            }
            case "two_numbers": {
                this.maxNumber = 100;
                this.combinationSize = 2;
                this.lotteryName = "Two Numbers";
                this.lotteryBunner = "assets/img/supers.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
                this.backgroundImage = "url(assets/img/b_two_numbers.jpg)";
                this.lottery_description = 5;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_supers.jpg");');
                //statements;
                break;
            }
            case "prize_jackpot": {
                this.maxNumber = 24;
                this.combinationSize = 12;
                this.lotteryName = "Prize&Jackpot";
                this.lotteryBunner = "assets/img/prize_jackpot.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
                this.backgroundImage = "url(assets/img/b_prize_jackpot.jpg)";
                this.lottery_description = 6;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_top3.jpg");');
                //statements;
                break;
            }
            default: {
                //statements;
                break;
            }
        }
        var newCombination = [];
        this.combinations.push(newCombination);
        this.addTicketToTable();
        this.raffles.push(1);
        window.scrollTo(0, 0);
    };
    BuyTestComponent.prototype.addTicketToTable = function () {
        var blocks = [];
        for (var i = 0; i < this.maxNumber; i++) {
            var block = {
                num: i + 1,
                clicked: false
            };
            blocks.push(block);
        }
        var numberTable = [];
        if (this.maxNumber == 36) {
            var k = 0;
            for (var i = 0; i < 6; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 45) {
            var k = 0;
            for (var i = 0; i < 9; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 20) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 49) {
            var k = 0;
            for (var i = 0; i < 7; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 21) {
            var k = 0;
            for (var i = 0; i < 3; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 100) {
            var k = 0;
            for (var i = 0; i < 20; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 24) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        this.tickets.push(numberTable);
    };
    BuyTestComponent.prototype.addDelete = function (block, i) {
        if (block.clicked == false) {
            if (this.combinations[i].length < this.combinationSize) {
                block.clicked = true;
                this.combinations[i].push(block.num);
            }
        }
        else {
            block.clicked = false;
            var index = this.combinations[i].indexOf(block.num);
            this.combinations[i].splice(index, 1);
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTestComponent.prototype.addRaffle = function (i) {
        this.raffles[i] = this.raffles[i] + 1;
    };
    BuyTestComponent.prototype.removeRaffle = function (i) {
        if (this.raffles[i] > 1) {
            this.raffles[i] = this.raffles[i] - 1;
        }
    };
    BuyTestComponent.prototype.removeTicket = function (index) {
        this.combinations.splice(index, 1);
        this.tickets.splice(index, 1);
        this.raffles.splice(index, 1);
        this.lotteryFunds -= 1;
    };
    BuyTestComponent.prototype.buyTickets = function () {
        var _this = this;
        var t_arr = [];
        for (var i = 0; i < this.combinations.length; i++) {
            var ticket = {
                combination: this.combinations[i],
                raffles: this.raffles[i]
            };
            t_arr.push(ticket);
        }
        var new_bets = {
            type: this.tpService.getLotteryType(),
            combinations: this.combinations
        };
        var tickets = {
            type: this.tpService.getLotteryType(),
            tickets: t_arr
        };
        this.lottery.buyTickets(tickets)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.tpService.setNewBets(new_bets);
                _this.tpService.setLotteryType("");
                _this.router.navigateByUrl('/my-bets');
            }
            else {
            }
        }, function (err) {
            console.log(err);
        });
    };
    BuyTestComponent.prototype.checkCombination = function () {
        if (this.combination.length > this.combinationSize) {
            alert("You've selected more than " + this.combinationSize + "  numbers");
        }
        if (this.combination.length < this.combinationSize) {
            alert("You've selected less than " + this.combinationSize + "  numbers");
        }
    };
    BuyTestComponent.prototype.selectRandom = function () {
        for (i = 0; i < this.tickets.length; i++) {
            var r_comb = [];
            while (r_comb.length < this.combinationSize) {
                var element = this.randomInt(1, this.maxNumber);
                if (r_comb.indexOf(element) < 0) {
                    r_comb.push(element);
                }
            }
            for (var j = 0; j < this.tickets[i].length; j++) {
                for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                    var block = _a[_i];
                    if (r_comb.indexOf(block.num) > -1) {
                        block.clicked = true;
                    }
                    else {
                        block.clicked = false;
                    }
                }
            }
            this.combinations[i] = r_comb;
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTestComponent.prototype.chooseForMe = function (i) {
        var r_comb = [];
        while (r_comb.length < this.combinationSize) {
            var element = this.randomInt(1, this.maxNumber);
            if (r_comb.indexOf(element) < 0) {
                r_comb.push(element);
            }
        }
        for (var j = 0; j < this.tickets[i].length; j++) {
            for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                var block = _a[_i];
                if (r_comb.indexOf(block.num) > -1) {
                    block.clicked = true;
                }
                else {
                    block.clicked = false;
                }
            }
        }
        this.combinations[i] = r_comb;
        /*let flag = false;
          if (this.combinations[i].length != this.combinationSize) {
            flag = true;
          }*/
        var flag = false;
        for (var k = 0; k < this.combinations.length; k++) {
            if (this.combinations[k].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTestComponent.prototype.randomInt = function (min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    };
    BuyTestComponent.prototype.addTicket = function () {
        this.addTicketToTable();
        var newCombination = [];
        this.combinations.push(newCombination);
        this.raffles.push(1);
        this.lotteryFunds += 1;
    };
    BuyTestComponent.prototype.countDown = function () {
        var countDownDate = this.getCountDownDate();
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000)).getTime();
        var distance = countDownDate - now;
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        this.cd = hours + "h " + minutes + "m " + seconds + "s ";
    };
    BuyTestComponent.prototype.getCountDownDate = function () {
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        if (this.lotteryName == "Jackpot 4x21") {
            if (now.getHours() >= 23) {
                cd.setHours(3);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 2 && now.getHours() >= 0) {
                cd.setHours(3);
            }
            else if (now.getHours() >= 2 && now.getHours() < 5) {
                cd.setHours(5);
            }
            else if (now.getHours() >= 5 && now.getHours() < 8) {
                cd.setHours(8);
            }
            else if (now.getHours() >= 8 && now.getHours() < 11) {
                cd.setHours(11);
            }
            else if (now.getHours() >= 11 && now.getHours() < 14) {
                cd.setHours(14);
            }
            else if (now.getHours() >= 14 && now.getHours() < 17) {
                cd.setHours(17);
            }
            else if (now.getHours() >= 17 && now.getHours() < 20) {
                cd.setHours(23);
            }
            else if (now.getHours() >= 20 && now.getHours() < 23) {
                cd.setHours(23);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 5x36") {
            if (now.getHours() >= 22) {
                cd.setHours(4);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 4 && now.getHours() >= 0) {
                cd.setHours(4);
            }
            else if (now.getHours() >= 4 && now.getHours() < 10) {
                cd.setHours(10);
            }
            else if (now.getHours() >= 10 && now.getHours() < 16) {
                cd.setHours(16);
            }
            else if (now.getHours() >= 16 && now.getHours() < 22) {
                cd.setHours(22);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 6x45") {
            if (now.getHours() >= 21) {
                cd.setHours(9);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 9 && now.getHours() >= 0) {
                cd.setHours(9);
            }
            else if (now.getHours() >= 9 && now.getHours() < 21) {
                cd.setHours(21);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Rapidos") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
                cd.setMinutes(15);
            }
            else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
                cd.setMinutes(30);
            }
            else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
                cd.setMinutes(45);
            }
            else if (now.getMinutes() >= 45) {
                cd.setMinutes(0);
                cd.setHours(now.getHours() + 1);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Two Numbers") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
                cd.setMinutes(20);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
                cd.setMinutes(35);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 50) {
                cd.setMinutes(50);
            }
            else if (now.getMinutes() >= 50 && now.getMinutes() < 0) {
                cd.setMinutes(5);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
                cd.setMinutes(5);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Prize&Jackpot") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
                cd.setMinutes(25);
            }
            else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
                cd.setMinutes(40);
            }
            else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
                cd.setMinutes(55);
            }
            else if (now.getMinutes() >= 55 && now.getMinutes() < 0) {
                cd.setMinutes(10);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
                cd.setMinutes(10);
            }
            cd.setSeconds(0);
        }
        return cd.getTime();
    };
    BuyTestComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        location.reload();
    };
    BuyTestComponent.prototype.removeButtonFlag = function () {
        if (this.tickets.length > 1) {
            return true;
        }
        else {
            return false;
        }
    };
    BuyTestComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return BuyTestComponent;
}());
BuyTestComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-buy-test',
        template: __webpack_require__("../../../../../src/app/components/buy-test/buy-test.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/buy-test/buy-test.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], BuyTestComponent);

var _a, _b, _c;
//# sourceMappingURL=buy-test.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/buy-ticket/buy-ticket.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-dark {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  margin: 0;\r\n  margin-left:5px;\r\n}\r\n\r\nh2 {\r\n  margin-bottom: 10px;\r\n  color: black;\r\n}\r\n\r\nh4 {\r\n  color: black;\r\n}\r\n\r\n.border {\r\n  /*width: 535px;\r\n  height: 350px;\r\n  padding: 15px;*/\r\n  width: 630px;\r\n  /*width: 80%;*/\r\n  padding: 15px;\r\n}\r\n\r\n.ok {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 630px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n}\r\n\r\n.ok:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.ok p {\r\n  margin-top: 5px;\r\n}\r\n\r\nul {\r\n  list-style: none;\r\n  padding: 0;\r\n  margin:0;\r\n}\r\n\r\n.border ul button {\r\n  text-decoration: none;\r\n  color: #FFF;\r\n  border: none;\r\n  cursor: pointer;\r\n  color: #000;\r\n}\r\n\r\n.border ul li button{\r\n  width: 70px;\r\n  background: #FFF;\r\n  height: 70px;\r\n  border-radius: 50%;\r\n  border: 1px solid #000;\r\n  float: left;\r\n  margin: 5px;\r\n  margin-left: 8px; /* Для Firefox */\r\n  -webkit-column-count: 4; /* Для Safari и Chrome */\r\n  column-count: 4;\r\n  font-size: 22px;\r\n  font-weight: bold;\r\n\r\n  /*text-shadow:\r\n  -1px -1px 0 #000,\r\n  1px -1px 0 #000,\r\n  -1px 1px 0 #000,\r\n  1px 1px 0 #000;*/\r\n\r\n  /*border: 1px solid rgba(0,0,0,0.5);\r\n  border-bottom: 3px solid rgba(0,0,0,0.5);*/\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n\r\n  /*background: rgba(0,0,0,0.25);*/\r\n\r\n  /*box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);*/\r\n}\r\n\r\n.border ul li button:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n  transition: 0.3s;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.border ul li .clicked {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.timer {\r\n  margin:0;\r\n  padding: 0;\r\n  text-align: center;\r\n}\r\n\r\n.container {\r\n  margin-top: 35px;\r\n  margin-left: 5%;\r\n  height: 100%;\r\n}\r\n\r\n#rules {\r\n  text-align: top;\r\n  -ms-flex-line-pack: stretch;\r\n      align-content: stretch;\r\n  -ms-flex-align: stretch;\r\n      align-items: stretch;\r\n}\r\n\r\n.nav > li > button.active, .nav > li > button:hover {\r\n    background-color: #fff;\r\n    color: #000;\r\n}\r\n\r\n#random-button:hover {\r\n  color: #000;\r\n  background-color: #FFF;\r\n}\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  position: fixed;\r\n  z-index: 10;\r\n  padding-top: 107px;\r\n  padding-left: 20px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n.container {\r\n  /*margin-left: 10px;*/\r\n  width: 80%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n  margin-top: 8%;\r\n  padding-left: 10%;\r\n  /*position: fixed;*/\r\n  left: 1%;\r\n\r\n\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  /*margin-left: 85%;*/\r\n  /*margin-top: 5%;*/\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.card {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card img {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n  text-transform: uppercase;\r\n  color: black;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n  color: black;\r\n}\r\n\r\n.top-panel-button {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  /*display: inline-block;*/\r\n}\r\n\r\n.top-panel-button:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  /*transition: 0.3s;*/\r\n}\r\n\r\n.top-panel-button:visited {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button:active {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.btn-dark.top-panel-button.active.show {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n}\r\n\r\n.top-panel-button:link {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button p {\r\n  margin-top: 5px;\r\n}\r\n\r\n#buyButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n#buyButton:hover{\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n#ballsContainer {\r\n  background-color: white;\r\n}\r\n\r\n.btn-shake:hover {\r\n    /* Start the shake animation and make the animation last for 0.5 seconds */\r\n    animation: shake 0.5s;\r\n    /* When the animation is finished, start again */\r\n    /*animation-iteration-count: infinite;*/\r\n    animation-iteration-count: 1;\r\n}\r\n\r\n@keyframes shake {\r\n    0% { transform: translate(1px, 1px) rotate(0deg); }\r\n    10% { transform: translate(-1px, -2px) rotate(-1deg); }\r\n    20% { transform: translate(-3px, 0px) rotate(1deg); }\r\n    30% { transform: translate(3px, 2px) rotate(0deg); }\r\n    40% { transform: translate(1px, -1px) rotate(1deg); }\r\n    50% { transform: translate(-1px, 2px) rotate(-1deg); }\r\n    60% { transform: translate(-3px, 1px) rotate(0deg); }\r\n    70% { transform: translate(3px, 1px) rotate(-1deg); }\r\n    80% { transform: translate(-1px, -1px) rotate(1deg); }\r\n    90% { transform: translate(1px, 2px) rotate(0deg); }\r\n    100% { transform: translate(1px, -2px) rotate(-1deg); }\r\n}\r\n\r\n.btn-zoom {\r\n  transition: transform .2s; /* Animation */\r\n}\r\n\r\n.btn-zoom:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n#rules {\r\n  background-color: white;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/buy-ticket/buy-ticket.component.html":
/***/ (function(module, exports) {

module.exports = "<img src=\"{{backgroundImage}}\" style=\"position: fixed; width: 100%; height: 100%\">\r\n\r\n<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n          <div id=\"navbar\">\r\n            <p><a routerLink=\"/privateOffice\">Buy Ticket</a></p>\r\n            <p><a routerLink=\"/my-bets\">My Bets</a></p>\r\n            <p><a routerLink=\"/my-tokens\">My Tokens</a></p>\r\n            <p><a routerLink=\"/my-statistics\">Statistics</a></p>\r\n            <p><a routerLink=\"/settings\">Settings</a></p>\r\n            <p><a routerLink=\"/faq\">FAQ</a></p>\r\n            <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\r\n            <hr>\r\n            <p><a routerLink=\"/buy-test\">Switch Design</a></p>\r\n          </div>\r\n\r\n          <div class=\"container\" align=\"center\">\r\n            <table border=\"0\" style=\"margin-bottom: 50px; table-layout: auto; width: 100%;\" width=\"100%\">\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\">\r\n                <!--<ul class=\"nav\">\r\n                  <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 312px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\r\n                  <li><button class=\"btn-dark top-panel-button\" style=\"width: 312px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\r\n                </ul>-->\r\n                <div style=\"width: 630px;\">\r\n                  <ul class=\"nav\">\r\n                    <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 312px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\r\n                    <li><button class=\"btn-dark top-panel-button\" style=\"width: 312px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\r\n                  </ul>\r\n                </div>\r\n              </td>\r\n                <td align=\"center\" style=\"padding-left: 80px;\">\r\n                  <!--<h2><b>SUPER</b>JACK<b>POT</b></h2>-->\r\n                  <a routerLink=\"/privateOffice\"><h2 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h2></a>\r\n                  <!--<h4>{{cd}}</h4>-->\r\n                </td>\r\n              </tr>\r\n\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\">\r\n\r\n                  <div class=\"tab-content\">\r\n                    <div class=\"tab-pane fade show active\" id=\"tickets\" role=\"tabpanel\">\r\n\r\n                      <div *ngFor=\"let t of tickets; let i = index\">\r\n                      <div class=\"border\" id=\"ballsContainer\">\r\n                      <table align=\"center\" id=\"numbersTable\">\r\n                        <tr *ngFor=\"let r of tickets[i]\">\r\n                          <td *ngFor=\"let block of r\">\r\n                            <ul>\r\n                              <li>\r\n                            <button class=\"btn-zoom\"\r\n                              [class.clicked]=\"block.clicked\"\r\n                              (click)=\"addDelete(block, i)\">{{ block.num }}\r\n                            </button>\r\n                          </li>\r\n                        </ul>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <div style=\"margin-top: 6px;\">\r\n                      <div class=\"ok\" style=\"width: 207px; margin-bottom: 1px;\"><p>Raffles: {{raffles[i]}}</p></div>\r\n                      <div class=\"ok\" (click)=\"addRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>+</p></div>\r\n                      <div class=\"ok\" (click)=\"removeRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>-</p></div>\r\n                    </div>\r\n                    <div style=\"margin-top: 6px;\">\r\n                      <div class=\"ok\" style=\"width: 630px; margin-bottom: 5px;\" (click)=\"chooseForMe(i)\"><p>Choose for Me</p></div>\r\n                    </div>\r\n                    <div *ngIf=removeButtonFlag() class=\"ok\" (click)=\"removeTicket(i)\" style=\"margin-bottom: 5px;\"><p>- Remove Ticket</p></div>\r\n                    <hr>\r\n                  </div>\r\n                </div>\r\n\r\n                  <div class=\"tab-pane fade\" id=\"rules\" style=\"text-align: justify;\">\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 1\">\r\n                      <p>The 4x21 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_4_21_value}} SJP.</p>\r\n                      <hr/>\r\n                      <p><b>Time</b></p>\r\n                      <p>Drawings are held daily, at 02:00, 05:00, 08:00, 11:00, 14:00, 17:00, 20:00 and 23:00 GMT. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n                      <hr/>\r\n                      <p><b>Participation & Rules</b></p>\r\n                      <p>To participate in the Lottery, you need to choose 4 numbers from 1 to 21 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n                        <hr/>\r\n                      <p><b>Distribution of Funds</b></p>\r\n                      The price of one ticket  -  1 SJP\r\n                      Funds collected from ticket sales for each drawing are distributed as follows:\r\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n                      70% goes to the Prize pool for the current drawing:<br/>\r\n                      The distribution of the Prize pool by the number of guessed numbers<br/>\r\n                      2 - 32% of the Prize Pool / The number of Players who matched 2 numbers<br/>\r\n                      3\t- 33% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n                      4\t- 35% of the Prize Pool – Jackpot<br/>\r\n                      9% are used to cover technical and operating expenses.<hr/>\r\n                      <p><b>Jackpot</b></p>\r\n                      35% of the Prize pool (Category 4) are always rolled over to the Jackpot for the following drawing. The Jackpot built up over the previous drawings is divided between the  Owners of the tickets with 4 matching numbers. If there are no such tickets, the current Jackpot is rolled over to the Jackpot for the following drawing. In category 2, 3 the winning amount is divided by the number of Winners in this category. If there are no Winners, then the Prize pool of these categories also goes to the Jackpot of the following drawing.<hr/>\r\n                      <p><b>Casting</b></p>\r\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE<hr/>\r\n                      <p><b>Taxes</b></p>\r\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.<hr/>\r\n                      <p><b>Agreement</b></p>\r\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 2\">\r\n                      <p>The 5x36 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_5_36_value}} SJP.</p>\r\n                      <hr/>\r\n                      <p><b>Time</b></p>\r\n                      Drawings are held daily, at 04:00, 10:00, 16:00 and 22:00 GMT.\r\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n                      <hr/>\r\n                      <p><b>Participation & Rules</b></p>\r\n                      To participate in the Lottery, you need to choose 5 numbers from 1 to 36 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n                      <hr/>\r\n                      <p><b>Distribution of Funds</b></p>\r\n                      The price of one ticket  -  2 SJP\r\n                      Funds collected from ticket sales for each drawing are distributed as follows:\r\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n                      70% goes to the Prize pool for the current drawing:\r\n                      There are four winning categories in the Lottery: two with fixed winnings and two with accumulated Jackpot.<br/>\r\n                      2 - 2 SJP / The number of Players who matched 2 numbers <br/>\r\n                      3\t- 20 SJP / The number of Players who matched 3 numbers<br/>\r\n                      4\t- 50% / The number of Players who matched 4 numbers\t<br/>\r\n                      5 - 50% / Jackpot<br/>\r\n                      First, fixed winnings are calculated for 2 and 3 guessed numbers. After that, the rest of the Prize pool is divided equally between the categories 4 and 5  (Jackpot). If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n                      9% are used to cover technical and operating expenses.\r\n                      <hr/>\r\n                      <p><b>Casting</b></p>\r\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n                      <hr/>\r\n                      <p><b>Taxes</b></p>\r\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n                      <hr/>\r\n                      <p><b>Agreement</b></p>\r\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 3\">\r\n                      <p>The 6x45 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_6_45_value}} SJP.</p>\r\n                      <hr/>\r\n                      <p><b>Time</b></p>\r\n                      Drawings are held daily, at 09:00 and 21:00 GMT.\r\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n                      <hr/>\r\n                      <p><b>Participation & Rules</b></p>\r\n                      To participate in the Lottery, you need to choose 6 numbers from 1 to 45 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n                      <hr/>\r\n                      <p><b>Distribution of Funds</b></p>\r\n                      The price of one ticket  -  3 SJP\r\n                      Funds collected from ticket sales for each drawing are distributed as follows:\r\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n                      70% goes to the Prize pool for the current drawing:\r\n                      Win combinations in which in one field 2, 3, 4, 5 or 6 numbers from 45 coincide with winning numbers.\r\n                      Those participants who guessed the 2 numbers receive 3 SJP each. The remaining Prize pool is distributed in the following percentage:<br/>\r\n                      3\t- 24% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n                      4\t- 14% of the Prize Pool / The number of Players who matched 4 numbers<br/>\r\n                      5\t- 26% of the Prize Pool / The number of Players who matched 5 numbers\t<br/>\r\n                      6\t- 36% of the Prize Pool – Jackpot<br/>\r\n                      Guessing 6 numbers, You get a Jackpot! The Jackpot is accumulated. Therefore, if no one guesses 6 numbers in the current draw, the accumulated amount goes to the next draw Jackpot Prize pool. In category 3, 4, 5 the winning amount is divided by the number of Winners in this category. If there are no Winners in any of these categories, then the Prize pool of these categories also goes to the Jackpot of the following drawing.\r\n                      9% are used to cover technical and operating expenses.\r\n                      <hr/>\r\n                      <p><b>Casting</b></p>\r\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n                      <hr/>\r\n                      <p><b>Taxes</b></p>\r\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n                      <hr/>\r\n                      <p><b>Agreement</b></p>\r\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 4\">\r\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\n                      The Rapidos Lottery has a minimum guaranteed Jackpot of {{rapidos_value}} SJP and to win a Jackpot, you just need to guess 8 numbers out of 20 in the first part of the field and one number in four - in the second part.\r\n                      <hr/>\r\n                      <p><b>Time</b></p>\r\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n                      The price of one ticket  -  1 SJP\r\n                      <hr/>\r\n                      <p><b>How to play</b></p>\r\n                      In a ticket - only one playing field, consisting of two parts (the first and second).<br/>\r\n                      • You need to choose 8 non-repeating numbers from 1 to 20 in the first part of the playing field and one number from 1 to 4 - in the second part.<br/>\r\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n                      • To participate in several runs, specify their number in a special column.<br/>\r\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n                      <hr/>\r\n                      <p><b>What can be won?</b></p>\r\n\r\n                      In Rapid SJP there are 9 categories of winnings.<br/>\r\n                      All winnings, except for the Jackpot, are fixed. The minimum winnings are 1 SJP.<br/>\r\n\r\n                    <table class=\"table table-dark\" style=\"text-align: left;\">\r\n                      <thead>\r\n                        <tr colspan=\"3\">\r\n                          <th>You can win in Rapidos</th>\r\n                        </tr>\r\n                      </thead>\r\n                      <tbody>\r\n                        <tr>\r\n                          <td>Guessed the numbers in the first part of the field</td>\r\n                          <td>Guessed the numbers in the second part of the field</td>\r\n                          <td>You win</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>8</td>\r\n                          <td>1</td>\r\n                          <td>Jackpot</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>8</td>\r\n                          <td>0</td>\r\n                          <td>1 000 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>7</td>\r\n                          <td>1</td>\r\n                          <td>150 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>7</td>\r\n                          <td>0</td>\r\n                          <td>50 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>6</td>\r\n                          <td>1</td>\r\n                          <td>30 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>6</td>\r\n                          <td>0</td>\r\n                          <td>10 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>5</td>\r\n                          <td>1</td>\r\n                          <td>5 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>5</td>\r\n                          <td>0</td>\r\n                          <td>2 SJP</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>4</td>\r\n                          <td>1</td>\r\n                          <td>1 SJP</td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table>\r\n                    The Jackpot is received by the one who guessed 8 numbers in the first part of the field and one number in the second. The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. Therefore, if no one guesses the combination of the draw in the current draw, the accumulated amount goes to the next draw.\r\n                    <hr/>\r\n                    <p><b>Casting</b></p>\r\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n                    <hr/>\r\n                    <p><b>Taxes</b></p>\r\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n                    <hr/>\r\n                    <p><b>Agreement</b></p>\r\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 5\">\r\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\n                    The Two Numbers  Lottery is one of the most simple and popular Lotteries in the world since ancient times.\r\n                    <hr/>\r\n                    <p><b>Time</b></p>\r\n                    Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n                    The price of one ticket  -  2 SJP\r\n                    <hr/>\r\n                    <p><b>How to play</b></p>\r\n                    In a ticket - only one playing field, consisting of two parts (the first and second). <br/>\r\n                    • You need to choose 1 numbers from 1 to 100 in the first part of the playing field and one number from 1 to 8 - in the second part.<br/>\r\n                    • To participate in several runs, specify their number in a special column.<br/>\r\n                    • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n                    When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n                    <hr/>\r\n                    <p><b>What can be won?</b></p>\r\n                    The Jackpot is received by the one who guessed one number in the first part of the field and one number in the second.\r\n                    <table class=\"table table-dark\">\r\n                      <thead>\r\n                        <tr colspan=\"3\">\r\n                          <th>You can win in Two Numbers Lottery</th>\r\n                        </tr>\r\n                      </thead>\r\n                      <tbody>\r\n                        <tr>\r\n                          <td>Guessed the numbers in the first part of the field</td>\r\n                          <td>Guessed the numbers in the second part of the field</td>\r\n                          <td>You win</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>1</td>\r\n                          <td>1</td>\r\n                          <td>Jackpot</td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>1</td>\r\n                          <td>0</td>\r\n                          <td>150 SJP</td>\r\n                        </tr>\r\n                      </tbody>\r\n                    </table>\r\n                    First, fixed winnings are calculated for 1 guessed number. After that, the rest of the Prize pool transferees to Jackpot and distributes equally among the Winners. The Jackpot is accumulative. Therefore, if there were no Winners in these two categories, then the Prize pool will be transferred to the next draw Jackpot Prize pool.\r\n                    <hr/>\r\n                    <p><b>Casting</b></p>\r\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n                    <hr/>\r\n                    <p><b>Taxes</b></p>\r\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n                    <hr/>\r\n                    <p><b>Agreement</b></p>\r\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 6\">\r\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.\r\n                      The 24/12 SJP Lottery has a minimum guaranteed Jackpot of {{prize_jackpot_value }} SJP and  this is the only lottery where you can win a Jackpot without guessing a single number. Also the Jackpot is received by those who guess 12 numbers from 24.\r\n                      <p><b>Time</b></p>\r\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n                      The price of one ticket  -  1 SJP\r\n                      <hr/>\r\n                      <p><b>How to play</b></p>\r\n                      The ticket Prize&Jackpot Lottery consists of one field with numbers from 1 to 24. <br/>\r\n                      • Select 12 non-repeating numbers from 1 to 24.<br/>\r\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n                      • To participate in several runs, specify their number in a special column.<br/>\r\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!\r\n                      <hr/>\r\n                      <p><b>How to increase the chances?</b></p>\r\n                      The chance of winning the lottery is regarded as one to 4.5. This is one of the highest figures among lotteries.\r\n                      <p>Now multiply the winnings! To do this, select the multiplier (maximum - 100).\r\n                      It will multiply all your winnings, except for the Jackpot.</p>\r\n                      <p>Also you can choose the number of runs in which your ticket will participate. The maximum number of runs is 100.</p>\r\n                      <hr/>\r\n                      <p><b>What can be won?</b></p>\r\n                      Winners are considered to be combinations in which 0, 1, 2, 3, 4, 8, 9, 10, 11 or 12 numbers coincide with the numbers in the draw. All winnings, except for the Prize and the Jackpot, are fixed. The minimum winnings are 2 SJP.\r\n\r\n                      <table class=\"table table-dark\">\r\n                        <thead>\r\n                          <tr colspan=\"2\">\r\n                            <th>You can win in Prize&Jackpot Lottery</th>\r\n                          </tr>\r\n                        </thead>\r\n                        <tbody>\r\n                          <tr>\r\n                            <td>Guessed the numbers</td>\r\n                            <td>You win</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>0 or 12 guessed numbers</td>\r\n                            <td>50% of the Prize pool / Jackpot</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>1 or 11 guessed numbers</td>\r\n                            <td>50% of the Prize pool / Prize</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>2 or 10 guessed numbers</td>\r\n                            <td>25 SJP</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>3 or 9 guessed numbers</td>\r\n                            <td>5 SJP</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>4 or 8 guessed numbers</td>\r\n                            <td>2 SJP</td>\r\n                          </tr>\r\n                        </tbody>\r\n                        <tr colspan=\"2\">\r\n                          <td>Combinations in which 5, 6 and 7 numbers have coincided, do not win.</td>\r\n                        </tr>\r\n                      </table>\r\n                      The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. First, fixed winnings are calculated. After that, the rest of the Prize pool is divided equally between the categories Prize and Jackpot. If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n                      <hr/>\r\n                      <p><b>Casting</b></p>\r\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n                      <hr/>\r\n                      <p><b>Taxes</b></p>\r\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n                      <hr/>\r\n                      <p><b>Agreement</b></p>\r\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n                    </div>\r\n\r\n                    <div class=\"border\">\r\n                    <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n                    <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n                       <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n                       <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n                      <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n                      <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n                      <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n                      <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n                      <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n                      <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n                      <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n                      <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n                      <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n                      <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n                      <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n                      <h5>How to withdraw winnings to a bank account</h5>\r\n                      <table class=\"table-dark\">\r\n                        <thead>\r\n                          <tr>\r\n                            <th>Approach</th>\r\n                            <th>Algorithm of actions</th>\r\n                            <th>Comments, restrictions</th>\r\n                          </tr>\r\n                        </thead>\r\n                        <tbody>\r\n                          <tr>\r\n                            <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n                            <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n                            <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n                          </tr>\r\n                          <tr>\r\n                            <td>SJP conversion with third party exchange services </td>\r\n                            <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n                            <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n                          </tr>\r\n                        </tbody>\r\n                      </table>\r\n                    </div>\r\n\r\n\r\n                  </div>\r\n\r\n\r\n\r\n                </div>\r\n                </td>\r\n                <td rowspan=\"1\" style=\"padding-left: 80px;\" valign=\"top\" align=\"center\">\r\n                  <h4>{{cd}}</h4>\r\n                  <div class=\"timer\">\r\n                    <div class=\"card\" style=\"width: 15rem;  margin: 0 auto; \">\r\n                      <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" alt=\"Card image cap\">\r\n                      <div class=\"lotteryTitle\">{{lotteryName}}</div>\r\n                      <!--<div class=\"lotteryFunds\">{{lotteryFunds}} SJP</div>-->\r\n                      <div class=\"lotteryFunds\">{{lotteryFunds}} <img style=\"width:24px;\" src=\"assets/img/logo_small.png\" alt=\"logo\"></div>\r\n                      <div class=\"buttonSector\">\r\n                        <div id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Tickets</p></div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </td>\r\n\r\n                <td style=\"vertical-align: top; padding-left: 5%;\">\r\n                  <app-cube></app-cube>\r\n                </td>\r\n              </tr>\r\n\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\">\r\n                  <div class=\"ok\" (click)=\"addTicket()\"><p>+ Add Ticket</p></div>\r\n                  <!--<div id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Ticket</p></div>-->\r\n                </td>\r\n              </tr>\r\n            </table>\r\n          </div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/buy-ticket/buy-ticket.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return BuyTicketComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var BuyTicketComponent = (function () {
    function BuyTicketComponent(router, lottery, tpService) {
        this.router = router;
        this.lottery = lottery;
        this.tpService = tpService;
        this.blocks = [];
        this.combination = [];
        this.combinations = [];
        this.tableData = [];
        this.tickets = [];
        this.raffles = [];
        this.lottery_description = 0;
        var lotteryTypes = ["jackpot_4x21", "jackpot_5x36", "jackpot_6x45", "rapidos", "two_numbers", "prize_jackpot"];
        var scratchTypes = ["777", "100CASH", "fruity"];
        if (this.tpService.getLotteryType() == null || lotteryTypes.indexOf(this.tpService.getLotteryType()) == -1) {
            if (scratchTypes.indexOf(this.tpService.getLotteryType()) != -1) {
                if (this.tpService.getWannaGive() === 'yes') {
                    this.router.navigateByUrl('/give-scratch');
                }
                else {
                    this.router.navigateByUrl('/scratch');
                }
            }
            else {
                this.router.navigateByUrl('/privateOffice');
            }
        }
        else {
            if (this.tpService.getWannaGive() === 'yes') {
                this.router.navigateByUrl('/give-ticket');
            }
            else {
                //this.router.navigateByUrl('/scratch');
            }
        }
    }
    BuyTicketComponent.prototype.ngOnInit = function () {
        //this.countDown();
        var _this = this;
        setInterval(function () {
            _this.countDown();
        }, 1000);
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
                _this.jackpot_5_36_value = res.json().data.jackpot_5x36;
                _this.jackpot_6_45_value = res.json().data.jackpot_6x45;
                _this.jackpot_4_21_value = res.json().data.jackpot_4x21;
                _this.rapidos_value = res.json().data.rapidos;
                _this.two_numbers_value = res.json().data.two_numbers;
                _this.prize_jackpot_value = res.json().data.prize_jackpot;
                switch (_this.tpService.getLotteryType()) {
                    case "jackpot_5x36": {
                        _this.lotteryFunds = res.json().data.jackpot_5x36;
                        break;
                    }
                    case "jackpot_4x21": {
                        _this.lotteryFunds = res.json().data.jackpot_4x21;
                        break;
                    }
                    case "jackpot_6x45": {
                        _this.lotteryFunds = res.json().data.jackpot_6x45;
                        break;
                    }
                    case "rapidos": {
                        _this.lotteryFunds = res.json().data.rapidos;
                        break;
                    }
                    /*case "top3": {
                      this.lotteryFunds = res.json().data.top3;
                      break;
                    }
                    case "supers": {
                      this.lotteryFunds = res.json().data.supers;
                      break;
                    }*/
                    case "two_numbers": {
                        _this.lotteryFunds = res.json().data.two_numbers;
                        break;
                    }
                    case "prize_jackpot": {
                        _this.lotteryFunds = res.json().data.prize_jackpot;
                        break;
                    }
                    default: {
                        //statements;
                        break;
                    }
                }
                _this.lotteryFunds += 1;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        switch (this.tpService.getLotteryType()) {
            case "lottery_5x36": {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryName = "Lottery 5x36";
                this.lotteryBunner = "assets/img/5_36.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
                //statements;
                break;
            }
            case "lottery_6x45": {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryName = "Lottery 6x45";
                this.lotteryBunner = "assets/img/6_45.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
                //statements;
                break;
            }
            case "lottery_4x20": {
                this.maxNumber = 20;
                this.combinationSize = 4;
                this.lotteryName = "Lottery 4x20";
                this.lotteryBunner = "assets/img/4_20.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "lottery_7x49": {
                this.maxNumber = 49;
                this.combinationSize = 7;
                this.lotteryName = "Lottery 7x49";
                this.lotteryBunner = "assets/img/7_49.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "jackpot_5x36": {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryName = "Jackpot 5x36";
                this.lotteryBunner = "assets/img/5_36.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_5_36.jpg";
                this.lottery_description = 2;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
                //statements;
                break;
            }
            case "jackpot_6x45": {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryName = "Jackpot 6x45";
                this.lotteryBunner = "assets/img/6_45.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_6_45.jpg";
                this.lottery_description = 3;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
                //statements;
                break;
            }
            case "jackpot_4x20": {
                this.maxNumber = 20;
                this.combinationSize = 4;
                this.lotteryName = "Jackpot 4x20";
                this.lotteryBunner = "assets/img/4_20.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "jackpot_4x21": {
                this.maxNumber = 21;
                this.combinationSize = 4;
                this.lotteryName = "Jackpot 4x21";
                this.lotteryBunner = "assets/img/4_21.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_4_21.jpg";
                this.lottery_description = 1;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_4_21.jpg");');
                //statements;
                break;
            }
            case "jackpot_7x49": {
                this.maxNumber = 49;
                this.combinationSize = 7;
                this.lotteryName = "Jackpot 7x49";
                this.lotteryBunner = "assets/img/7_49.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "rapidos": {
                this.maxNumber = 20;
                this.combinationSize = 8;
                this.lotteryName = "Rapidos";
                this.lotteryBunner = "assets/img/rapidos.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_rapidos.jpg";
                this.lottery_description = 4;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_rapidos.jpg");');
                //statements;
                break;
            }
            case "two_numbers": {
                this.maxNumber = 100;
                this.combinationSize = 2;
                this.lotteryName = "Two Numbers";
                this.lotteryBunner = "assets/img/supers.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_two_numbers.jpg";
                this.lottery_description = 5;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_supers.jpg");');
                //statements;
                break;
            }
            case "prize_jackpot": {
                this.maxNumber = 24;
                this.combinationSize = 12;
                this.lotteryName = "Prize&Jackpot";
                this.lotteryBunner = "assets/img/prize_jackpot.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_prize_jackpot.jpg";
                this.lottery_description = 6;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_top3.jpg");');
                //statements;
                break;
            }
            default: {
                //statements;
                break;
            }
        }
        var newCombination = [];
        this.combinations.push(newCombination);
        this.addTicketToTable();
        this.raffles.push(1);
        window.scrollTo(0, 0);
    };
    BuyTicketComponent.prototype.addTicketToTable = function () {
        var blocks = [];
        for (var i = 0; i < this.maxNumber; i++) {
            var block = {
                num: i + 1,
                clicked: false
            };
            blocks.push(block);
        }
        var numberTable = [];
        if (this.maxNumber == 36) {
            var k = 0;
            for (var i = 0; i < 6; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 45) {
            var k = 0;
            for (var i = 0; i < 9; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 20) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 49) {
            var k = 0;
            for (var i = 0; i < 7; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 21) {
            var k = 0;
            for (var i = 0; i < 3; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 100) {
            var k = 0;
            for (var i = 0; i < 20; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 24) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        this.tickets.push(numberTable);
    };
    BuyTicketComponent.prototype.addDelete = function (block, i) {
        if (block.clicked == false) {
            if (this.combinations[i].length < this.combinationSize) {
                block.clicked = true;
                this.combinations[i].push(block.num);
            }
        }
        else {
            block.clicked = false;
            var index = this.combinations[i].indexOf(block.num);
            this.combinations[i].splice(index, 1);
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTicketComponent.prototype.addRaffle = function (i) {
        this.raffles[i] = this.raffles[i] + 1;
    };
    BuyTicketComponent.prototype.removeRaffle = function (i) {
        if (this.raffles[i] > 1) {
            this.raffles[i] = this.raffles[i] - 1;
        }
    };
    BuyTicketComponent.prototype.removeTicket = function (index) {
        this.combinations.splice(index, 1);
        this.tickets.splice(index, 1);
        this.raffles.splice(index, 1);
        this.lotteryFunds -= 1;
    };
    BuyTicketComponent.prototype.buyTickets = function () {
        var _this = this;
        var t_arr = [];
        for (var i = 0; i < this.combinations.length; i++) {
            var ticket = {
                combination: this.combinations[i],
                raffles: this.raffles[i]
            };
            t_arr.push(ticket);
        }
        var new_bets = {
            type: this.tpService.getLotteryType(),
            combinations: this.combinations
        };
        var tickets = {
            type: this.tpService.getLotteryType(),
            tickets: t_arr
        };
        this.lottery.buyTickets(tickets)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.tpService.setNewBets(new_bets);
                _this.tpService.setLotteryType("");
                _this.router.navigateByUrl('/my-bets');
            }
            else {
            }
        }, function (err) {
            console.log(err);
        });
    };
    BuyTicketComponent.prototype.checkCombination = function () {
        if (this.combination.length > this.combinationSize) {
            alert("You've selected more than " + this.combinationSize + "  numbers");
        }
        if (this.combination.length < this.combinationSize) {
            alert("You've selected less than " + this.combinationSize + "  numbers");
        }
    };
    BuyTicketComponent.prototype.selectRandom = function () {
        for (i = 0; i < this.tickets.length; i++) {
            var r_comb = [];
            while (r_comb.length < this.combinationSize) {
                var element = this.randomInt(1, this.maxNumber);
                if (r_comb.indexOf(element) < 0) {
                    r_comb.push(element);
                }
            }
            for (var j = 0; j < this.tickets[i].length; j++) {
                for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                    var block = _a[_i];
                    if (r_comb.indexOf(block.num) > -1) {
                        block.clicked = true;
                    }
                    else {
                        block.clicked = false;
                    }
                }
            }
            this.combinations[i] = r_comb;
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTicketComponent.prototype.chooseForMe = function (i) {
        var r_comb = [];
        while (r_comb.length < this.combinationSize) {
            var element = this.randomInt(1, this.maxNumber);
            if (r_comb.indexOf(element) < 0) {
                r_comb.push(element);
            }
        }
        for (var j = 0; j < this.tickets[i].length; j++) {
            for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                var block = _a[_i];
                if (r_comb.indexOf(block.num) > -1) {
                    block.clicked = true;
                }
                else {
                    block.clicked = false;
                }
            }
        }
        this.combinations[i] = r_comb;
        /*let flag = false;
          if (this.combinations[i].length != this.combinationSize) {
            flag = true;
          }*/
        var flag = false;
        for (var k = 0; k < this.combinations.length; k++) {
            if (this.combinations[k].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag) {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    BuyTicketComponent.prototype.randomInt = function (min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    };
    BuyTicketComponent.prototype.addTicket = function () {
        this.addTicketToTable();
        var newCombination = [];
        this.combinations.push(newCombination);
        this.raffles.push(1);
        this.lotteryFunds += 1;
    };
    BuyTicketComponent.prototype.countDown = function () {
        var countDownDate = this.getCountDownDate();
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000)).getTime();
        var distance = countDownDate - now;
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        this.cd = hours + "h " + minutes + "m " + seconds + "s ";
    };
    BuyTicketComponent.prototype.getCountDownDate = function () {
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        if (this.lotteryName == "Jackpot 4x21") {
            if (now.getHours() >= 23) {
                cd.setHours(3);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 2 && now.getHours() >= 0) {
                cd.setHours(3);
            }
            else if (now.getHours() >= 2 && now.getHours() < 5) {
                cd.setHours(5);
            }
            else if (now.getHours() >= 5 && now.getHours() < 8) {
                cd.setHours(8);
            }
            else if (now.getHours() >= 8 && now.getHours() < 11) {
                cd.setHours(11);
            }
            else if (now.getHours() >= 11 && now.getHours() < 14) {
                cd.setHours(14);
            }
            else if (now.getHours() >= 14 && now.getHours() < 17) {
                cd.setHours(17);
            }
            else if (now.getHours() >= 17 && now.getHours() < 20) {
                cd.setHours(23);
            }
            else if (now.getHours() >= 20 && now.getHours() < 23) {
                cd.setHours(23);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 5x36") {
            if (now.getHours() >= 22) {
                cd.setHours(4);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 4 && now.getHours() >= 0) {
                cd.setHours(4);
            }
            else if (now.getHours() >= 4 && now.getHours() < 10) {
                cd.setHours(10);
            }
            else if (now.getHours() >= 10 && now.getHours() < 16) {
                cd.setHours(16);
            }
            else if (now.getHours() >= 16 && now.getHours() < 22) {
                cd.setHours(22);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 6x45") {
            if (now.getHours() >= 21) {
                cd.setHours(9);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 9 && now.getHours() >= 0) {
                cd.setHours(9);
            }
            else if (now.getHours() >= 9 && now.getHours() < 21) {
                cd.setHours(21);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Rapidos") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
                cd.setMinutes(15);
            }
            else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
                cd.setMinutes(30);
            }
            else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
                cd.setMinutes(45);
            }
            else if (now.getMinutes() >= 45) {
                cd.setMinutes(0);
                cd.setHours(now.getHours() + 1);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Two Numbers") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
                cd.setMinutes(20);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
                cd.setMinutes(35);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 50) {
                cd.setMinutes(50);
            }
            else if (now.getMinutes() >= 50 && now.getMinutes() < 0) {
                cd.setMinutes(5);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
                cd.setMinutes(5);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Prize&Jackpot") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
                cd.setMinutes(25);
            }
            else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
                cd.setMinutes(40);
            }
            else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
                cd.setMinutes(55);
            }
            else if (now.getMinutes() >= 55 && now.getMinutes() < 0) {
                cd.setMinutes(10);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
                cd.setMinutes(10);
            }
            cd.setSeconds(0);
        }
        return cd.getTime();
    };
    BuyTicketComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        location.reload();
    };
    BuyTicketComponent.prototype.removeButtonFlag = function () {
        if (this.tickets.length > 1) {
            return true;
        }
        else {
            return false;
        }
    };
    BuyTicketComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return BuyTicketComponent;
}());
BuyTicketComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-buy-ticket',
        template: __webpack_require__("../../../../../src/app/components/buy-ticket/buy-ticket.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/buy-ticket/buy-ticket.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], BuyTicketComponent);

var _a, _b, _c;
//# sourceMappingURL=buy-ticket.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/faq/faq.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n.table-dark {\r\n  background-color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/faq/faq.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <div class=\"cube\">\r\n        <app-cube></app-cube>\r\n      </div>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div style=\"width: 887px; padding-left: 20px; margin-bottom: 50px;\">\r\n\r\n                <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n                <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n                   <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n                   <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n                  <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n                  <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n                  <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n                  <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n                  <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n                  <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n                  <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n                  <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n                  <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n                  <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n                  <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n                  <h5>How to withdraw winnings to a bank account</h5>\r\n                  <table class=\"table-dark\">\r\n                    <thead>\r\n                      <tr>\r\n                        <th></th>\r\n                        <th>Approach</th>\r\n                        <th>Algorithm of actions</th>\r\n                        <th>Comments, restrictions</th>\r\n                      </tr>\r\n                    </thead>\r\n                    <tbody>\r\n                      <tr>\r\n                        <td>1</td>\r\n                        <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n                        <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n                        <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>2</td>\r\n                        <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n                        <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n                        <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>3</td>\r\n                        <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n                        <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n                        <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td>4</td>\r\n                        <td>SJP conversion with third party exchange services </td>\r\n                        <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n                        <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n                      </tr>\r\n                    </tbody>\r\n                  </table>\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/faq/faq.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return FaqComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var FaqComponent = (function () {
    function FaqComponent(lottery, router, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.tpService = tpService;
    }
    FaqComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    FaqComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    FaqComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return FaqComponent;
}());
FaqComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-faq',
        template: __webpack_require__("../../../../../src/app/components/faq/faq.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/faq/faq.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], FaqComponent);

var _a, _b, _c;
//# sourceMappingURL=faq.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/give-scratch/give-scratch.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-dark {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  margin: 0;\r\n  margin-left:5px;\r\n}\r\n\r\nh2 {\r\n  margin-bottom: 10px;\r\n  color: black;\r\n}\r\n\r\nh4 {\r\n  color: black;\r\n}\r\n\r\n.border {\r\n  /*width: 535px;\r\n  height: 350px;\r\n  padding: 15px;*/\r\n  width: 630px;\r\n  /*width: 80%;*/\r\n  padding: 15px;\r\n}\r\n\r\n.ok {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 630px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n}\r\n\r\n.ok:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.ok p {\r\n  margin-top: 5px;\r\n}\r\n\r\nul {\r\n  list-style: none;\r\n  padding: 0;\r\n  margin:0;\r\n}\r\n\r\n.border ul button {\r\n  text-decoration: none;\r\n  color: #FFF;\r\n  border: none;\r\n  cursor: pointer;\r\n  color: #000;\r\n}\r\n\r\n.border ul li button{\r\n  width: 70px;\r\n  background: #FFF;\r\n  height: 70px;\r\n  border-radius: 50%;\r\n  border: 1px solid #000;\r\n  float: left;\r\n  margin: 5px;\r\n  margin-left: 8px; /* Для Firefox */\r\n  -webkit-column-count: 4; /* Для Safari и Chrome */\r\n  column-count: 4;\r\n  font-size: 22px;\r\n  font-weight: bold;\r\n\r\n  /*text-shadow:\r\n  -1px -1px 0 #000,\r\n  1px -1px 0 #000,\r\n  -1px 1px 0 #000,\r\n  1px 1px 0 #000;*/\r\n\r\n  /*border: 1px solid rgba(0,0,0,0.5);\r\n  border-bottom: 3px solid rgba(0,0,0,0.5);*/\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n\r\n  /*background: rgba(0,0,0,0.25);*/\r\n\r\n  /*box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);*/\r\n}\r\n\r\n.border ul li button:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n  transition: 0.3s;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.border ul li .clicked {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.timer {\r\n  margin:0;\r\n  padding: 0;\r\n  text-align: center;\r\n}\r\n\r\n.container {\r\n  margin-top: 35px;\r\n  margin-left: 5%;\r\n  height: 100%;\r\n}\r\n\r\n#rules {\r\n  text-align: top;\r\n  -ms-flex-line-pack: stretch;\r\n      align-content: stretch;\r\n  -ms-flex-align: stretch;\r\n      align-items: stretch;\r\n}\r\n\r\n.nav > li > button.active, .nav > li > button:hover {\r\n    background-color: #fff;\r\n    color: #000;\r\n}\r\n\r\n#random-button:hover {\r\n  color: #000;\r\n  background-color: #FFF;\r\n}\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  position: fixed;\r\n  z-index: 10;\r\n  padding-top: 107px;\r\n  padding-left: 20px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n.container {\r\n  /*margin-left: 10px;*/\r\n  width: 80%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n  margin-top: 8%;\r\n  padding-left: 10%;\r\n  /*position: fixed;*/\r\n  left: 1%;\r\n\r\n\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  /*margin-left: 85%;*/\r\n  /*margin-top: 5%;*/\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.card {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card img {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n  text-transform: uppercase;\r\n  color: black;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n  color: black;\r\n}\r\n\r\n.top-panel-button {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  /*display: inline-block;*/\r\n}\r\n\r\n.top-panel-button:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  /*transition: 0.3s;*/\r\n}\r\n\r\n.top-panel-button:visited {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button:active {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.btn-dark.top-panel-button.active.show {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n}\r\n\r\n.top-panel-button:link {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button p {\r\n  margin-top: 5px;\r\n}\r\n\r\n#buyButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n#buyButton:hover{\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n\r\n.btn-shake:hover {\r\n    /* Start the shake animation and make the animation last for 0.5 seconds */\r\n    animation: shake 0.5s;\r\n    /* When the animation is finished, start again */\r\n    /*animation-iteration-count: infinite;*/\r\n    animation-iteration-count: 1;\r\n}\r\n\r\n@keyframes shake {\r\n    0% { transform: translate(1px, 1px) rotate(0deg); }\r\n    10% { transform: translate(-1px, -2px) rotate(-1deg); }\r\n    20% { transform: translate(-3px, 0px) rotate(1deg); }\r\n    30% { transform: translate(3px, 2px) rotate(0deg); }\r\n    40% { transform: translate(1px, -1px) rotate(1deg); }\r\n    50% { transform: translate(-1px, 2px) rotate(-1deg); }\r\n    60% { transform: translate(-3px, 1px) rotate(0deg); }\r\n    70% { transform: translate(3px, 1px) rotate(-1deg); }\r\n    80% { transform: translate(-1px, -1px) rotate(1deg); }\r\n    90% { transform: translate(1px, 2px) rotate(0deg); }\r\n    100% { transform: translate(1px, -2px) rotate(-1deg); }\r\n}\r\n\r\n.btn-zoom {\r\n  transition: transform .2s; /* Animation */\r\n}\r\n\r\n.btn-zoom:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n#rules {\r\n  background-color: white;\r\n}\r\n\r\n\r\n\r\n#ballsContainer {\r\n  background-color: white;\r\n  height: 830px;\r\n}\r\n\r\n\r\n#ballsTable {\r\n  padding: 30%;\r\n  width: 100%;\r\n  height: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.ball {\r\n  position: relative;\r\n  cursor: pointer;\r\n  z-index: 1;\r\n}\r\n\r\n.hidden-number {\r\n  opacity: 0;\r\n  position: absolute;\r\n  font-size: 30pt;\r\n  top: 73%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  font-weight: bold;\r\n}\r\n\r\n.ball-number {\r\n  opacity: 0;\r\n  position: absolute;\r\n  font-size: 30pt;\r\n  top: 50%;\r\n  left: 40%;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 5em;\r\n  z-index: 3;\r\n}\r\n\r\n.cnv {\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: 50;\r\n}\r\n\r\n.ballImage {\r\n  z-index: 1;\r\n  opacity: 0;\r\n}\r\n\r\n\r\n\r\n\r\n\r\n\r\n/*h1 {\r\n  width:100%; text-align:center;\r\n}\r\n\r\n.cell {\r\n\tdisplay: table-cell;\r\n\tvertical-align: middle;\r\n\ttext-align: center;\r\n}\r\n\r\n.cell canvas {\r\n\tvertical-align: middle;\r\n}\r\n\r\n.canthumb {\r\n\tborder: 0px solid #222;\r\n}\r\n#main {\r\n    margin:0 auto;\r\n  width:600px;\r\n  margin:0; padding:0;\r\n}\r\n\r\n#maincanvas {\r\n\tborder: 0px solid #222;\r\n\tcursor: pointer;\r\n  margin:0 auto;\r\n}*/\r\n\r\n\r\n\r\n#bridge {\r\n\tdisplay: block;\r\n\tmargin: 0 auto;\r\n  /*background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943.jpg');\r\n\tbackground-image: -webkit-image-set(url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943.jpg') 1x, url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943-2x.jpg') 2x );*/\r\n\tbackground-size: cover;\r\n\t/*width: 100%;\r\n\tmax-width: 750px;*/\r\n\theight: auto;\r\n  cursor: pointer;\r\n  /*cursor:  crosshair;\r\n  cursor: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/circular-cursor.png) 53 53, crosshair;*/\r\n}\r\n#bridgeContainer {\r\n  text-align: center;\r\n  font-family: Avenir, sans-serif;\r\n}\r\n#bridgeContainer figcaption {\r\n  margin-top: 2rem;\r\n}\r\n\r\n#buyButton {\r\n  visibility: hidden;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/give-scratch/give-scratch.component.html":
/***/ (function(module, exports) {

module.exports = "<img src=\"{{backgroundImage}}\" style=\"position: fixed; width: 100%; height: 100%\">\n\n<div class=\"header\">\n  <table style=\"margin-left: 20px;\">\n    <tr>\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h2 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h2></a></td>\n    </tr>\n  </table>\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\n</div>\n\n          <div id=\"navbar\">\n            <p><a routerLink=\"/privateOffice\">Buy Ticket</a></p>\n            <p><a routerLink=\"/my-bets\">My Bets</a></p>\n            <p><a routerLink=\"/my-tokens\">My Tokens</a></p>\n            <p><a routerLink=\"/my-statistics\">Statistics</a></p>\n            <p><a routerLink=\"/settings\">Settings</a></p>\n            <p><a routerLink=\"/faq\">FAQ</a></p>\n            <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\n          </div>\n\n          <div class=\"container\" align=\"center\">\n            <table border=\"0\" style=\"margin-bottom: 50px; table-layout: auto; width: 100%;\" width=\"100%\">\n              <tr>\n                <td colspan=\"3\" align=\"center\" width=\"100%\">\n                <ul class=\"nav\">\n                  <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 309px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\n                  <li><button class=\"btn-dark top-panel-button\" style=\"width: 309px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\n                </ul>\n              </td>\n                <td align=\"center\" style=\"padding-left: 80px;\">\n                  <h2><b>SUPER</b>JACK<b>POT</b></h2>\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n\n                  <div class=\"tab-content\">\n\n                    <div class=\"form-group\">\n                      <input type=\"email\" class=\"form-control\" id=\"inputEmail\" [(ngModel)]=\"email\" (ngModelChange)=\"emailChange()\" aria-describedby=\"emailHelp\" placeholder=\"Enter email\">\n                      <small id=\"emailHelp\" class=\"form-text\">Enter the email of user you want give tickets to</small>\n                    </div>\n\n                    <div class=\"tab-pane fade show active\" id=\"tickets\" role=\"tabpanel\">\n                      <div style=\"margin-bottom: 5px;\" *ngFor=\"let t of tickets; let i = index\">\n                        <div class=\"border\" id=\"ballsContainer\">\n                          <!--<table id=\"ballsTable\" cellpadding=\"5\">\n                            <tr>\n                              <td *ngFor=\"let n of fakeBallsArray; let j = index\" align=\"center\">\n                                <div class=\"ball\" (click)=\"scratchCard(i, j)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_{{j}}\" class=\"hidden-number\">{{tickets[i][j]}}</div>\n                                </div>\n                              </td>\n                            </tr>\n                          </table>-->\n                          <table id=\"ballsTable\" cellpadding=\"5\">\n                            <tr>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 0)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_0\" class=\"hidden-number\">{{tickets[i][0]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 0)\" >\n                                  <img id=\"ballImage_{{i}}_0\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 0)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_0\" class=\"ball-number\">{{tickets[i][0]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_0\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\" ></canvas>\n                                </div>\n\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 1)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_1\" class=\"hidden-number\">{{tickets[i][1]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 1)\">\n                                  <img id=\"ballImage_{{i}}_1\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 1)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_1\" class=\"ball-number\">{{tickets[i][1]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_1\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 2)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_2\" class=\"hidden-number\">{{tickets[i][2]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 2)\">\n                                  <img id=\"ballImage_{{i}}_2\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 2)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_2\" class=\"ball-number\">{{tickets[i][2]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_2\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                            </tr>\n                            <tr>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 3)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_3\" class=\"hidden-number\">{{tickets[i][3]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 3)\">\n                                  <img id=\"ballImage_{{i}}_3\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 3)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_3\" class=\"ball-number\">{{tickets[i][3]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_3\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 4)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_4\" class=\"hidden-number\">{{tickets[i][4]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 4)\">\n                                  <img id=\"ballImage_{{i}}_4\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 4)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_4\" class=\"ball-number\">{{tickets[i][4]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_4\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 5)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_5\" class=\"hidden-number\">{{tickets[i][5]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 5)\">\n                                  <img id=\"ballImage_{{i}}_5\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 5)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_5\" class=\"ball-number\">{{tickets[i][5]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_5\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n                              </td>\n                            </tr>\n                            <tr>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 6)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_6\" class=\"hidden-number\">{{tickets[i][6]}}</div>\n                                </div>-->\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 6)\">\n                                  <img id=\"ballImage_{{i}}_6\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 6)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_6\" class=\"ball-number\">{{tickets[i][6]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_6\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 7)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_7\" class=\"hidden-number\">{{tickets[i][7]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 7)\">\n                                  <img id=\"ballImage_{{i}}_7\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 7)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_7\" class=\"ball-number\">{{tickets[i][7]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_7\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                              <td>\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 8)\">\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_8\" class=\"hidden-number\">{{tickets[i][8]}}</div>\n                                </div>-->\n\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 8)\">\n                                  <img id=\"ballImage_{{i}}_8\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 8)\">\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_8\" class=\"ball-number\">{{tickets[i][8]}}</div>\n                                  <canvas id=\"scractBall_{{i}}_8\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\n                                </div>\n\n                              </td>\n                            </tr>\n                          </table>\n\n                        </div>\n                        <div *ngIf=\"removeButtonFlag() && !scratchNowFlag\" class=\"ok\" (click)=\"removeTicket(i)\" style=\"margin-bottom: 5px;\"><p>- Remove Ticket</p></div>\n                      </div>\n                    </div>\n\n                    <div class=\"tab-pane fade\" id=\"rules\" style=\"text-align: justify;\">\n                      <div class=\"border\" style=\"height:100%;\">\n                        <!--<p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\n                        <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\n                           <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\n                           <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\n                          <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\n                          <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\n                          <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\n                          <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\n                          <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\n                          <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\n                          <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\n                          <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\n                          <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\n                          <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\n                          <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\n                          <h5>How to withdraw winnings to a bank account</h5>\n                          <table class=\"table-dark\" style=\"text-align: left;\">\n                            <thead>\n                              <tr>\n                                <th>Approach</th>\n                                <th>Algorithm of actions</th>\n                                <th>Comments, restrictions</th>\n                              </tr>\n                            </thead>\n                            <tbody>\n                              <tr>\n                                <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\n                                <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\n                                <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\n                              </tr>\n                              <tr>\n                                <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\n                                <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\n                                <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\n                              </tr>\n                              <tr>\n                                <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\n                                <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\n                                <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\n                              </tr>\n                              <tr>\n                                <td>SJP conversion with third party exchange services </td>\n                                <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\n                                <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\n                              </tr>\n                            </tbody>\n                          </table>-->\n\n                          <!--DEFAULT-->\n                          <!--<figure id=\"bridgeContainer\">\n                            <canvas id=\"bridge\" width=\"750\" height=\"465\" (mousemove)=\"mouseMove($event)\"></canvas>\n                            <figcaption>Downtown Calgary in 2013 and 1943; mouse down or touch on photo to reveal</figcaption>\n                          </figure>-->\n                      </div>\n                    </div>\n                  </div>\n\n\n                </td>\n\n                <td rowspan=\"1\" style=\"padding-left: 80px;\" valign=\"top\" align=\"center\">\n                  <div class=\"timer\">\n                    <div class=\"card\" style=\"width: 15rem;  margin: 0 auto; \">\n                      <img id=\"bunner\" class=\"card-img-top\" src=\"{{lotteryBunner}}\" alt=\"Card image cap\">\n                      <div class=\"lotteryTitle\">{{lotteryName}}</div>\n                      <div class=\"lotteryFunds\">{{lotteryFunds}} <img style=\"width:24px;\" src=\"assets/img/logo_small.png\" alt=\"logo\"></div>\n                      <div class=\"buttonSector\">\n                        <div *ngIf=\"!scratchNowFlag\" id=\"buyButton\" class=\"ok\" (click)=\"open(content)\"><p>Give Tickets</p></div>\n                      </div>\n                    </div>\n                  </div>\n                </td>\n\n                <td style=\"vertical-align: top; padding-left: 5%;\">\n                  <app-cube></app-cube>\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n                  <div *ngIf=\"!scratchNowFlag\" class=\"ok\" (click)=\"addTicket()\"><p>+ Add Ticket</p></div>\n                </td>\n              </tr>\n            </table>\n          </div>\n\n\n          <ng-template #content let-c=\"close\" let-d=\"dismiss\">\n            <div class=\"modal-header\">\n              <h4 class=\"modal-title\">Ticket Giving</h4>\n              <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\n                <span aria-hidden=\"true\">&times;</span>\n              </button>\n            </div>\n            <div class=\"modal-body\">\n              <p>The tickets will be given to the user with the specified email.</p>\n              <p>If there is no user with specified email, the tickets will wait until this user be registered.</p>\n            </div>\n\n              <div class=\"modal-footer\">\n                <button type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">OK</button>\n              </div>\n            </ng-template>\n"

/***/ }),

/***/ "../../../../../src/app/components/give-scratch/give-scratch.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return GiveScratchComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_common__ = __webpack_require__("../../../common/@angular/common.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var GiveScratchComponent = (function () {
    function GiveScratchComponent(location, router, lottery, tpService, modalService) {
        this.location = location;
        this.router = router;
        this.lottery = lottery;
        this.tpService = tpService;
        this.modalService = modalService;
        this.tickets = [];
        this.fakeBallsArray = [];
        this.scratchNowFlag = false;
        this.brushRadius = 30;
        this.email = "";
    }
    GiveScratchComponent.prototype.ngOnInit = function () {
        if (this.tpService.getScratchType() == "777") {
            this.backgroundImage = "assets/img/b_top3.jpg";
            this.lotteryFunds = 777;
            this.lotteryName = "777";
            this.lotteryBunner = "assets/img/top3.jpg";
        }
        else if (this.tpService.getScratchType() == "100CASH") {
            this.backgroundImage = "assets/img/b_4_21.jpg";
            this.lotteryFunds = 100;
            this.lotteryName = "100'000 CASH";
            this.lotteryBunner = "assets/img/100000CASH.jpg";
        }
        else if (this.tpService.getScratchType() == "fruity") {
            this.backgroundImage = "assets/img/b_rapidos.jpg";
            this.lotteryFunds = 333;
            this.lotteryName = "Fruity";
            this.lotteryBunner = "assets/img/33.jpg";
        }
        for (var i = 0; i < 9; i++) {
            this.fakeBallsArray.push(i);
        }
        //this.addTicket();
        var arr = [];
        this.tickets.push(arr);
    };
    GiveScratchComponent.prototype.drawCover = function (i, j) {
        //if (this.scratchNowFlag) {
        var ball = document.getElementById("scractBall_" + i + "_" + j);
        var ctx = ball.getContext('2d');
        var gradient = ctx.createLinearGradient(0, 0, 189, 257);
        gradient.addColorStop(0, 'cyan');
        gradient.addColorStop(0.5, 'orange');
        gradient.addColorStop(1, 'violet');
        ctx.fillStyle = gradient;
        ctx.fillRect(0, 0, ball.width, ball.height);
        //}
    };
    GiveScratchComponent.prototype.drawCanvas = function () {
        for (var i = 0; i < this.tickets.length; i++) {
            for (var j = 0; j < 9; j++) {
                var ball = document.getElementById("scractBall_" + i + "_" + j);
                var ctx = ball.getContext('2d');
                var gradient = ctx.createLinearGradient(0, 0, 189, 257);
                gradient.addColorStop(0, 'cyan');
                gradient.addColorStop(0.5, 'orange');
                gradient.addColorStop(1, 'violet');
                ctx.fillStyle = gradient;
                ctx.fillRect(0, 0, ball.width, ball.height);
            }
        }
    };
    GiveScratchComponent.prototype.buyTickets = function () {
        var _this = this;
        this.lottery.giveScratch(this.tpService.getScratchType(), this.tickets.length, this.email)
            .then(function (res) {
            if (res.json().status === 'success') {
                //this.tpService.setNewBets(tickets);
                //this.tpService.setLotteryType("");
                _this.router.navigateByUrl('/privateOffice');
            }
            else {
            }
        }, function (err) {
            console.log(err);
        });
    };
    GiveScratchComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    GiveScratchComponent.prototype.addTicket = function () {
        var arr = [];
        this.tickets.push(arr);
    };
    GiveScratchComponent.prototype.removeTicket = function (index) {
        this.tickets.splice(index, 1);
    };
    GiveScratchComponent.prototype.removeButtonFlag = function () {
        if (this.tickets.length > 1) {
            return true;
        }
        else {
            return false;
        }
    };
    GiveScratchComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    //DEFAULT
    GiveScratchComponent.prototype.detectLeftButton = function (event) {
        if ('buttons' in event) {
            return event.buttons === 1;
        }
        else if ('which' in event) {
            return event.which === 1;
        }
        else {
            return event.button === 1;
        }
    };
    GiveScratchComponent.prototype.setBall = function (i, j) {
        if (this.scratchNowFlag) {
            this.cnv = document.getElementById("scractBall_" + i + "_" + j);
            this.ctx = this.cnv.getContext('2d');
            var ball = document.getElementById("ball_" + i + "_" + j);
            ball.style.opacity = "100";
            var ballImage = document.getElementById("ballImage_" + i + "_" + j);
            ballImage.style.opacity = "100";
        }
    };
    GiveScratchComponent.prototype.getBrushPos = function (xRef, yRef) {
        var rect = this.cnv.getBoundingClientRect();
        return {
            x: Math.floor((xRef - rect.left) / (rect.right - rect.left) * this.cnv.width),
            y: Math.floor((yRef - rect.top) / (rect.bottom - rect.top) * this.cnv.height)
        };
    };
    GiveScratchComponent.prototype.drawDot = function (mouseX, mouseY) {
        this.ctx.beginPath();
        this.ctx.arc(mouseX, mouseY, this.brushRadius, 0, 2 * Math.PI, true);
        this.ctx.fillStyle = '#000';
        this.ctx.globalCompositeOperation = "destination-out";
        this.ctx.fill();
    };
    GiveScratchComponent.prototype.mouseMove = function (e) {
        if (this.cnv != null && this.scratchNowFlag) {
            var brushPos = this.getBrushPos(e.clientX, e.clientY);
            //var leftBut = this.detectLeftButton(e);
            //if (leftBut == true) {
            this.drawDot(brushPos.x, brushPos.y);
            //}
        }
    };
    GiveScratchComponent.prototype.emailChange = function () {
        if (this.email !== "") {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    GiveScratchComponent.prototype.open = function (content) {
        var _this = this;
        this.modalService.open(content).result.then(function (result) {
            //this.closeResult = `Closed with: ${result}`;
            _this.buyTickets();
        }, function (reason) {
            //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
        });
    };
    return GiveScratchComponent;
}());
GiveScratchComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-give-scratch',
        template: __webpack_require__("../../../../../src/app/components/give-scratch/give-scratch.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/give-scratch/give-scratch.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_common__["f" /* Location */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_common__["f" /* Location */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _d || Object, typeof (_e = typeof __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _e || Object])
], GiveScratchComponent);

var _a, _b, _c, _d, _e;
//# sourceMappingURL=give-scratch.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/give-ticket/give-ticket.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-dark {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  margin: 0;\r\n  margin-left:5px;\r\n}\r\n\r\nh2 {\r\n  margin-bottom: 10px;\r\n  color: black;\r\n}\r\n\r\nh4 {\r\n  color: black;\r\n}\r\n\r\n.border {\r\n  /*width: 535px;\r\n  height: 350px;\r\n  padding: 15px;*/\r\n  width: 630px;\r\n  /*width: 80%;*/\r\n  padding: 15px;\r\n}\r\n\r\n.ok {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 630px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n}\r\n\r\n.ok:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.ok p {\r\n  margin-top: 5px;\r\n}\r\n\r\nul {\r\n  list-style: none;\r\n  padding: 0;\r\n  margin:0;\r\n}\r\n\r\n.border ul button {\r\n  text-decoration: none;\r\n  color: #FFF;\r\n  border: none;\r\n  cursor: pointer;\r\n  color: #000;\r\n}\r\n\r\n.border ul li button{\r\n  width: 70px;\r\n  background: #FFF;\r\n  height: 70px;\r\n  border-radius: 50%;\r\n  border: 1px solid #000;\r\n  float: left;\r\n  margin: 5px;\r\n  margin-left: 8px; /* Для Firefox */\r\n  -webkit-column-count: 4; /* Для Safari и Chrome */\r\n  column-count: 4;\r\n  font-size: 22px;\r\n  font-weight: bold;\r\n\r\n  /*text-shadow:\r\n  -1px -1px 0 #000,\r\n  1px -1px 0 #000,\r\n  -1px 1px 0 #000,\r\n  1px 1px 0 #000;*/\r\n\r\n  /*border: 1px solid rgba(0,0,0,0.5);\r\n  border-bottom: 3px solid rgba(0,0,0,0.5);*/\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n\r\n  /*background: rgba(0,0,0,0.25);*/\r\n\r\n  /*box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);*/\r\n}\r\n\r\n.border ul li button:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n  transition: 0.3s;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.border ul li .clicked {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.timer {\r\n  margin:0;\r\n  padding: 0;\r\n  text-align: center;\r\n}\r\n\r\n.container {\r\n  margin-top: 35px;\r\n  margin-left: 5%;\r\n  height: 100%;\r\n}\r\n\r\n#rules {\r\n  text-align: top;\r\n  -ms-flex-line-pack: stretch;\r\n      align-content: stretch;\r\n  -ms-flex-align: stretch;\r\n      align-items: stretch;\r\n}\r\n\r\n.nav > li > button.active, .nav > li > button:hover {\r\n    background-color: #fff;\r\n    color: #000;\r\n}\r\n\r\n#random-button:hover {\r\n  color: #000;\r\n  background-color: #FFF;\r\n}\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  position: fixed;\r\n  z-index: 10;\r\n  padding-top: 107px;\r\n  padding-left: 20px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n.container {\r\n  /*margin-left: 10px;*/\r\n  width: 80%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n  margin-top: 8%;\r\n  padding-left: 10%;\r\n  /*position: fixed;*/\r\n  left: 1%;\r\n\r\n\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  /*margin-left: 85%;*/\r\n  /*margin-top: 5%;*/\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.card {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card img {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n  text-transform: uppercase;\r\n  color: black;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n  color: black;\r\n}\r\n\r\n.top-panel-button {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  /*display: inline-block;*/\r\n}\r\n\r\n.top-panel-button:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  /*transition: 0.3s;*/\r\n}\r\n\r\n.top-panel-button:visited {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button:active {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.btn-dark.top-panel-button.active.show {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n}\r\n\r\n.top-panel-button:link {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button p {\r\n  margin-top: 5px;\r\n}\r\n\r\n#buyButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n#buyButton:hover{\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n#ballsContainer {\r\n  background-color: white;\r\n}\r\n\r\n.btn-shake:hover {\r\n    /* Start the shake animation and make the animation last for 0.5 seconds */\r\n    animation: shake 0.5s;\r\n    /* When the animation is finished, start again */\r\n    /*animation-iteration-count: infinite;*/\r\n    animation-iteration-count: 1;\r\n}\r\n\r\n@keyframes shake {\r\n    0% { transform: translate(1px, 1px) rotate(0deg); }\r\n    10% { transform: translate(-1px, -2px) rotate(-1deg); }\r\n    20% { transform: translate(-3px, 0px) rotate(1deg); }\r\n    30% { transform: translate(3px, 2px) rotate(0deg); }\r\n    40% { transform: translate(1px, -1px) rotate(1deg); }\r\n    50% { transform: translate(-1px, 2px) rotate(-1deg); }\r\n    60% { transform: translate(-3px, 1px) rotate(0deg); }\r\n    70% { transform: translate(3px, 1px) rotate(-1deg); }\r\n    80% { transform: translate(-1px, -1px) rotate(1deg); }\r\n    90% { transform: translate(1px, 2px) rotate(0deg); }\r\n    100% { transform: translate(1px, -2px) rotate(-1deg); }\r\n}\r\n\r\n.btn-zoom {\r\n  transition: transform .2s; /* Animation */\r\n}\r\n\r\n.btn-zoom:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n#rules {\r\n  background-color: white;\r\n}\r\n\r\n#buyButton {\r\n  visibility: hidden;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/give-ticket/give-ticket.component.html":
/***/ (function(module, exports) {

module.exports = "<img src=\"{{backgroundImage}}\" style=\"position: fixed; width: 100%; height: 100%\">\n\n<div class=\"header\">\n  <table style=\"margin-left: 20px;\">\n    <tr>\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\n    </tr>\n  </table>\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\n</div>\n\n          <div id=\"navbar\">\n            <p><a routerLink=\"/privateOffice\">Buy Ticket</a></p>\n            <p><a routerLink=\"/my-bets\">My Bets</a></p>\n            <p><a routerLink=\"/my-tokens\">My Tokens</a></p>\n            <p><a routerLink=\"/my-statistics\">Statistics</a></p>\n            <p><a routerLink=\"/settings\">Settings</a></p>\n            <p><a routerLink=\"/faq\">FAQ</a></p>\n            <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\n          </div>\n\n          <div class=\"container\" align=\"center\">\n            <table border=\"0\" style=\"margin-bottom: 50px; table-layout: auto; width: 100%;\" width=\"100%\">\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n                <!--<ul class=\"nav\">\n                  <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 312px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\n                  <li><button class=\"btn-dark top-panel-button\" style=\"width: 312px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\n                </ul>-->\n                <div style=\"width: 630px;\">\n                  <ul class=\"nav\">\n                    <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 312px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\n                    <li><button class=\"btn-dark top-panel-button\" style=\"width: 312px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\n                  </ul>\n                </div>\n              </td>\n                <td align=\"center\" style=\"padding-left: 80px;\">\n                  <!--<h2><b>SUPER</b>JACK<b>POT</b></h2>-->\n                  <a routerLink=\"/privateOffice\"><h2 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h2></a>\n                  <!--<h4>{{cd}}</h4>-->\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n\n                  <div class=\"form-group\">\n                    <input type=\"email\" class=\"form-control\" id=\"inputEmail\" [(ngModel)]=\"email\" (ngModelChange)=\"emailChange()\" aria-describedby=\"emailHelp\" placeholder=\"Enter email\">\n                    <small id=\"emailHelp\" class=\"form-text\">Enter the email of user you want give tickets to</small>\n                  </div>\n\n                  <div class=\"tab-content\">\n                    <div class=\"tab-pane fade show active\" id=\"tickets\" role=\"tabpanel\">\n\n                      <div *ngFor=\"let t of tickets; let i = index\">\n                      <div class=\"border\" id=\"ballsContainer\">\n                      <table align=\"center\" id=\"numbersTable\">\n                        <tr *ngFor=\"let r of tickets[i]\">\n                          <td *ngFor=\"let block of r\">\n                            <ul>\n                              <li>\n                            <button class=\"btn-zoom\"\n                              [class.clicked]=\"block.clicked\"\n                              (click)=\"addDelete(block, i)\">{{ block.num }}\n                            </button>\n                          </li>\n                        </ul>\n                          </td>\n                        </tr>\n                      </table>\n                    </div>\n                    <div style=\"margin-top: 6px;\">\n                      <div class=\"ok\" style=\"width: 207px; margin-bottom: 1px;\"><p>Raffles: {{raffles[i]}}</p></div>\n                      <div class=\"ok\" (click)=\"addRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>+</p></div>\n                      <div class=\"ok\" (click)=\"removeRaffle(i)\" style=\"width: 207px; margin-bottom: 1px;\"><p>-</p></div>\n                    </div>\n                    <div style=\"margin-top: 6px;\">\n                      <div class=\"ok\" style=\"width: 630px; margin-bottom: 5px;\" (click)=\"chooseForMe(i)\"><p>Choose for Me</p></div>\n                    </div>\n                    <div *ngIf=removeButtonFlag() class=\"ok\" (click)=\"removeTicket(i)\" style=\"margin-bottom: 5px;\"><p>- Remove Ticket</p></div>\n                    <hr>\n                  </div>\n                </div>\n\n                  <div class=\"tab-pane fade\" id=\"rules\" style=\"text-align: justify;\">\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 1\">\n                      <p>The 4x21 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_4_21_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      <p>Drawings are held daily, at 02:00, 05:00, 08:00, 11:00, 14:00, 17:00, 20:00 and 23:00 GMT. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      <p>To participate in the Lottery, you need to choose 4 numbers from 1 to 21 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                        <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  1 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:<br/>\n                      The distribution of the Prize pool by the number of guessed numbers<br/>\n                      2 - 32% of the Prize Pool / The number of Players who matched 2 numbers<br/>\n                      3\t- 33% of the Prize Pool / The number of Players who matched 3 numbers<br/>\n                      4\t- 35% of the Prize Pool – Jackpot<br/>\n                      9% are used to cover technical and operating expenses.<hr/>\n                      <p><b>Jackpot</b></p>\n                      35% of the Prize pool (Category 4) are always rolled over to the Jackpot for the following drawing. The Jackpot built up over the previous drawings is divided between the  Owners of the tickets with 4 matching numbers. If there are no such tickets, the current Jackpot is rolled over to the Jackpot for the following drawing. In category 2, 3 the winning amount is divided by the number of Winners in this category. If there are no Winners, then the Prize pool of these categories also goes to the Jackpot of the following drawing.<hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE<hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.<hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 2\">\n                      <p>The 5x36 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_5_36_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held daily, at 04:00, 10:00, 16:00 and 22:00 GMT.\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      To participate in the Lottery, you need to choose 5 numbers from 1 to 36 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                      <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  2 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:\n                      There are four winning categories in the Lottery: two with fixed winnings and two with accumulated Jackpot.<br/>\n                      2 - 2 SJP / The number of Players who matched 2 numbers <br/>\n                      3\t- 20 SJP / The number of Players who matched 3 numbers<br/>\n                      4\t- 50% / The number of Players who matched 4 numbers\t<br/>\n                      5 - 50% / Jackpot<br/>\n                      First, fixed winnings are calculated for 2 and 3 guessed numbers. After that, the rest of the Prize pool is divided equally between the categories 4 and 5  (Jackpot). If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\n                      9% are used to cover technical and operating expenses.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 3\">\n                      <p>The 6x45 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_6_45_value}} SJP.</p>\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held daily, at 09:00 and 21:00 GMT.\n                      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\n                      <hr/>\n                      <p><b>Participation & Rules</b></p>\n                      To participate in the Lottery, you need to choose 6 numbers from 1 to 45 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\n                      <hr/>\n                      <p><b>Distribution of Funds</b></p>\n                      The price of one ticket  -  3 SJP\n                      Funds collected from ticket sales for each drawing are distributed as follows:\n                      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\n                      SuperJackpot is played on the 21st of each month at 21:21 GMT.\n                      70% goes to the Prize pool for the current drawing:\n                      Win combinations in which in one field 2, 3, 4, 5 or 6 numbers from 45 coincide with winning numbers.\n                      Those participants who guessed the 2 numbers receive 3 SJP each. The remaining Prize pool is distributed in the following percentage:<br/>\n                      3\t- 24% of the Prize Pool / The number of Players who matched 3 numbers<br/>\n                      4\t- 14% of the Prize Pool / The number of Players who matched 4 numbers<br/>\n                      5\t- 26% of the Prize Pool / The number of Players who matched 5 numbers\t<br/>\n                      6\t- 36% of the Prize Pool – Jackpot<br/>\n                      Guessing 6 numbers, You get a Jackpot! The Jackpot is accumulated. Therefore, if no one guesses 6 numbers in the current draw, the accumulated amount goes to the next draw Jackpot Prize pool. In category 3, 4, 5 the winning amount is divided by the number of Winners in this category. If there are no Winners in any of these categories, then the Prize pool of these categories also goes to the Jackpot of the following drawing.\n                      9% are used to cover technical and operating expenses.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 4\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\n                      The Rapidos Lottery has a minimum guaranteed Jackpot of {{rapidos_value}} SJP and to win a Jackpot, you just need to guess 8 numbers out of 20 in the first part of the field and one number in four - in the second part.\n                      <hr/>\n                      <p><b>Time</b></p>\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                      The price of one ticket  -  1 SJP\n                      <hr/>\n                      <p><b>How to play</b></p>\n                      In a ticket - only one playing field, consisting of two parts (the first and second).<br/>\n                      • You need to choose 8 non-repeating numbers from 1 to 20 in the first part of the playing field and one number from 1 to 4 - in the second part.<br/>\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\n                      • To participate in several runs, specify their number in a special column.<br/>\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\n                      <hr/>\n                      <p><b>What can be won?</b></p>\n\n                      In Rapid SJP there are 9 categories of winnings.<br/>\n                      All winnings, except for the Jackpot, are fixed. The minimum winnings are 1 SJP.<br/>\n\n                    <table class=\"table table-dark\" style=\"text-align: left;\">\n                      <thead>\n                        <tr colspan=\"3\">\n                          <th>You can win in Rapidos</th>\n                        </tr>\n                      </thead>\n                      <tbody>\n                        <tr>\n                          <td>Guessed the numbers in the first part of the field</td>\n                          <td>Guessed the numbers in the second part of the field</td>\n                          <td>You win</td>\n                        </tr>\n                        <tr>\n                          <td>8</td>\n                          <td>1</td>\n                          <td>Jackpot</td>\n                        </tr>\n                        <tr>\n                          <td>8</td>\n                          <td>0</td>\n                          <td>1 000 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>7</td>\n                          <td>1</td>\n                          <td>150 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>7</td>\n                          <td>0</td>\n                          <td>50 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>6</td>\n                          <td>1</td>\n                          <td>30 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>6</td>\n                          <td>0</td>\n                          <td>10 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>5</td>\n                          <td>1</td>\n                          <td>5 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>5</td>\n                          <td>0</td>\n                          <td>2 SJP</td>\n                        </tr>\n                        <tr>\n                          <td>4</td>\n                          <td>1</td>\n                          <td>1 SJP</td>\n                        </tr>\n                      </tbody>\n                    </table>\n                    The Jackpot is received by the one who guessed 8 numbers in the first part of the field and one number in the second. The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. Therefore, if no one guesses the combination of the draw in the current draw, the accumulated amount goes to the next draw.\n                    <hr/>\n                    <p><b>Casting</b></p>\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                    <hr/>\n                    <p><b>Taxes</b></p>\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                    <hr/>\n                    <p><b>Agreement</b></p>\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 5\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\n                    The Two Numbers  Lottery is one of the most simple and popular Lotteries in the world since ancient times.\n                    <hr/>\n                    <p><b>Time</b></p>\n                    Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                    The price of one ticket  -  2 SJP\n                    <hr/>\n                    <p><b>How to play</b></p>\n                    In a ticket - only one playing field, consisting of two parts (the first and second). <br/>\n                    • You need to choose 1 numbers from 1 to 100 in the first part of the playing field and one number from 1 to 8 - in the second part.<br/>\n                    • To participate in several runs, specify their number in a special column.<br/>\n                    • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                    When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\n                    <hr/>\n                    <p><b>What can be won?</b></p>\n                    The Jackpot is received by the one who guessed one number in the first part of the field and one number in the second.\n                    <table class=\"table table-dark\">\n                      <thead>\n                        <tr colspan=\"3\">\n                          <th>You can win in Two Numbers Lottery</th>\n                        </tr>\n                      </thead>\n                      <tbody>\n                        <tr>\n                          <td>Guessed the numbers in the first part of the field</td>\n                          <td>Guessed the numbers in the second part of the field</td>\n                          <td>You win</td>\n                        </tr>\n                        <tr>\n                          <td>1</td>\n                          <td>1</td>\n                          <td>Jackpot</td>\n                        </tr>\n                        <tr>\n                          <td>1</td>\n                          <td>0</td>\n                          <td>150 SJP</td>\n                        </tr>\n                      </tbody>\n                    </table>\n                    First, fixed winnings are calculated for 1 guessed number. After that, the rest of the Prize pool transferees to Jackpot and distributes equally among the Winners. The Jackpot is accumulative. Therefore, if there were no Winners in these two categories, then the Prize pool will be transferred to the next draw Jackpot Prize pool.\n                    <hr/>\n                    <p><b>Casting</b></p>\n                    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                    <hr/>\n                    <p><b>Taxes</b></p>\n                    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                    <hr/>\n                    <p><b>Agreement</b></p>\n                    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\" style=\"height:100%;\" *ngIf=\"lottery_description == 6\">\n                      Lottery with an increased prize fund, which is 91% of each ticket purchased.\n                      The 24/12 SJP Lottery has a minimum guaranteed Jackpot of {{prize_jackpot_value }} SJP and  this is the only lottery where you can win a Jackpot without guessing a single number. Also the Jackpot is received by those who guess 12 numbers from 24.\n                      <p><b>Time</b></p>\n                      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\n                      The price of one ticket  -  1 SJP\n                      <hr/>\n                      <p><b>How to play</b></p>\n                      The ticket Prize&Jackpot Lottery consists of one field with numbers from 1 to 24. <br/>\n                      • Select 12 non-repeating numbers from 1 to 24.<br/>\n                      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\n                      • To participate in several runs, specify their number in a special column.<br/>\n                      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\n                      When the ticket is issued - You are among the contenders for the victory. Congratulations!\n                      <hr/>\n                      <p><b>How to increase the chances?</b></p>\n                      The chance of winning the lottery is regarded as one to 4.5. This is one of the highest figures among lotteries.\n                      <p>Now multiply the winnings! To do this, select the multiplier (maximum - 100).\n                      It will multiply all your winnings, except for the Jackpot.</p>\n                      <p>Also you can choose the number of runs in which your ticket will participate. The maximum number of runs is 100.</p>\n                      <hr/>\n                      <p><b>What can be won?</b></p>\n                      Winners are considered to be combinations in which 0, 1, 2, 3, 4, 8, 9, 10, 11 or 12 numbers coincide with the numbers in the draw. All winnings, except for the Prize and the Jackpot, are fixed. The minimum winnings are 2 SJP.\n\n                      <table class=\"table table-dark\">\n                        <thead>\n                          <tr colspan=\"2\">\n                            <th>You can win in Prize&Jackpot Lottery</th>\n                          </tr>\n                        </thead>\n                        <tbody>\n                          <tr>\n                            <td>Guessed the numbers</td>\n                            <td>You win</td>\n                          </tr>\n                          <tr>\n                            <td>0 or 12 guessed numbers</td>\n                            <td>50% of the Prize pool / Jackpot</td>\n                          </tr>\n                          <tr>\n                            <td>1 or 11 guessed numbers</td>\n                            <td>50% of the Prize pool / Prize</td>\n                          </tr>\n                          <tr>\n                            <td>2 or 10 guessed numbers</td>\n                            <td>25 SJP</td>\n                          </tr>\n                          <tr>\n                            <td>3 or 9 guessed numbers</td>\n                            <td>5 SJP</td>\n                          </tr>\n                          <tr>\n                            <td>4 or 8 guessed numbers</td>\n                            <td>2 SJP</td>\n                          </tr>\n                        </tbody>\n                        <tr colspan=\"2\">\n                          <td>Combinations in which 5, 6 and 7 numbers have coincided, do not win.</td>\n                        </tr>\n                      </table>\n                      The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. First, fixed winnings are calculated. After that, the rest of the Prize pool is divided equally between the categories Prize and Jackpot. If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\n                      <hr/>\n                      <p><b>Casting</b></p>\n                      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\n                      <hr/>\n                      <p><b>Taxes</b></p>\n                      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\n                      <hr/>\n                      <p><b>Agreement</b></p>\n                      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\n                    </div>\n\n                    <div class=\"border\">\n                    <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\n                    <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\n                       <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\n                       <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\n                      <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\n                      <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\n                      <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\n                      <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\n                      <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\n                      <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\n                      <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\n                      <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\n                      <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\n                      <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\n                      <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\n                      <h5>How to withdraw winnings to a bank account</h5>\n                      <table class=\"table-dark\">\n                        <thead>\n                          <tr>\n                            <th>Approach</th>\n                            <th>Algorithm of actions</th>\n                            <th>Comments, restrictions</th>\n                          </tr>\n                        </thead>\n                        <tbody>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\n                            <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\n                            <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\n                          </tr>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\n                          </tr>\n                          <tr>\n                            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\n                            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\n                            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\n                          </tr>\n                          <tr>\n                            <td>SJP conversion with third party exchange services </td>\n                            <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\n                            <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\n                          </tr>\n                        </tbody>\n                      </table>\n                    </div>\n\n\n                  </div>\n\n\n\n                </div>\n                </td>\n                <td rowspan=\"1\" style=\"padding-left: 80px;\" valign=\"top\" align=\"center\">\n                  <h4>{{cd}}</h4>\n                  <div class=\"timer\">\n                    <div class=\"card\" style=\"width: 15rem;  margin: 0 auto; \">\n                      <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" alt=\"Card image cap\">\n                      <div class=\"lotteryTitle\">{{lotteryName}}</div>\n                      <!--<div class=\"lotteryFunds\">{{lotteryFunds}} SJP</div>-->\n                      <div class=\"lotteryFunds\">{{lotteryFunds}} <img style=\"width:24px;\" src=\"assets/img/logo_small.png\" alt=\"logo\"></div>\n                      <div class=\"buttonSector\">\n                        <div id=\"buyButton\" class=\"ok\" (click)=\"open(content)\"><p>Give Tickets</p></div>\n                      </div>\n                    </div>\n                  </div>\n                </td>\n\n                <td style=\"vertical-align: top; padding-left: 5%;\">\n                  <app-cube></app-cube>\n                </td>\n              </tr>\n\n              <tr>\n                <td colspan=\"3\" align=\"center\">\n                  <div class=\"ok\" (click)=\"addTicket()\"><p>+ Add Ticket</p></div>\n                  <!--<div id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Ticket</p></div>-->\n                </td>\n              </tr>\n            </table>\n          </div>\n\n\n          <ng-template #content let-c=\"close\" let-d=\"dismiss\">\n            <div class=\"modal-header\">\n              <h4 class=\"modal-title\">Ticket Giving</h4>\n              <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\n                <span aria-hidden=\"true\">&times;</span>\n              </button>\n            </div>\n            <div class=\"modal-body\">\n              <p>The tickets will be given to the user with the specified email.</p>\n              <p>If there is no user with specified email, the tickets will wait until this user be registered.</p>\n            </div>\n\n              <div class=\"modal-footer\">\n                <button type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">OK</button>\n              </div>\n            </ng-template>\n"

/***/ }),

/***/ "../../../../../src/app/components/give-ticket/give-ticket.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return GiveTicketComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var GiveTicketComponent = (function () {
    function GiveTicketComponent(router, lottery, tpService, modalService) {
        this.router = router;
        this.lottery = lottery;
        this.tpService = tpService;
        this.modalService = modalService;
        this.blocks = [];
        this.combination = [];
        this.combinations = [];
        this.tableData = [];
        this.tickets = [];
        this.raffles = [];
        this.lottery_description = 0;
        this.email = "";
    }
    GiveTicketComponent.prototype.ngOnInit = function () {
        var _this = this;
        setInterval(function () {
            _this.countDown();
        }, 1000);
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
                _this.jackpot_5_36_value = res.json().data.jackpot_5x36;
                _this.jackpot_6_45_value = res.json().data.jackpot_6x45;
                _this.jackpot_4_21_value = res.json().data.jackpot_4x21;
                _this.rapidos_value = res.json().data.rapidos;
                _this.two_numbers_value = res.json().data.two_numbers;
                _this.prize_jackpot_value = res.json().data.prize_jackpot;
                switch (_this.tpService.getLotteryType()) {
                    case "jackpot_5x36": {
                        _this.lotteryFunds = res.json().data.jackpot_5x36;
                        break;
                    }
                    case "jackpot_4x21": {
                        _this.lotteryFunds = res.json().data.jackpot_4x21;
                        break;
                    }
                    case "jackpot_6x45": {
                        _this.lotteryFunds = res.json().data.jackpot_6x45;
                        break;
                    }
                    case "rapidos": {
                        _this.lotteryFunds = res.json().data.rapidos;
                        break;
                    }
                    case "two_numbers": {
                        _this.lotteryFunds = res.json().data.two_numbers;
                        break;
                    }
                    case "prize_jackpot": {
                        _this.lotteryFunds = res.json().data.prize_jackpot;
                        break;
                    }
                    default: {
                        break;
                    }
                }
                _this.lotteryFunds += 1;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        switch (this.tpService.getLotteryType()) {
            case "lottery_5x36": {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryName = "Lottery 5x36";
                this.lotteryBunner = "assets/img/5_36.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
                //statements;
                break;
            }
            case "lottery_6x45": {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryName = "Lottery 6x45";
                this.lotteryBunner = "assets/img/6_45.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
                //statements;
                break;
            }
            case "lottery_4x20": {
                this.maxNumber = 20;
                this.combinationSize = 4;
                this.lotteryName = "Lottery 4x20";
                this.lotteryBunner = "assets/img/4_20.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "lottery_7x49": {
                this.maxNumber = 49;
                this.combinationSize = 7;
                this.lotteryName = "Lottery 7x49";
                this.lotteryBunner = "assets/img/7_49.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "jackpot_5x36": {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryName = "Jackpot 5x36";
                this.lotteryBunner = "assets/img/5_36.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_5_36.jpg";
                this.lottery_description = 2;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
                //statements;
                break;
            }
            case "jackpot_6x45": {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryName = "Jackpot 6x45";
                this.lotteryBunner = "assets/img/6_45.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_6_45.jpg";
                this.lottery_description = 3;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
                //statements;
                break;
            }
            case "jackpot_4x20": {
                this.maxNumber = 20;
                this.combinationSize = 4;
                this.lotteryName = "Jackpot 4x20";
                this.lotteryBunner = "assets/img/4_20.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "jackpot_4x21": {
                this.maxNumber = 21;
                this.combinationSize = 4;
                this.lotteryName = "Jackpot 4x21";
                this.lotteryBunner = "assets/img/4_21.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                this.backgroundImage = "assets/img/b_4_21.jpg";
                this.lottery_description = 1;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_4_21.jpg");');
                //statements;
                break;
            }
            case "jackpot_7x49": {
                this.maxNumber = 49;
                this.combinationSize = 7;
                this.lotteryName = "Jackpot 7x49";
                this.lotteryBunner = "assets/img/7_49.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
                //statements;
                break;
            }
            case "rapidos": {
                this.maxNumber = 20;
                this.combinationSize = 8;
                this.lotteryName = "Rapidos";
                this.lotteryBunner = "assets/img/rapidos.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_rapidos.jpg";
                this.lottery_description = 4;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_rapidos.jpg");');
                //statements;
                break;
            }
            case "two_numbers": {
                this.maxNumber = 100;
                this.combinationSize = 2;
                this.lotteryName = "Two Numbers";
                this.lotteryBunner = "assets/img/supers.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_two_numbers.jpg";
                this.lottery_description = 5;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_supers.jpg");');
                //statements;
                break;
            }
            case "prize_jackpot": {
                this.maxNumber = 24;
                this.combinationSize = 12;
                this.lotteryName = "Prize&Jackpot";
                this.lotteryBunner = "assets/img/prize_jackpot.jpg";
                this.ticketCost = 1;
                this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
                this.backgroundImage = "assets/img/b_prize_jackpot.jpg";
                this.lottery_description = 6;
                //document.body.setAttribute('style', 'background-image: url("assets/img/b_top3.jpg");');
                //statements;
                break;
            }
            default: {
                //statements;
                break;
            }
        }
        var newCombination = [];
        this.combinations.push(newCombination);
        this.addTicketToTable();
        this.raffles.push(1);
        window.scrollTo(0, 0);
    };
    GiveTicketComponent.prototype.addTicketToTable = function () {
        var blocks = [];
        for (var i = 0; i < this.maxNumber; i++) {
            var block = {
                num: i + 1,
                clicked: false
            };
            blocks.push(block);
        }
        var numberTable = [];
        if (this.maxNumber == 36) {
            var k = 0;
            for (var i = 0; i < 6; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 45) {
            var k = 0;
            for (var i = 0; i < 9; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 20) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 49) {
            var k = 0;
            for (var i = 0; i < 7; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 21) {
            var k = 0;
            for (var i = 0; i < 3; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 100) {
            var k = 0;
            for (var i = 0; i < 20; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        else if (this.maxNumber == 24) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(blocks[k]);
                    k++;
                }
                numberTable.push(subArray);
            }
        }
        this.tickets.push(numberTable);
    };
    GiveTicketComponent.prototype.checkCombinationSelected = function () {
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        return flag;
    };
    GiveTicketComponent.prototype.addDelete = function (block, i) {
        if (block.clicked == false) {
            if (this.combinations[i].length < this.combinationSize) {
                block.clicked = true;
                this.combinations[i].push(block.num);
            }
        }
        else {
            block.clicked = false;
            var index = this.combinations[i].indexOf(block.num);
            this.combinations[i].splice(index, 1);
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag && this.email !== "") {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    GiveTicketComponent.prototype.addRaffle = function (i) {
        this.raffles[i] = this.raffles[i] + 1;
    };
    GiveTicketComponent.prototype.removeRaffle = function (i) {
        if (this.raffles[i] > 1) {
            this.raffles[i] = this.raffles[i] - 1;
        }
    };
    GiveTicketComponent.prototype.removeTicket = function (index) {
        this.combinations.splice(index, 1);
        this.tickets.splice(index, 1);
        this.raffles.splice(index, 1);
        this.lotteryFunds -= 1;
    };
    GiveTicketComponent.prototype.buyTickets = function () {
        var _this = this;
        var t_arr = [];
        for (var i = 0; i < this.combinations.length; i++) {
            var ticket = {
                combination: this.combinations[i],
                raffles: this.raffles[i]
            };
            t_arr.push(ticket);
        }
        var new_bets = {
            type: this.tpService.getLotteryType(),
            combinations: this.combinations
        };
        var tickets = {
            type: this.tpService.getLotteryType(),
            tickets: t_arr,
            email: this.email
        };
        console.log(tickets);
        this.lottery.giveTickets(tickets)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.router.navigateByUrl('/privateOffice');
            }
            else {
            }
        }, function (err) {
            console.log(err);
        });
    };
    GiveTicketComponent.prototype.checkCombination = function () {
        if (this.combination.length > this.combinationSize) {
            alert("You've selected more than " + this.combinationSize + "  numbers");
        }
        if (this.combination.length < this.combinationSize) {
            alert("You've selected less than " + this.combinationSize + "  numbers");
        }
    };
    GiveTicketComponent.prototype.selectRandom = function () {
        for (i = 0; i < this.tickets.length; i++) {
            var r_comb = [];
            while (r_comb.length < this.combinationSize) {
                var element = this.randomInt(1, this.maxNumber);
                if (r_comb.indexOf(element) < 0) {
                    r_comb.push(element);
                }
            }
            for (var j = 0; j < this.tickets[i].length; j++) {
                for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                    var block = _a[_i];
                    if (r_comb.indexOf(block.num) > -1) {
                        block.clicked = true;
                    }
                    else {
                        block.clicked = false;
                    }
                }
            }
            this.combinations[i] = r_comb;
        }
        var flag = false;
        for (var i = 0; i < this.combinations.length; i++) {
            if (this.combinations[i].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag && this.email !== "") {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    GiveTicketComponent.prototype.chooseForMe = function (i) {
        var r_comb = [];
        while (r_comb.length < this.combinationSize) {
            var element = this.randomInt(1, this.maxNumber);
            if (r_comb.indexOf(element) < 0) {
                r_comb.push(element);
            }
        }
        for (var j = 0; j < this.tickets[i].length; j++) {
            for (var _i = 0, _a = this.tickets[i][j]; _i < _a.length; _i++) {
                var block = _a[_i];
                if (r_comb.indexOf(block.num) > -1) {
                    block.clicked = true;
                }
                else {
                    block.clicked = false;
                }
            }
        }
        this.combinations[i] = r_comb;
        var flag = false;
        for (var k = 0; k < this.combinations.length; k++) {
            if (this.combinations[k].length != this.combinationSize) {
                flag = true;
            }
        }
        if (!flag && this.email !== "") {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    GiveTicketComponent.prototype.randomInt = function (min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    };
    GiveTicketComponent.prototype.addTicket = function () {
        this.addTicketToTable();
        var newCombination = [];
        this.combinations.push(newCombination);
        this.raffles.push(1);
        this.lotteryFunds += 1;
    };
    GiveTicketComponent.prototype.countDown = function () {
        var countDownDate = this.getCountDownDate();
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000)).getTime();
        var distance = countDownDate - now;
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        this.cd = hours + "h " + minutes + "m " + seconds + "s ";
    };
    GiveTicketComponent.prototype.getCountDownDate = function () {
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        if (this.lotteryName == "Jackpot 4x21") {
            if (now.getHours() >= 23) {
                cd.setHours(3);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 2 && now.getHours() >= 0) {
                cd.setHours(3);
            }
            else if (now.getHours() >= 2 && now.getHours() < 5) {
                cd.setHours(5);
            }
            else if (now.getHours() >= 5 && now.getHours() < 8) {
                cd.setHours(8);
            }
            else if (now.getHours() >= 8 && now.getHours() < 11) {
                cd.setHours(11);
            }
            else if (now.getHours() >= 11 && now.getHours() < 14) {
                cd.setHours(14);
            }
            else if (now.getHours() >= 14 && now.getHours() < 17) {
                cd.setHours(17);
            }
            else if (now.getHours() >= 17 && now.getHours() < 20) {
                cd.setHours(23);
            }
            else if (now.getHours() >= 20 && now.getHours() < 23) {
                cd.setHours(23);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 5x36") {
            if (now.getHours() >= 22) {
                cd.setHours(4);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 4 && now.getHours() >= 0) {
                cd.setHours(4);
            }
            else if (now.getHours() >= 4 && now.getHours() < 10) {
                cd.setHours(10);
            }
            else if (now.getHours() >= 10 && now.getHours() < 16) {
                cd.setHours(16);
            }
            else if (now.getHours() >= 16 && now.getHours() < 22) {
                cd.setHours(22);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Jackpot 6x45") {
            if (now.getHours() >= 21) {
                cd.setHours(9);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 9 && now.getHours() >= 0) {
                cd.setHours(9);
            }
            else if (now.getHours() >= 9 && now.getHours() < 21) {
                cd.setHours(21);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Rapidos") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
                cd.setMinutes(15);
            }
            else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
                cd.setMinutes(30);
            }
            else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
                cd.setMinutes(45);
            }
            else if (now.getMinutes() >= 45) {
                cd.setMinutes(0);
                cd.setHours(now.getHours() + 1);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Two Numbers") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
                cd.setMinutes(20);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
                cd.setMinutes(35);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 50) {
                cd.setMinutes(50);
            }
            else if (now.getMinutes() >= 50 && now.getMinutes() < 0) {
                cd.setMinutes(5);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
                cd.setMinutes(5);
            }
            cd.setSeconds(0);
        }
        else if (this.lotteryName == "Prize&Jackpot") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
                cd.setMinutes(25);
            }
            else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
                cd.setMinutes(40);
            }
            else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
                cd.setMinutes(55);
            }
            else if (now.getMinutes() >= 55 && now.getMinutes() < 0) {
                cd.setMinutes(10);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
                cd.setMinutes(10);
            }
            cd.setSeconds(0);
        }
        return cd.getTime();
    };
    GiveTicketComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        location.reload();
    };
    GiveTicketComponent.prototype.removeButtonFlag = function () {
        if (this.tickets.length > 1) {
            return true;
        }
        else {
            return false;
        }
    };
    GiveTicketComponent.prototype.emailChange = function () {
        var flag = this.checkCombinationSelected();
        if (!flag && this.email !== "") {
            document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
        }
    };
    GiveTicketComponent.prototype.open = function (content) {
        var _this = this;
        this.modalService.open(content).result.then(function (result) {
            //this.closeResult = `Closed with: ${result}`;
            _this.buyTickets();
        }, function (reason) {
            //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
        });
    };
    GiveTicketComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return GiveTicketComponent;
}());
GiveTicketComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-give-ticket',
        template: __webpack_require__("../../../../../src/app/components/give-ticket/give-ticket.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/give-ticket/give-ticket.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_lottery_service__["a" /* LotteryService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_3__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _d || Object])
], GiveTicketComponent);

var _a, _b, _c, _d;
//# sourceMappingURL=give-ticket.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "/**{\r\n  color: black;\r\n}*/\r\n\r\n/*.table-dark td {\r\n   text-align: center;\r\n}*/\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  /*overflow-y: scroll;*/\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  /*width: 50%;\r\n  position: fixed;*/\r\n  /*display: table;*/\r\n  width: 80%;\r\n  /*border-color: red;\r\n  border: 5px solid red;*/\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n  /*display: table-cell;*/\r\n}\r\n\r\n.banner-cell {\r\n  /*padding-top: 25px;*/\r\n  /*padding-left: 25px;*/\r\n}\r\n\r\n/*#titleBanner {\r\n  width: 50rem;\r\n}*/\r\n\r\n.lottery-cell {\r\n  /*padding: 5px;*/\r\n  /*align: \"center\";*/\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n/*h5 {\r\n  margin-left: 20px;\r\n}*/\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.lotteryLabel2 {\r\n  font-size: 1em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 53%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryCounter {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 62%;\r\n  width: 100%;\r\n  font-size: 15pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 70%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px;\"><a routerLink=\"/#\"><h5 style=\"cursor: pointer; color=black;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n<!--<div class=\"container\">-->\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td style=\"padding-top: 10%;\">\r\n        <app-navbar></app-navbar>\r\n    </td>\r\n    <td class=\"banner-cell\" colspan=\"3\" align=\"center\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n        <!--<div>\r\n          <img src=\"assets/img/title_banner.png\" id=\"titleBanner\">\r\n        </div>-->\r\n        <!--<div class=\"slider-holder\">\r\n          <span id=\"slider-image-1\"></span>\r\n          <span id=\"slider-image-2\"></span>\r\n          <div class=\"image-holder\">\r\n              <img src=\"assets/img/bannermega_1.jpg\" class=\"slider-image\" />\r\n              <img src=\"assets/img/bannermega_3.jpg\" class=\"slider-image\" />\r\n          </div>\r\n          <div class=\"button-holder\">\r\n              <a href=\"#slider-image-1\" class=\"slider-change\"></a>\r\n              <a href=\"#slider-image-2\" class=\"slider-change\"></a>\r\n          </div>\r\n      </div>-->\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text\">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\"><b>SUPER</b>JACK<b>POT&nbsp;&nbsp;&nbsp;{{superjackpot_value}} SJP</b></legend>\r\n            <label class=\"lotteryLabel2\">Win multimillion jackpots ...</label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('jackpot_4x21', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/4_21.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 4x21</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_4_21_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_4_21_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 4x21', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_4x21', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_4x21', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('jackpot_5x36', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/5_36.jpg\" alt=\"Card image cap\">\r\n                    </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 5x36</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_5_36_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_5_36_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 5x36', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_5x36', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_5x36', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('jackpot_6x45', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/6_45.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 6x45</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_6_45_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_6_45_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 6x45', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_6x45', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('jackpot_6x45', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n      <tr>\r\n        <td></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\">INSTANT<b>LOTTO</b></legend>\r\n            <label class=\"lotteryLabel2\">These are the fastest lotteries. Ways to win - a great many. You can become a Winner, even if you do not guess a single number. You decide how to participate, how many numbers to note, and, of course, how much You want to win.<br/>The choice is Yours!</label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('rapidos', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/rapidos.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">RAPI<b>DOS</b></div>\r\n                  <div class=\"lotteryCounter\">{{rapidos_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{rapidos_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Rapidos', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('rapidos', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('rapidos', 'yes')\">Present</button></div>\r\n                  </div>\r\n\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('two_numbers', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/two_numbers.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">TWO <b>NUMBERS</b></div>\r\n                  <div class=\"lotteryCounter\">{{two_numbers_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{two_numbers_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Two Numbers', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('two_numbers', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('two_numbers', 'yes')\">Present</button></div>\r\n                  </div>\r\n\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLogin('prize_jackpot', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/prize_jackpot.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">PRIZE&<b>JACKPOT</b></div>\r\n                  <div class=\"lotteryCounter\">{{prize_jackpot_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{prize_jackpot_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Prize&Jackpot', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('prize_jackpot', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"goLogin('prize_jackpot', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n      <tr>\r\n        <td></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\">SCRATCH <b>LOTTERIES</b></legend>\r\n            <label class=\"lotteryLabel\"></label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLoginScratch('fruity', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/33.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\"><b>Fruity</b></div>\r\n                  <div class=\"lotteryCounter\">Any time</div>\r\n                  <div class=\"lotteryFunds\">333 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Fruity', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('fruity', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('fruity', 'yes')\" class=\"lotteryButton\" >Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                <a (click)=\"goLoginScratch('100CASH', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/100000CASH.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">100'000 <b>CASH</b></div>\r\n                  <div class=\"lotteryCounter\">Any time</div>\r\n                  <div class=\"lotteryFunds\">1 000 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('100`000 CASH', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('100CASH', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('100CASH', 'yes')\" class=\"lotteryButton\" >Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"goLoginScratch('777', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/top3.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\"><b>777</b></div>\r\n                  <div class=\"lotteryCounter\">Any time</div>\r\n                  <div class=\"lotteryFunds\">777 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('777', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('777', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"goLoginScratch('777', 'yes')\" class=\"lotteryButton\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n    </table>\r\n<!--</div>-->\r\n\r\n\r\n<!--<fieldset class=\"scheduler-border\">\r\n    <legend class=\"scheduler-border\">Start Time</legend>\r\n    <div class=\"control-group\">\r\n        <label class=\"control-label input-label\" for=\"startTime\">Start :</label>\r\n        <div class=\"controls bootstrap-timepicker\">\r\n            <input type=\"text\" class=\"datetime\" type=\"text\" id=\"startTime\" name=\"startTime\" placeholder=\"Start Time\" />\r\n            <i class=\"icon-time\"></i>\r\n        </div>\r\n    </div>\r\n</fieldset>-->\r\n\r\n\r\n\r\n\r\n<ng-template #content let-c=\"close\" let-d=\"dismiss\">\r\n  <div class=\"modal-header\">\r\n    <h4 class=\"modal-title\">{{modalTitle}}</h4>\r\n    <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n      <span aria-hidden=\"true\">&times;</span>\r\n    </button>\r\n  </div>\r\n\r\n  <!--<div class=\"modal-body\">\r\n    <p><b>Prize</b></p>\r\n    <p>\r\n      The current prize pool is 1000 SJP. The more the participants, the bigger the prize fund!\r\n    </p>\r\n    <p><b>Participation & Rules</b></p>\r\n    <p>\r\n      To participate in the lottery, you need to choose {{combinationSize}} numbers from 1 to {{maxNumber}} in your lottery ticket, or select the magic wand icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited.\r\n      The cost of one ticket is {{ticketCost}} SJP. Your prize is transferred to your Wallet Space in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about Wallet Space in section “My Tokens”.<br>\r\n      {{lotteryGrequencyDescription}}\r\n    </p>\r\n    <p><b>Ticket Price</b></p>\r\n    <p>\r\n      The cost of one ticket is {{ticketCost}} SJP.\r\n    </p>\r\n    <p><b>Taxes</b></p>\r\n    <p>\r\n      Fire Lotto does not act as a tax agent. The responsibility to pay taxes lies with the owner of the cryptocurrency wallet to which the winnings were transferred – Wallet Space.\r\n    </p>\r\n    <p><b>Agreement</b></p>\r\n    <p>\r\n      By participating in the lottery, you agree to the lottery rules. By purchasing the lottery tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the lottery in your country of residence.\r\n    </p>\r\n  </div>-->\r\n\r\n  <div class=\"modal-body\" >\r\n    <div *ngIf=\"lottery_description == 1\">\r\n    <p>The 4x21 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_4_21_value}} SJP.</p>\r\n    <hr/>\r\n    <p><b>Time</b></p>\r\n    <p>Drawings are held daily, at 02:00, 05:00, 08:00, 11:00, 14:00, 17:00, 20:00 and 23:00 GMT. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n    <hr/>\r\n    <p><b>Participation & Rules</b></p>\r\n    <p>To participate in the Lottery, you need to choose 4 numbers from 1 to 21 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n      <hr/>\r\n    <p><b>Distribution of Funds</b></p>\r\n    The price of one ticket  -  1 SJP\r\n    Funds collected from ticket sales for each drawing are distributed as follows:\r\n    21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n    SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n    70% goes to the Prize pool for the current drawing:<br/>\r\n    The distribution of the Prize pool by the number of guessed numbers<br/>\r\n    2 - 32% of the Prize Pool / The number of Players who matched 2 numbers<br/>\r\n    3\t- 33% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n    4\t- 35% of the Prize Pool – Jackpot<br/>\r\n    9% are used to cover technical and operating expenses.<hr/>\r\n    <p><b>Jackpot</b></p>\r\n    35% of the Prize pool (Category 4) are always rolled over to the Jackpot for the following drawing. The Jackpot built up over the previous drawings is divided between the  Owners of the tickets with 4 matching numbers. If there are no such tickets, the current Jackpot is rolled over to the Jackpot for the following drawing. In category 2, 3 the winning amount is divided by the number of Winners in this category. If there are no Winners, then the Prize pool of these categories also goes to the Jackpot of the following drawing.<hr/>\r\n    <p><b>Casting</b></p>\r\n    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE<hr/>\r\n    <p><b>Taxes</b></p>\r\n    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.<hr/>\r\n    <p><b>Agreement</b></p>\r\n    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n  </div>\r\n\r\n<div *ngIf=\"lottery_description == 2\">\r\n  <p>The 5x36 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_5_36_value}} SJP.</p>\r\n  <hr/>\r\n  <p><b>Time</b></p>\r\n  Drawings are held daily, at 04:00, 10:00, 16:00 and 22:00 GMT.\r\n  The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n  <hr/>\r\n  <p><b>Participation & Rules</b></p>\r\n  To participate in the Lottery, you need to choose 5 numbers from 1 to 36 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n  <hr/>\r\n  <p><b>Distribution of Funds</b></p>\r\n  The price of one ticket  -  2 SJP\r\n  Funds collected from ticket sales for each drawing are distributed as follows:\r\n  21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n  SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n  70% goes to the Prize pool for the current drawing:\r\n  There are four winning categories in the Lottery: two with fixed winnings and two with accumulated Jackpot.<br/>\r\n  2 - 2 SJP / The number of Players who matched 2 numbers <br/>\r\n  3\t- 20 SJP / The number of Players who matched 3 numbers<br/>\r\n  4\t- 50 SJP / The number of Players who matched 4 numbers\t<br/>\r\n  5 - 50% / Jackpot<br/>\r\n  First, fixed winnings are calculated for 2 and 3 guessed numbers. After that, the rest of the Prize pool is divided equally between the categories 4 and 5  (Jackpot). If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n  9% are used to cover technical and operating expenses.\r\n  <hr/>\r\n  <p><b>Casting</b></p>\r\n  The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n  <hr/>\r\n  <p><b>Taxes</b></p>\r\n  SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n  <hr/>\r\n  <p><b>Agreement</b></p>\r\n  By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n</div>\r\n\r\n<div *ngIf=\"lottery_description == 3\">\r\n  <p>The 6x45 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_6_45_value}} SJP.</p>\r\n  <hr/>\r\n  <p><b>Time</b></p>\r\n  Drawings are held daily, at 09:00 and 21:00 GMT.\r\n  The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n  <hr/>\r\n  <p><b>Participation & Rules</b></p>\r\n  To participate in the Lottery, you need to choose 6 numbers from 1 to 45 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n  <hr/>\r\n  <p><b>Distribution of Funds</b></p>\r\n  The price of one ticket  -  3 SJP\r\n  Funds collected from ticket sales for each drawing are distributed as follows:\r\n  21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n  SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n  70% goes to the Prize pool for the current drawing:\r\n  Win combinations in which in one field 2, 3, 4, 5 or 6 numbers from 45 coincide with winning numbers.\r\n  Those participants who guessed the 2 numbers receive 3 SJP each. The remaining Prize pool is distributed in the following percentage:<br/>\r\n  3\t- 24% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n  4\t- 14% of the Prize Pool / The number of Players who matched 4 numbers<br/>\r\n  5\t- 26% of the Prize Pool / The number of Players who matched 5 numbers\t<br/>\r\n  6\t- 36% of the Prize Pool – Jackpot<br/>\r\n  Guessing 6 numbers, You get a Jackpot! The Jackpot is accumulated. Therefore, if no one guesses 6 numbers in the current draw, the accumulated amount goes to the next draw Jackpot Prize pool. In category 3, 4, 5 the winning amount is divided by the number of Winners in this category. If there are no Winners in any of these categories, then the Prize pool of these categories also goes to the Jackpot of the following drawing.\r\n  9% are used to cover technical and operating expenses.\r\n  <hr/>\r\n  <p><b>Casting</b></p>\r\n  The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n  <hr/>\r\n  <p><b>Taxes</b></p>\r\n  SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n  <hr/>\r\n  <p><b>Agreement</b></p>\r\n  By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n  </div>\r\n\r\n<div *ngIf=\"lottery_description == 4\">\r\n  Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\n  The Rapidos Lottery has a minimum guaranteed Jackpot of {{rapidos_value}} SJP and to win a Jackpot, you just need to guess 8 numbers out of 20 in the first part of the field and one number in four - in the second part.\r\n  <hr/>\r\n  <p><b>Time</b></p>\r\n  Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n  The price of one ticket  -  1 SJP\r\n  <hr/>\r\n  <p><b>How to play</b></p>\r\n  In a ticket - only one playing field, consisting of two parts (the first and second).<br/>\r\n  • You need to choose 8 non-repeating numbers from 1 to 20 in the first part of the playing field and one number from 1 to 4 - in the second part.<br/>\r\n  • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n  • To participate in several runs, specify their number in a special column.<br/>\r\n  • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n  When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n  <hr/>\r\n  <p><b>What can be won?</b></p>\r\n\r\n  In Rapid SJP there are 9 categories of winnings.<br/>\r\n  All winnings, except for the Jackpot, are fixed. The minimum winnings are 1 SJP.<br/>\r\n\r\n<table class=\"table\">\r\n  <thead>\r\n    <tr colspan=\"3\">\r\n      <th>You can win in Rapidos</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>Guessed the numbers in the first part of the field</td>\r\n      <td>Guessed the numbers in the second part of the field</td>\r\n      <td>You win</td>\r\n    </tr>\r\n    <tr>\r\n      <td>8</td>\r\n      <td>1</td>\r\n      <td>Jackpot</td>\r\n    </tr>\r\n    <tr>\r\n      <td>8</td>\r\n      <td>0</td>\r\n      <td>1 000 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>7</td>\r\n      <td>1</td>\r\n      <td>150 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>7</td>\r\n      <td>0</td>\r\n      <td>50 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>6</td>\r\n      <td>1</td>\r\n      <td>30 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>6</td>\r\n      <td>0</td>\r\n      <td>10 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>5</td>\r\n      <td>1</td>\r\n      <td>5 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>5</td>\r\n      <td>0</td>\r\n      <td>2 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>4</td>\r\n      <td>1</td>\r\n      <td>1 SJP</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\nThe Jackpot is received by the one who guessed 8 numbers in the first part of the field and one number in the second. The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. Therefore, if no one guesses the combination of the draw in the current draw, the accumulated amount goes to the next draw.\r\n<hr/>\r\n<p><b>Casting</b></p>\r\nThe translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n<hr/>\r\n<p><b>Taxes</b></p>\r\nSJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n<hr/>\r\n<p><b>Agreement</b></p>\r\nBy participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n</div>\r\n\r\n<div *ngIf=\"lottery_description == 5\">\r\n  Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\nThe Two Numbers  Lottery is one of the most simple and popular Lotteries in the world since ancient times.\r\n<hr/>\r\n<p><b>Time</b></p>\r\nDrawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\nThe price of one ticket  -  2 SJP\r\n<hr/>\r\n<p><b>How to play</b></p>\r\nIn a ticket - only one playing field, consisting of two parts (the first and second). <br/>\r\n• You need to choose 1 numbers from 1 to 100 in the first part of the playing field and one number from 1 to 8 - in the second part.<br/>\r\n• To participate in several runs, specify their number in a special column.<br/>\r\n• After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\nWhen the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n<hr/>\r\n<p><b>What can be won?</b></p>\r\nThe Jackpot is received by the one who guessed one number in the first part of the field and one number in the second.\r\n<table class=\"table\">\r\n  <thead>\r\n    <tr colspan=\"3\">\r\n      <th>You can win in Two Numbers Lottery</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>Guessed the numbers in the first part of the field</td>\r\n      <td>Guessed the numbers in the second part of the field</td>\r\n      <td>You win</td>\r\n    </tr>\r\n    <tr>\r\n      <td>1</td>\r\n      <td>1</td>\r\n      <td>Jackpot</td>\r\n    </tr>\r\n    <tr>\r\n      <td>1</td>\r\n      <td>0</td>\r\n      <td>150 SJP</td>\r\n    </tr>\r\n  </tbody>\r\n</table>\r\nFirst, fixed winnings are calculated for 1 guessed number. After that, the rest of the Prize pool transferees to Jackpot and distributes equally among the Winners. The Jackpot is accumulative. Therefore, if there were no Winners in these two categories, then the Prize pool will be transferred to the next draw Jackpot Prize pool.\r\n<hr/>\r\n<p><b>Casting</b></p>\r\nThe translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n<hr/>\r\n<p><b>Taxes</b></p>\r\nSJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n<hr/>\r\n<p><b>Agreement</b></p>\r\nBy participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n</div>\r\n\r\n<div *ngIf=\"lottery_description == 6\">\r\nLottery with an increased prize fund, which is 91% of each ticket purchased.\r\nThe 24/12 SJP Lottery has a minimum guaranteed Jackpot of {{prize_jackpot_value }} SJP and  this is the only lottery where you can win a Jackpot without guessing a single number. Also the Jackpot is received by those who guess 12 numbers from 24.\r\n<p><b>Time</b></p>\r\nDrawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\nThe price of one ticket  -  1 SJP\r\n<hr/>\r\n<p><b>How to play</b></p>\r\nThe ticket Prize&Jackpot Lottery consists of one field with numbers from 1 to 24. <br/>\r\n• Select 12 non-repeating numbers from 1 to 24.<br/>\r\n• By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n• To participate in several runs, specify their number in a special column.<br/>\r\n• After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\nWhen the ticket is issued - You are among the contenders for the victory. Congratulations!\r\n<hr/>\r\n<p><b>How to increase the chances?</b></p>\r\nThe chance of winning the lottery is regarded as one to 4.5. This is one of the highest figures among lotteries.\r\n<p>Now multiply the winnings! To do this, select the multiplier (maximum - 100).\r\nIt will multiply all your winnings, except for the Jackpot.</p>\r\n<p>Also you can choose the number of runs in which your ticket will participate. The maximum number of runs is 100.</p>\r\n<hr/>\r\n<p><b>What can be won?</b></p>\r\nWinners are considered to be combinations in which 0, 1, 2, 3, 4, 8, 9, 10, 11 or 12 numbers coincide with the numbers in the draw. All winnings, except for the Prize and the Jackpot, are fixed. The minimum winnings are 2 SJP.\r\n\r\n<table class=\"table\">\r\n  <thead>\r\n    <tr colspan=\"2\">\r\n      <th>You can win in Prize&Jackpot Lottery</th>\r\n    </tr>\r\n  </thead>\r\n  <tbody>\r\n    <tr>\r\n      <td>Guessed the numbers</td>\r\n      <td>You win</td>\r\n    </tr>\r\n    <tr>\r\n      <td>0 or 12 guessed numbers</td>\r\n      <td>50% of the Prize pool / Jackpot</td>\r\n    </tr>\r\n    <tr>\r\n      <td>1 or 11 guessed numbers</td>\r\n      <td>50% of the Prize pool / Prize</td>\r\n    </tr>\r\n    <tr>\r\n      <td>2 or 10 guessed numbers</td>\r\n      <td>25 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>3 or 9 guessed numbers</td>\r\n      <td>5 SJP</td>\r\n    </tr>\r\n    <tr>\r\n      <td>4 or 8 guessed numbers</td>\r\n      <td>2 SJP</td>\r\n    </tr>\r\n  </tbody>\r\n  <tr colspan=\"2\">\r\n    <td>Combinations in which 5, 6 and 7 numbers have coincided, do not win.</td>\r\n  </tr>\r\n</table>\r\nThe minimum guaranteed Jackpot is 2100 SJP. It is accumulative. First, fixed winnings are calculated. After that, the rest of the Prize pool is divided equally between the categories Prize and Jackpot. If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n<hr/>\r\n<p><b>Casting</b></p>\r\nThe translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n<hr/>\r\n<p><b>Taxes</b></p>\r\nSJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n<hr/>\r\n<p><b>Agreement</b></p>\r\nBy participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n</div>\r\n<hr>\r\n<div>\r\n  <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n  <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n     <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n     <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n    <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n    <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n    <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n    <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n    <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n    <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n    <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n    <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n    <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n    <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n    <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n    <h5>How to withdraw winnings to a bank account</h5>\r\n    <table class=\"table\">\r\n      <thead>\r\n        <tr>\r\n          <th>Approach</th>\r\n          <th>Algorithm of actions</th>\r\n          <th>Comments, restrictions</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n          <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n          <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n        </tr>\r\n        <tr>\r\n          <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n          <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n          <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n        </tr>\r\n        <tr>\r\n          <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n          <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n          <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n        </tr>\r\n        <tr>\r\n          <td>SJP conversion with third party exchange services </td>\r\n          <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n          <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n</div>\r\n\r\n</div>\r\n\r\n  <div class=\"modal-footer\">\r\n    <button type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Close</button>\r\n  </div>\r\n</ng-template>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/home/home.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HomeComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var HomeComponent = (function () {
    function HomeComponent(router, lottery, auth, tpService, modalService) {
        this.router = router;
        this.lottery = lottery;
        this.auth = auth;
        this.tpService = tpService;
        this.modalService = modalService;
        this.lottery_description = 0;
    }
    HomeComponent.prototype.ngOnInit = function () {
        var _this = this;
        setInterval(function () {
            _this.countDown();
        }, 1000);
        if (!this.auth.isTokenExpired()) {
            this.router.navigateByUrl('/privateOffice');
        }
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
                _this.jackpot_5_36_value = res.json().data.jackpot_5x36;
                _this.jackpot_6_45_value = res.json().data.jackpot_6x45;
                _this.jackpot_4_21_value = res.json().data.jackpot_4x21;
                _this.rapidos_value = res.json().data.rapidos;
                _this.two_numbers_value = res.json().data.two_numbers;
                _this.prize_jackpot_value = res.json().data.prize_jackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    HomeComponent.prototype.logOut = function () {
        /*const token = localStorage.getItem('token');
        this.auth.ensureAuthenticated(token)
        .then((resp_data) => {
          if (resp_data.json().status === 'success') {
            console.log(resp_data.json())
          }
        })
        .catch((err) => {
          console.log(err);
        });*/
        localStorage.removeItem('token'); //localStorage.clear();
    };
    HomeComponent.prototype.open = function (type, content) {
        var _this = this;
        this.modalTitle = type;
        if (type == "Lottery 5x36") {
            this.maxNumber = 36;
            this.combinationSize = 5;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
        }
        else if (type == "Lottery 6x45") {
            this.maxNumber = 45;
            this.combinationSize = 6;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
        }
        else if (type == "Lottery 4x20") {
            this.maxNumber = 20;
            this.combinationSize = 4;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
        }
        else if (type == "Lottery 7x49") {
            this.maxNumber = 49;
            this.combinationSize = 7;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
        }
        else if (type == "Jackpot 5x36") {
            this.maxNumber = 36;
            this.combinationSize = 5;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
            this.lottery_description = 2;
        }
        else if (type == "Jackpot 6x45") {
            this.maxNumber = 45;
            this.combinationSize = 6;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
            this.lottery_description = 3;
        }
        else if (type == "Jackpot 4x20") {
            this.maxNumber = 20;
            this.combinationSize = 4;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
        }
        else if (type == "Jackpot 4x21") {
            this.maxNumber = 21;
            this.combinationSize = 4;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
            this.lottery_description = 1;
        }
        else if (type == "Jackpot 7x49") {
            this.maxNumber = 49;
            this.combinationSize = 7;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
        }
        else if (type == "Rapidos") {
            this.maxNumber = 21;
            this.combinationSize = 4;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
            this.lottery_description = 4;
        }
        else if (type == "Two Numbers") {
            this.maxNumber = 36;
            this.combinationSize = 5;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Two numbers is held every 5 minutes.";
            this.lottery_description = 5;
        }
        else if (type == "Prize&Jackpot") {
            this.maxNumber = 45;
            this.combinationSize = 6;
            this.ticketCost = 1;
            this.lotteryGrequencyDescription = "Prize Jackpot is held every 5 minutes.";
            this.lottery_description = 6;
        }
        this.modalService.open(content).result.then(function (result) {
            //this.closeResult = `Closed with: ${result}`;
            _this.lottery_description = 0;
        }, function (reason) {
            //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
            _this.lottery_description = 0;
        });
    };
    HomeComponent.prototype.getDismissReason = function (reason) {
        if (reason === __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].ESC) {
            return 'by pressing ESC';
        }
        else if (reason === __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        }
        else {
            return "with: " + reason;
        }
    };
    HomeComponent.prototype.countDown = function () {
        this.jackpot_4_21_counter = this.getCountDown("Jackpot 4x21");
        this.jackpot_5_36_counter = this.getCountDown("Jackpot 5x36");
        this.jackpot_6_45_counter = this.getCountDown("Jackpot 6x45");
        this.rapidos_counter = this.getCountDown("Rapidos");
        this.two_numbers_counter = this.getCountDown("Two Numbers");
        this.prize_jackpot_counter = this.getCountDown("Prize&Jackpot");
    };
    HomeComponent.prototype.getCountDown = function (lotteryName) {
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        if (lotteryName == "Jackpot 4x21") {
            if (now.getHours() >= 23) {
                cd.setHours(3);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 2 && now.getHours() >= 0) {
                cd.setHours(3);
            }
            else if (now.getHours() >= 2 && now.getHours() < 5) {
                cd.setHours(5);
            }
            else if (now.getHours() >= 5 && now.getHours() < 8) {
                cd.setHours(8);
            }
            else if (now.getHours() >= 8 && now.getHours() < 11) {
                cd.setHours(11);
            }
            else if (now.getHours() >= 11 && now.getHours() < 14) {
                cd.setHours(14);
            }
            else if (now.getHours() >= 14 && now.getHours() < 17) {
                cd.setHours(17);
            }
            else if (now.getHours() >= 17 && now.getHours() < 20) {
                cd.setHours(23);
            }
            else if (now.getHours() >= 20 && now.getHours() < 23) {
                cd.setHours(23);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Jackpot 5x36") {
            if (now.getHours() >= 22) {
                cd.setHours(4);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 4 && now.getHours() >= 0) {
                cd.setHours(4);
            }
            else if (now.getHours() >= 4 && now.getHours() < 10) {
                cd.setHours(10);
            }
            else if (now.getHours() >= 10 && now.getHours() < 16) {
                cd.setHours(16);
            }
            else if (now.getHours() >= 16 && now.getHours() < 22) {
                cd.setHours(22);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Jackpot 6x45") {
            if (now.getHours() >= 21) {
                cd.setHours(9);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 9 && now.getHours() >= 0) {
                cd.setHours(9);
            }
            else if (now.getHours() >= 9 && now.getHours() < 21) {
                cd.setHours(21);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Rapidos") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
                cd.setMinutes(15);
            }
            else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
                cd.setMinutes(30);
            }
            else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
                cd.setMinutes(45);
            }
            else if (now.getMinutes() >= 45) {
                cd.setMinutes(0);
                cd.setHours(now.getHours() + 1);
            }
            cd.setSeconds(0);
        }
        else if (lotteryName == "Two Numbers") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
                cd.setMinutes(20);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
                cd.setMinutes(35);
            }
            else if (now.getMinutes() < 50 && now.getMinutes() >= 35) {
                cd.setMinutes(50);
            }
            else if (now.getMinutes() >= 50 /*&& now.getMinutes() < 0*/) {
                cd.setMinutes(5);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
                cd.setMinutes(5);
            }
            cd.setSeconds(0);
        }
        else if (lotteryName == "Prize&Jackpot") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
                cd.setMinutes(25);
            }
            else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
                cd.setMinutes(40);
            }
            else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
                cd.setMinutes(55);
            }
            else if (now.getMinutes() >= 55 /*&& now.getMinutes() < 0*/) {
                cd.setMinutes(10);
                cd.setHours(now.getHours() + 1);
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
                cd.setMinutes(10);
            }
            cd.setSeconds(0);
        }
        var countDownDate = cd.getTime();
        var distance = countDownDate - now.getTime();
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        return hours + "h " + minutes + "m " + seconds + "s ";
    };
    HomeComponent.prototype.goLogin = function (lotteryType, give) {
        this.router.navigateByUrl('/login');
        this.tpService.setLotteryType(lotteryType);
        this.tpService.setWannaGive(give);
    };
    HomeComponent.prototype.goLoginScratch = function (scratchType, give) {
        this.router.navigateByUrl('/login');
        this.tpService.setScratchType(scratchType);
        this.tpService.setLotteryType(scratchType);
        this.tpService.setWannaGive(give);
    };
    return HomeComponent;
}());
HomeComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'home',
        template: __webpack_require__("../../../../../src/app/components/home/home.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/home/home.component.css")],
        providers: [__WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]],
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _d || Object, typeof (_e = typeof __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _e || Object])
], HomeComponent);

var _a, _b, _c, _d, _e;
//# sourceMappingURL=home.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/how-it-works/how-it-works.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "a {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  margin-top: 40px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/how-it-works/how-it-works.component.html":
/***/ (function(module, exports) {

module.exports = "<h1>How It Works</h1>\n<div id=\"navbar\">\n<p><a routerLink=\"/login\">Home</a></p>\n<p><a routerLink=\"/login\">Log in</a></p>\n<p><a routerLink=\"/register\">Registration</a></p>\n<p><a routerLink=\"/about\">About</a></p>\n<p><a routerLink=\"/how-it-works\" style=\"color: grey\">How It Works</a></p>\n<p><a routerLink=\"/public-statistics\">Statistics</a></p>\n<p><a routerLink=\"/buy-ticket\">Buy Ticket!</a></p>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/how-it-works/how-it-works.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return HowItWorksComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var HowItWorksComponent = (function () {
    function HowItWorksComponent() {
    }
    HowItWorksComponent.prototype.ngOnInit = function () {
    };
    return HowItWorksComponent;
}());
HowItWorksComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-how-it-works',
        template: __webpack_require__("../../../../../src/app/components/how-it-works/how-it-works.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/how-it-works/how-it-works.component.css")]
    }),
    __metadata("design:paramtypes", [])
], HowItWorksComponent);

//# sourceMappingURL=how-it-works.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".brd {\r\n\r\n  border: 4px solid #fff;\r\n  border-radius: 50px;\r\n  margin-top: 15%;\r\n  background-color: rgba(255, 255, 255, 0.6);\r\n}\r\n\r\ninput {\r\n  height: 55px;\r\n  border-radius: 0;\r\n}\r\n\r\nbutton {\r\n  width: 100%;\r\n  height: 55px;\r\n  font-size: 150%;\r\n  padding-bottom: 10px;\r\n  border-radius: 0;\r\n}\r\n\r\n#background {\r\n  width: 100%;\r\n  height: 100%;\r\n  /*background-color:red;*/\r\n  padding-bottom: 10%;\r\n  background: red; /* For browsers that do not support gradients */ /* For Safari 5.1 to 6.0 */ /* For Opera 11.1 to 12.0 */ /* For Firefox 3.6 to 15 */\r\n    background: linear-gradient(to right, cyan, orange, violet); /* Standard syntax (must be last) */\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 60px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.html":
/***/ (function(module, exports) {

module.exports = "<app-cube style=\"position:absolute;margin-left:85%;margin-top:5%;\"></app-cube>\r\n<div id=\"background\">\r\n<div class=\"row\">\r\n  <div class=\"col-md-6 offset-md-3\">\r\n    <div class=\"brd\">\r\n      <img src=\"assets/img/logo_small.png\" alt=\"logo\" align=\"right\" style=\"padding: 30px;\">\r\n      <br>\r\n      <div style=\"padding: 30px 80px 35px 80px;\">\r\n        <h1 style=\"font-size: 30px; padding-bottom: 15px;\"><strong>Log in</strong></h1>\r\n        <ngb-alert *ngIf=\"errorMessage\" type=\"danger\" (close)=\"errorMessage = null\">{{ errorMessage }}</ngb-alert>\r\n        <form (ngSubmit)=\"onLogin()\" novalidate>\r\n         <div class=\"form-group\">\r\n\r\n           <input type=\"text\" class=\"form-control\" id=\"email\" placeholder=\"Email\" [(ngModel)]=\"user.email\" name=\"email\" required>\r\n         </div>\r\n         <div class=\"form-group\">\r\n\r\n           <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Password\" [(ngModel)]=\"user.password\" name=\"password\" required>\r\n         </div>\r\n\r\n         <!--<button type=\"submit\" class=\"btn btn-dark\"><strong>Sign in</strong></button>-->\r\n         <button type=\"submit\" class=\"lotteryButton\"><strong>Sign in</strong></button>\r\n        </form>\r\n\r\n        <p style=\"padding-top: 15px;\"><a href=\"/register\" style=\"color:#000;\">Not registered yet?</a></p>\r\n    </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/login/login.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_user__ = __webpack_require__("../../../../../src/app/models/user.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Subject__ = __webpack_require__("../../../../rxjs/Subject.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Subject___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_rxjs_Subject__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_operator_debounceTime__ = __webpack_require__("../../../../rxjs/operator/debounceTime.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_operator_debounceTime___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_rxjs_operator_debounceTime__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var LoginComponent = (function () {
    function LoginComponent(router, auth, tpService) {
        this.router = router;
        this.auth = auth;
        this.tpService = tpService;
        this.user = new __WEBPACK_IMPORTED_MODULE_3__models_user__["a" /* User */]();
        this._alert = new __WEBPACK_IMPORTED_MODULE_5_rxjs_Subject__["Subject"]();
        this.staticAlertClosed = false;
    }
    LoginComponent.prototype.ngOnInit = function () {
        var _this = this;
        setTimeout(function () { return _this.staticAlertClosed = true; }, 20000);
        this._alert.subscribe(function (message) { return _this.errorMessage = message; });
        __WEBPACK_IMPORTED_MODULE_6_rxjs_operator_debounceTime__["debounceTime"].call(this._alert, 5000).subscribe(function () { return _this.errorMessage = null; });
        console.log(this.tpService.getScratchType());
        console.log(this.tpService.getLotteryType());
    };
    LoginComponent.prototype.onLogin = function () {
        var _this = this;
        this.auth.login(this.user)
            .then(function (user) {
            localStorage.setItem('token', user.json().auth_token);
            _this.router.navigateByUrl('/buy-ticket');
        })
            .catch(function (err) {
            _this.alertMessage(JSON.parse(err._body).message);
        });
    };
    LoginComponent.prototype.alertMessage = function (message) {
        this._alert.next(message);
    };
    return LoginComponent;
}());
LoginComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'login',
        template: __webpack_require__("../../../../../src/app/components/login/login.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/login/login.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], LoginComponent);

var _a, _b, _c;
//# sourceMappingURL=login.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/my-bets/my-bets.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\r\n.modalTable {\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.modalTable tr td button {\r\n  width: 40px;\r\n}\r\n\r\n.button-round {\r\n  border-radius: 50%;\r\n  color: #fff;\r\n  transition: transform .2s;\r\n}\r\n\r\n.cnv {\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: 50;\r\n}\r\n\r\n.newBet {\r\n  /*background-color: red;*/\r\n  background: linear-gradient(to right, cyan, orange, violet);\r\n  color: black;\r\n}\r\n\r\n.betRegular {\r\n\r\n}\r\n\r\n/*.button-black {\r\n\r\n    font-family: 'PT Sans', arial, serif;\r\n\r\n    color: black;\r\n    text-align:center;\r\n    vertical-align: middle;\r\n    font-size:17px;\r\n    font-weight:bold;\r\n\r\n    padding:5px;\r\n\r\n    border: 1px solid rgba(0,0,0,0.7);\r\n    border-bottom: 3px solid rgba(0,0,0,0.5);\r\n\r\n    background: rgba(255,255,255,1);\r\n\r\n}\r\n\r\n.button-black:hover {\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n}\r\n\r\n\r\n.button-red {\r\n\r\n    font-family: 'PT Sans', arial, serif;\r\n    color:#ffffff;\r\n    text-align:center;\r\n    vertical-align: middle;\r\n    font-size:17px;\r\n    font-weight:bold;\r\n\r\n    padding:5px;\r\n\r\n    text-shadow:\r\n    -1px -1px 0 #000,\r\n    1px -1px 0 #000,\r\n    -1px 1px 0 #000,\r\n    1px 1px 0 #000;\r\n\r\n    border: 1px solid rgba(0,0,0,0.5);\r\n    border-bottom: 3px solid rgba(0,0,0,0.5);\r\n\r\n\r\n    background: rgba(0,0,0,0.25);\r\n\r\n    box-shadow:\r\n    0 2px 8px rgba(0,0,0,0.5),\r\n    inset 0 1px rgba(255,255,255,0.3),\r\n    inset 0 10px rgba(255,255,255,0.2),\r\n    inset 0 10px 20px rgba(255,255,255,0.25),\r\n    inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n    -o-box-shadow:\r\n    0 2px 8px rgba(0,0,0,0.5),\r\n    inset 0 1px rgba(255,255,255,0.3),\r\n    inset 0 10px rgba(255,255,255,0.2),\r\n    inset 0 10px 20px rgba(255,255,255,0.25),\r\n    inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n    -webkit-box-shadow:\r\n    0 2px 8px rgba(0,0,0,0.5),\r\n    inset 0 1px rgba(255,255,255,0.3),\r\n    inset 0 10px rgba(255,255,255,0.2),\r\n    inset 0 10px 20px rgba(255,255,255,0.25),\r\n    inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n    -moz-box-shadow:\r\n    0 2px 8px rgba(0,0,0,0.5),\r\n    inset 0 1px rgba(255,255,255,0.3),\r\n    inset 0 10px rgba(255,255,255,0.2),\r\n    inset 0 10px 20px rgba(255,255,255,0.25),\r\n    inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n}\r\n\r\n.button-red:hover {\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.5),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.25),\r\n  inset 0 -15px 30px rgba(0,0,0,0.3);\r\n\r\n}*/\r\n\r\n.button-black {\r\n  color: black;\r\n  font-weight: bold;\r\n  background: #FFF;\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n}\r\n\r\n.button-black:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n\r\n.button-red {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.button-round:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n\r\n#betsTable {\r\n  margin-left: 2%;\r\n  margin-right: 2%;\r\n  margin-bottom: 40px;\r\n}\r\n\r\na.betTab.active {\r\n  background-color: #212529;\r\n  /*background-color: black;*/\r\n  /*font-weight: bold;*/\r\n  color: white;\r\n}\r\n\r\na.betTab {\r\n  /*font-weight: bold;*/\r\n  background-color: #c0c0c0;\r\n  color: #212529;\r\n  width: 50%;\r\n  text-align: center;\r\n}\r\n\r\n.table {\r\n  margin-top: 0px;\r\n}\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n#ballsTable {\r\n  padding: 30%;\r\n  width: 100%;\r\n  height: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.ball {\r\n  position: relative;\r\n  cursor: pointer;\r\n}\r\n\r\n.hidden-number {\r\n  opacity: 0;\r\n  position: absolute;\r\n  font-size: 30pt;\r\n  top: 73%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  font-weight: bold;\r\n}\r\n\r\n.thead-dark th {\r\n  background-color: black;\r\n}\r\n\r\n.black-button {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  background-color: black;\r\n  color: white;\r\n}\r\n\r\n.black-button:hover {\r\n  background-color: white;\r\n  color: black;\r\n  transition: 0.3s;\r\n}\r\n\r\n.nav-tabs > a.active {\r\n  background-color: black;\r\n  border-radius: 0;\r\n  border: 0;\r\n  border-bottom: 3px solid white;\r\n\r\n}\r\n\r\n.nav-tabs a {\r\n  border-radius: 0;\r\n  border-bottom: 3px solid white;\r\n\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/my-bets/my-bets.component.html":
/***/ (function(module, exports) {

module.exports = "\r\n\r\n<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div style=\"width: 926px\">\r\n\r\n                <div id=\"betsTable\">\r\n                <nav style=\"margin-top: 10px;\">\r\n                  <div class=\"nav nav-tabs\" id=\"nav-tab\" role=\"tablist\">\r\n                    <a class=\"nav-item nav-link betTab active\" id=\"nav-home-tab\" data-toggle=\"tab\" href=\"#nav-home\" role=\"tab\" aria-controls=\"nav-home\" aria-selected=\"true\">Current</a>\r\n                    <a class=\"nav-item nav-link betTab\" id=\"nav-profile-tab\" data-toggle=\"tab\" href=\"#nav-profile\" role=\"tab\" aria-controls=\"nav-profile\" aria-selected=\"false\">Archive</a>\r\n                  </div>\r\n                </nav>\r\n                <div class=\"tab-content\" id=\"nav-tabContent\">\r\n                  <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\r\n                    <div id=\"betContent\">\r\n                    <table class=\"table\">\r\n                      <tr class=\"thead-dark\">\r\n                        <th>#</th>\r\n                        <th>Type</th>\r\n                        <th>Combination</th>\r\n                        <th></th>\r\n                      </tr>\r\n                      <!--<tr *ngFor=\"let d of tableData\">\r\n                        <td *ngIf=\"d.is_new\" bgcolor=\"black\" style=\"color:white\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"d.is_new\" bgcolor=\"black\" style=\"color:white\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"d.is_new && !d.scratch\" bgcolor=\"black\" style=\"color:white\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"d.is_new && d.scratch\" bgcolor=\"black\" style=\"color:white\"></td>\r\n                        <td *ngIf=\"d.is_new && !d.scratch\" bgcolor=\"black\" style=\"color:white\" align=\"center\"><button type=\"button\" class=\"btn btn-dark\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, false)\">Reset Combination</button></td>\r\n                        <td *ngIf=\"d.is_new && d.scratch\" bgcolor=\"black\" style=\"color:white\" align=\"center\"><button type=\"button\" class=\"btn btn-dark\" style=\"width: 160px;\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, true)\">Scratch</button></td>\r\n                        <td *ngIf=\"!d.is_new\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"!d.is_new\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"!d.is_new && !d.scratch\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"!d.is_new && d.scratch\"></td>\r\n                        <td *ngIf=\"!d.is_new && !d.scratch\" align=\"center\"><button type=\"button\" class=\"btn btn-dark\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, false)\">Reset Combination</button></td>\r\n                        <td *ngIf=\"!d.is_new && d.scratch\" align=\"center\"><button type=\"button\" class=\"btn btn-dark\" style=\"width: 160px;\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, true)\">Scratch</button></td>\r\n                      </tr>-->\r\n                      <tr *ngFor=\"let d of tableData\" class={{d.bet_class}}>\r\n                        <td *ngIf=\"d.is_new\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"d.is_new\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"d.is_new && !d.scratch\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"d.is_new && d.scratch\" ></td>\r\n                        <td *ngIf=\"d.is_new && !d.scratch\" align=\"center\"><button type=\"button\" class=\"black-button\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, false)\">Reset Combination</button></td>\r\n                        <td *ngIf=\"d.is_new && d.scratch\" align=\"center\"><button type=\"button\" class=\"black-button\" style=\"width: 160px;\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, true)\">Scratch</button></td>\r\n                        <td *ngIf=\"!d.is_new\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"!d.is_new\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"!d.is_new && !d.scratch\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"!d.is_new && d.scratch\"></td>\r\n                        <td *ngIf=\"!d.is_new && !d.scratch\" align=\"center\"><button type=\"button\" class=\"black-button\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, false)\">Reset Combination</button></td>\r\n                        <td *ngIf=\"!d.is_new && d.scratch\" align=\"center\"><button type=\"button\" class=\"black-button\" style=\"width: 160px;\" (click)=\"open(d.id, d.fake_id, d.type, d.type_name, content, true)\">Scratch</button></td>\r\n                      </tr>\r\n                    </table>\r\n\r\n\r\n                    <!--<ng-template #content let-c=\"close\" let-d=\"dismiss\">\r\n                      <div class=\"modal-header\">\r\n                        <h4 class=\"modal-title\"><b>{{ modalType }}</b> - #{{ modalId }}</h4>\r\n                        <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n                          <span aria-hidden=\"true\">&times;</span>\r\n                        </button>\r\n                      </div>\r\n                      <div class=\"modal-body\">\r\n                        <p>Select {{ combinationQuantity }} numbers or set the combination empty - the numbers will be selected automatically</p>\r\n                        <hr>\r\n                        <table class=\"modalTable\">\r\n                          <tr *ngFor=\"let r of modalButtonsTable\">\r\n                            <td *ngFor=\"let c of r\"><button class=\"{{ c.class }} button-round\" id=\"button_{{c.title}}\" (click)=\"editCombination(c.title)\">{{ c.title }}</button></td>\r\n                          </tr>\r\n                        </table>\r\n                      </div>\r\n                      <div class=\"modal-footer\">\r\n                        <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Save</button>\r\n                      </div>\r\n                    </ng-template>-->\r\n\r\n                    <!--<ng-template #content let-c=\"close\" let-d=\"dismiss\" *ngIf=\"scratchFlag\">\r\n                    <div *ngIf=\"!scratchFlag\">\r\n                      <div class=\"modal-header\">\r\n                        <h4 class=\"modal-title\"><b>{{ modalType }}</b> - #{{ modalId }}</h4>\r\n                        <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n                          <span aria-hidden=\"true\">&times;</span>\r\n                        </button>\r\n                      </div>\r\n                      <div class=\"modal-body\">\r\n                        <p>Select {{ combinationQuantity }} numbers or set the combination empty - the numbers will be selected automatically</p>\r\n                        <hr>\r\n                        <table class=\"modalTable\">\r\n                          <tr *ngFor=\"let r of modalButtonsTable\">\r\n                            <td *ngFor=\"let c of r\"><button class=\"{{ c.class }} button-round\" id=\"button_{{c.title}}\" (click)=\"editCombination(c.title)\">{{ c.title }}</button></td>\r\n                          </tr>\r\n                        </table>\r\n                      </div>\r\n                      <div class=\"modal-footer\">\r\n                        <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Save</button>\r\n                      </div>\r\n                    </div>\r\n                    <div *ngIf=\"scratchFlag\">\r\n                      <div class=\"modal-header\">\r\n                        <h4 class=\"modal-title\"><b>{{ modalType }}</b> - #{{ modalId }}</h4>\r\n                        <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n                          <span aria-hidden=\"true\">&times;</span>\r\n                        </button>\r\n                      </div>\r\n                      <div class=\"modal-body\">\r\n\r\n                      </div>\r\n                      <div class=\"modal-footer\">\r\n                        <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Save</button>\r\n                      </div>\r\n                    </div>\r\n                  </ng-template>-->\r\n\r\n                  <ng-template #content let-c=\"close\" let-d=\"dismiss\">\r\n                    <div class=\"modal-header\">\r\n                      <h4 class=\"modal-title\"><b>{{ modalType }}</b> - #{{ modalId }}</h4>\r\n                      <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n                        <span aria-hidden=\"true\">&times;</span>\r\n                      </button>\r\n                    </div>\r\n\r\n                    <div class=\"modal-body\" *ngIf=\"!scratchFlag\">\r\n                      <p>Select {{ combinationQuantity }} numbers or set the combination empty - the numbers will be selected automatically.</p>\r\n                      <p>Press the black button to deselect number. Press the white button to select new number. When you select {{ combinationQuantity }} numbers, you can save the new combination.</p>\r\n                      <hr>\r\n                      <table class=\"modalTable\">\r\n                        <tr *ngFor=\"let r of modalButtonsTable\">\r\n                          <td *ngFor=\"let c of r\"><button class=\"{{ c.class }} button-round\" id=\"button_{{c.title}}\" (click)=\"editCombination(c.title)\">{{ c.title }}</button></td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n\r\n                    <div class=\"modal-body\" *ngIf=\"scratchFlag\">\r\n                      <table id=\"ballsTable\" cellpadding=\"5\">\r\n                        <!--<tr>\r\n                          <td *ngFor=\"let n of scratchArray; let j = index\" align=\"center\">\r\n                            <div class=\"ball\" (click)=\"scratchBall(j)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" >\r\n                              <div id=\"ball_{{j}}\" class=\"hidden-number\">{{n}}</div>\r\n                            </div>\r\n                          </td>\r\n                        </tr>-->\r\n                        <tr>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(0)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(0)\">\r\n                              <div id=\"ball_0\" class=\"hidden-number\">{{scratchArray[0]}}</div>\r\n                              <canvas id=\"scractBall_0\" class=\"cnv\" width=\"145\" height=\"196\" (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(1)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(1)\">\r\n                              <div id=\"ball_1\" class=\"hidden-number\">{{scratchArray[1]}}</div>\r\n                              <canvas id=\"scractBall_1\" class=\"cnv\" width=\"145\" height=\"196\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(2)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(2)\">\r\n                              <div id=\"ball_2\" class=\"hidden-number\">{{scratchArray[2]}}</div>\r\n                              <canvas id=\"scractBall_2\" class=\"cnv\" width=\"146\" height=\"198\" (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(3)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(3)\">\r\n                              <div id=\"ball_3\" class=\"hidden-number\">{{scratchArray[3]}}</div>\r\n                              <canvas id=\"scractBall_3\" class=\"cnv\" width=\"145\" height=\"196\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(4)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(4)\">\r\n                              <div id=\"ball_4\" class=\"hidden-number\">{{scratchArray[4]}}</div>\r\n                              <canvas id=\"scractBall_4\" class=\"cnv\" width=\"145\" height=\"196\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(5)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(5)\">\r\n                              <div id=\"ball_5\" class=\"hidden-number\">{{scratchArray[5]}}</div>\r\n                              <canvas id=\"scractBall_5\" class=\"cnv\" width=\"146\" height=\"198\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                        </tr>\r\n                        <tr>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(6)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(6)\">\r\n                              <div id=\"ball_6\" class=\"hidden-number\">{{scratchArray[6]}}</div>\r\n                              <canvas id=\"scractBall_6\" class=\"cnv\" width=\"145\" height=\"196\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(7)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(7)\">\r\n                              <div id=\"ball_7\" class=\"hidden-number\">{{scratchArray[7]}}</div>\r\n                              <canvas id=\"scractBall_7\" class=\"cnv\" width=\"145\" height=\"196\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                          <td>\r\n                            <div class=\"ball\" (mouseenter)=\"setBall(8)\">\r\n                              <img class=\"card-img-top\" src=\"{{scratchBunner}}\" (load)=\"drawCover(8)\">\r\n                              <div id=\"ball_8\" class=\"hidden-number\">{{scratchArray[8]}}</div>\r\n                              <canvas id=\"scractBall_8\" class=\"cnv\" width=\"146\" height=\"198\"  (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                            </div>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n\r\n                    <div class=\"modal-footer\" *ngIf=\"!scratchFlag\">\r\n                      <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Save</button>\r\n                    </div>\r\n\r\n                    <div class=\"modal-footer\" *ngIf=\"scratchFlag\">\r\n                      <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Close</button>\r\n                    </div>\r\n\r\n                  </ng-template>\r\n\r\n\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"tab-pane fade\" id=\"nav-profile\" role=\"tabpanel\" aria-labelledby=\"nav-profile-tab\">\r\n                    <table class=\"table\">\r\n                      <tr class=\"thead-dark\">\r\n                        <th>#</th>\r\n                        <th>Type</th>\r\n                        <th>Combination</th>\r\n                        <th>Won Combination</th>\r\n                        <th>Date</th>\r\n                      </tr>\r\n                      <tr *ngFor=\"let d of archiveTableData\">\r\n                        <td *ngIf=\"d.is_win\" bgcolor=\"#FF0000\" style=\"color:white\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"d.is_win\" bgcolor=\"#FF0000\" style=\"color:white\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"d.is_win\" bgcolor=\"#FF0000\" style=\"color:white\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"d.is_win\" bgcolor=\"#FF0000\" style=\"color:white\">{{ d.won_combination }}</td>\r\n                        <td *ngIf=\"d.is_win\" bgcolor=\"#FF0000\" style=\"color:white\">{{ d.date }}</td>\r\n                        <td *ngIf=\"!d.is_win\">{{ d.fake_id }}</td>\r\n                        <td *ngIf=\"!d.is_win\">{{ d.type_name }}</td>\r\n                        <td *ngIf=\"!d.is_win\">{{ d.combination }}</td>\r\n                        <td *ngIf=\"!d.is_win\">{{ d.won_combination }}</td>\r\n                        <td *ngIf=\"!d.is_win\">{{ d.date }}</td>\r\n                      </tr>\r\n                    </table>\r\n                  </div>\r\n                </div>\r\n                </div>\r\n\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/my-bets/my-bets.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MyBetsComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_combination_update__ = __webpack_require__("../../../../../src/app/models/combination-update.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var MyBetsComponent = (function () {
    function MyBetsComponent(router, lottery, modalService, tpService) {
        this.router = router;
        this.lottery = lottery;
        this.modalService = modalService;
        this.tpService = tpService;
        this.rawData = [];
        this.tableData = [];
        this.archiveRawData = [];
        this.archiveTableData = [];
        this.modalId = "";
        this.modalType = "";
        this.combinationQuantity = 0;
        this.modalButtonsQuantity = 0;
        this.modalButtonsArray = [];
        this.modalButtonsTable = [];
        this.editableCombination = [];
        this.lotteryType = "";
        this.scratchArray = [];
        this.checkUpdateScratch = [];
        this.brushRadius = 20;
    }
    MyBetsComponent.prototype.ngOnInit = function () {
        this.loadData();
        /*console.log(JSON.parse(this.tpService.getNewBets()));*/
    };
    MyBetsComponent.prototype.loadData = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            //console.log(res.json());
            if (res.json().status === 'success') {
                //console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        //Active bets
        this.lottery.getBets()
            .then(function (res) {
            if (res.json().status === 'success') {
                console.log(res.json());
                _this.tableData = [];
                _this.rawData = res.json().data;
                //Jackpot 5x36
                for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_5x36[i].id,
                        "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
                        "type_name": "Jackpot 5x36",
                        "type": "jackpot_5x36",
                        "combination": _this.processCombination(res.json().data.jackpot_5x36[i].combination),
                        "is_new": _this.checkNewBet("jackpot_5x36", res.json().data.jackpot_5x36[i].combination),
                        "bet_class": _this.getBetClass("jackpot_5x36", res.json().data.jackpot_5x36[i].combination),
                        "date": new Date(res.json().data.jackpot_5x36[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //Jackpot 6x45
                for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_6x45[i].id,
                        "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
                        "type_name": "Jackpot 6x45",
                        "type": "jackpot_6x45",
                        "combination": _this.processCombination(res.json().data.jackpot_6x45[i].combination),
                        "is_new": _this.checkNewBet("jackpot_6x45", res.json().data.jackpot_6x45[i].combination),
                        "bet_class": _this.getBetClass("jackpot_6x45", res.json().data.jackpot_6x45[i].combination),
                        "date": new Date(res.json().data.jackpot_6x45[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //Jackpot 4x21
                for (var i = 0; i < res.json().data.jackpot_4x21.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_4x21[i].id,
                        "fake_id": "00" + 21421 + res.json().data.jackpot_4x21[i].id,
                        "type_name": "Jackpot 4x21",
                        "type": "jackpot_4x21",
                        "combination": _this.processCombination(res.json().data.jackpot_4x21[i].combination),
                        "is_new": _this.checkNewBet("jackpot_4x21", res.json().data.jackpot_4x21[i].combination),
                        "bet_class": _this.getBetClass("jackpot_4x21", res.json().data.jackpot_4x21[i].combination),
                        "date": new Date(res.json().data.jackpot_4x21[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //Rapidos
                for (var i = 0; i < res.json().data.rapidos.length; i++) {
                    var rowData = {
                        "id": res.json().data.rapidos[i].id,
                        "fake_id": "00" + 10645 + res.json().data.rapidos[i].id,
                        "type_name": "Rapidos",
                        "type": "rapidos",
                        "combination": _this.processCombination(res.json().data.rapidos[i].combination),
                        "is_new": _this.checkNewBet("rapidos", res.json().data.rapidos[i].combination),
                        "bet_class": _this.getBetClass("rapidos", res.json().data.rapidos[i].combination),
                        "date": new Date(res.json().data.rapidos[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //Two Numbers
                for (var i = 0; i < res.json().data.two_numbers.length; i++) {
                    var rowData = {
                        "id": res.json().data.two_numbers[i].id,
                        "fake_id": "00" + 10749 + res.json().data.two_numbers[i].id,
                        "type_name": "Two Numbers",
                        "type": "two_numbers",
                        "combination": _this.processCombination(res.json().data.two_numbers[i].combination),
                        "is_new": _this.checkNewBet("two_numbers", res.json().data.two_numbers[i].combination),
                        "bet_class": _this.getBetClass("two_numbers", res.json().data.two_numbers[i].combination),
                        "date": new Date(res.json().data.two_numbers[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //Prize&Jackpot
                for (var i = 0; i < res.json().data.prize_jackpot.length; i++) {
                    var rowData = {
                        "id": res.json().data.prize_jackpot[i].id,
                        "fake_id": "00" + 10536 + res.json().data.prize_jackpot[i].id,
                        "type_name": "Prize&Jackpot",
                        "type": "prize_jackpot",
                        "combination": _this.processCombination(res.json().data.prize_jackpot[i].combination),
                        "is_new": _this.checkNewBet("prize_jackpot", res.json().data.prize_jackpot[i].combination),
                        "bet_class": _this.getBetClass("prize_jackpot", res.json().data.prize_jackpot[i].combination),
                        "date": new Date(res.json().data.prize_jackpot[i].date),
                        "scratch": false
                    };
                    _this.tableData.push(rowData);
                }
                //777
                for (var i = 0; i < res.json().data.bets_777.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_777[i].id,
                        "fake_id": "00" + 777283 + res.json().data.bets_777[i].id,
                        "type_name": "777",
                        "type": "777",
                        "combination": res.json().data.bets_777[i].combination,
                        "is_new": true,
                        "bet_class": "newBet",
                        "date": new Date(res.json().data.bets_777[i].date),
                        "scratch": true
                    };
                    _this.tableData.push(rowData);
                }
                //Fruity
                for (var i = 0; i < res.json().data.bets_fruity.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_fruity[i].id,
                        "fake_id": "00" + 337283 + res.json().data.bets_fruity[i].id,
                        "type_name": "Fruity",
                        "type": "fruity",
                        "combination": res.json().data.bets_fruity[i].combination,
                        "is_new": true,
                        "bet_class": "newBet",
                        "date": new Date(res.json().data.bets_fruity[i].date),
                        "scratch": true
                    };
                    _this.tableData.push(rowData);
                }
                //100 000 CASH
                for (var i = 0; i < res.json().data.bets_100.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_100[i].id,
                        "fake_id": "00" + 100083 + res.json().data.bets_100[i].id,
                        "type_name": "100`000 CASH",
                        "type": "100CASH",
                        "combination": res.json().data.bets_100[i].combination,
                        "is_new": true,
                        "bet_class": "newBet",
                        "date": new Date(res.json().data.bets_100[i].date),
                        "scratch": true
                    };
                    _this.tableData.push(rowData);
                }
                _this.tableData = _this.sortAndFormatBetArray(_this.tableData);
            }
        }, function (err) {
            console.log(err);
        });
        //Archive
        this.lottery.getBetsArchive()
            .then(function (res) {
            if (res.json().status === 'success') {
                console.log(res.json());
                _this.archiveTableData = [];
                _this.archiveRawData = res.json().data;
                //Jackpot 5x36
                for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_5x36[i].id,
                        "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
                        "type_name": "Jackpot 5x36",
                        "type": "jackpot_5x36",
                        "combination": _this.processCombination(res.json().data.jackpot_5x36[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.jackpot_5x36[i].win_combination),
                        "is_win": res.json().data.jackpot_5x36[i].is_win,
                        "date": new Date(res.json().data.jackpot_5x36[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Jackpot 6x45
                for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_6x45[i].id,
                        "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
                        "type_name": "Jackpot 6x45",
                        "type": "jackpot_6x45",
                        "combination": _this.processCombination(res.json().data.jackpot_6x45[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.jackpot_6x45[i].win_combination),
                        "is_win": res.json().data.jackpot_6x45[i].is_win,
                        "date": new Date(res.json().data.jackpot_6x45[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Jackpot 4x21
                for (var i = 0; i < res.json().data.jackpot_4x21.length; i++) {
                    var rowData = {
                        "id": res.json().data.jackpot_4x21[i].id,
                        "fake_id": "00" + 21421 + res.json().data.jackpot_4x21[i].id,
                        "type_name": "Jackpot 4x21",
                        "type": "jackpot_4x21",
                        "combination": _this.processCombination(res.json().data.jackpot_4x21[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.jackpot_4x21[i].win_combination),
                        "is_win": res.json().data.jackpot_4x21[i].is_win,
                        "date": new Date(res.json().data.jackpot_4x21[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Rapidos
                for (var i = 0; i < res.json().data.rapidos.length; i++) {
                    var rowData = {
                        "id": res.json().data.rapidos[i].id,
                        "fake_id": "00" + 10645 + res.json().data.rapidos[i].id,
                        "type_name": "Rapidos",
                        "type": "rapidos",
                        "combination": _this.processCombination(res.json().data.rapidos[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.rapidos[i].win_combination),
                        "is_win": res.json().data.rapidos[i].is_win,
                        "date": new Date(res.json().data.rapidos[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Two Numbers
                for (var i = 0; i < res.json().data.two_numbers.length; i++) {
                    var rowData = {
                        "id": res.json().data.two_numbers[i].id,
                        "fake_id": "00" + 10749 + res.json().data.two_numbers[i].id,
                        "type_name": "Two Numbers",
                        "type": "two_numbers",
                        "combination": _this.processCombination(res.json().data.two_numbers[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.two_numbers[i].win_combination),
                        "is_win": res.json().data.two_numbers[i].is_win,
                        "date": new Date(res.json().data.two_numbers[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Prize&Jackpot
                for (var i = 0; i < res.json().data.prize_jackpot.length; i++) {
                    var rowData = {
                        "id": res.json().data.prize_jackpot[i].id,
                        "fake_id": "00" + 10536 + res.json().data.prize_jackpot[i].id,
                        "type_name": "Prize&Jackpot",
                        "type": "prize_jackpot",
                        "combination": _this.processCombination(res.json().data.prize_jackpot[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.prize_jackpot[i].win_combination),
                        "is_win": res.json().data.prize_jackpot[i].is_win,
                        "date": new Date(res.json().data.prize_jackpot[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //777
                for (var i = 0; i < res.json().data.bets_777.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_777[i].id,
                        "fake_id": "00" + 77283 + res.json().data.bets_777[i].id,
                        "type_name": "777",
                        "type": "777",
                        "combination": _this.processCombination(res.json().data.bets_777[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.bets_777[i].win_combination),
                        "is_win": res.json().data.bets_777[i].is_win,
                        "date": new Date(res.json().data.bets_777[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //Fruity
                for (var i = 0; i < res.json().data.bets_fruity.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_fruity[i].id,
                        "fake_id": "00" + 33283 + res.json().data.bets_fruity[i].id,
                        "type_name": "Fruity",
                        "type": "fruity",
                        "combination": _this.processCombination(res.json().data.bets_fruity[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.bets_fruity[i].win_combination),
                        "is_win": res.json().data.bets_fruity[i].is_win,
                        "date": new Date(res.json().data.bets_fruity[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                //100 000 Cash
                for (var i = 0; i < res.json().data.bets_100.length; i++) {
                    var rowData = {
                        "id": res.json().data.bets_100[i].id,
                        "fake_id": "00" + 10079 + res.json().data.bets_100[i].id,
                        "type_name": "100`000 CASH",
                        "type": "100CASH",
                        "combination": _this.processCombination(res.json().data.bets_100[i].my_combination),
                        "won_combination": _this.processCombination(res.json().data.bets_100[i].win_combination),
                        "is_win": res.json().data.bets_100[i].is_win,
                        "date": new Date(res.json().data.bets_100[i].date)
                    };
                    _this.archiveTableData.push(rowData);
                }
                _this.archiveTableData = _this.sortAndFormatBetArray(_this.archiveTableData);
            }
        });
        /*this.tpService.removeNewBets();*/
    };
    MyBetsComponent.prototype.sortAndFormatBetArray = function (arr) {
        //sort
        var sortedArray = [];
        sortedArray = arr;
        sortedArray.sort(function (a, b) { return b.date - a.date; });
        //date to local
        var nowLocal = new Date();
        var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        for (var i = 0; i < sortedArray.length; i++) {
            sortedArray[i].date = sortedArray[i].date.setHours(sortedArray[i].date.getHours() - 3) - (nowLocal.getTimezoneOffset() * 60000);
            sortedArray[i].date = new Date(sortedArray[i].date);
            sortedArray[i].date = monthNames[sortedArray[i].date.getMonth()] + " " + sortedArray[i].date.getDate() + ", " + sortedArray[i].date.getFullYear() + ", " + ('0' + sortedArray[i].date.getHours()).slice(-2) + ":" + ('0' + sortedArray[i].date.getMinutes()).slice(-2) + ":" + ('0' + sortedArray[i].date.getSeconds()).slice(-2);
        }
        return sortedArray;
    };
    MyBetsComponent.prototype.checkNewBet = function (t, combination) {
        var result = false;
        if (this.tpService.getNewBets() != null) {
            var newBets = JSON.parse(this.tpService.getNewBets());
            if (t == newBets.type) {
                for (var i = 0; i < newBets.combinations.length; i++) {
                    if (combination.length == newBets.combinations[i].length) {
                        var compFlag = false;
                        for (var j = 0; j < combination.length; j++) {
                            if (combination[j] != newBets.combinations[i][j]) {
                                compFlag = true;
                            }
                        }
                        //result = !compFlag;
                        if (!compFlag) {
                            result = true;
                        }
                    }
                }
            }
        }
        return result;
    };
    MyBetsComponent.prototype.getBetClass = function (t, combination) {
        var result = "regularBet";
        if (this.tpService.getNewBets() != null) {
            var newBets = JSON.parse(this.tpService.getNewBets());
            if (t == newBets.type) {
                for (var i = 0; i < newBets.combinations.length; i++) {
                    if (combination.length == newBets.combinations[i].length) {
                        var compFlag = false;
                        for (var j = 0; j < combination.length; j++) {
                            if (combination[j] != newBets.combinations[i][j]) {
                                compFlag = true;
                            }
                        }
                        if (!compFlag) {
                            result = "newBet";
                        }
                    }
                }
            }
        }
        return result;
    };
    MyBetsComponent.prototype.processCombination = function (combination) {
        if (combination != null) {
            if (combination.length > 0) {
                return combination.join(" ");
            }
            else {
                return "Random";
            }
        }
        else {
            return "Random";
        }
    };
    /*open(content) {
      this.modalService.open(content).result.then((result) => {
        //this.closeResult = `Closed with: ${result}`;
      }, (reason) => {
        //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
      });
    }*/
    MyBetsComponent.prototype.open = function (id, fake_id, type, type_name, content, scratch) {
        var _this = this;
        this.modalId = fake_id;
        this.modalType = type_name;
        this.lotteryType = type;
        this.editedRecordId = id;
        if (!scratch) {
            this.scratchFlag = false;
            this.editableCombination = [];
            for (var i = 0; i < this.rawData[type].length; i++) {
                if (this.rawData[type][i].id == id) {
                    this.editableCombination = this.rawData[type][i].combination;
                    break;
                }
            }
            this.defineModalButtons(type);
            this.modalService.open(content).result.then(function (result) {
                //this.closeResult = `Closed with: ${result}`;
                _this.updateCombination();
            }, function (reason) {
                //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
            });
        }
        else {
            this.scratchFlag = true;
            this.checkUpdateScratch = [];
            if (type == "777") {
                //this.scratchBalls = 3;
                this.scratchBunner = "assets/img/top3.jpg";
            }
            else if (type == "fruity") {
                //this.scratchBalls = 6;
                this.scratchBunner = "assets/img/33.jpg";
            }
            else if (type == "100CASH") {
                //this.scratchBalls = 5;
                this.scratchBunner = "assets/img/100000CASH.jpg";
            }
            this.scratchArray = [];
            for (var i = 0; i < this.tableData.length; i++) {
                //this.scratchArray.push(i);
                if (id == this.tableData[i].id && type == this.tableData[i].type) {
                    this.scratchArray = this.tableData[i].combination;
                }
            }
            this.modalService.open(content).result.then(function (result) {
                //this.closeResult = `Closed with: ${result}`;
                //console.log("Scratch");
                if (_this.checkUpdateScratch.length == 9) {
                    _this.lottery.updateScratch(id, type)
                        .then(function (res) {
                        console.log(res.json());
                        if (res.json().status === 'success') {
                            _this.loadData();
                        }
                    }, function (err) {
                        console.log(err);
                    });
                }
            }, function (reason) {
                //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
            });
        }
    };
    /*private scratchBall(i: number) {
  
        var ball = document.getElementById("ball_" + i);
        ball.style.opacity = "0";
        let theLoop: (k: number) => void = (k: number) => {
            setTimeout(() => {
                this.fadeImg(ball);
                if (--k) {
                    theLoop(k);
                }
            }, 10);
        };
  
        theLoop(100);
  
        if (this.checkUpdateScratch.indexOf(i) == -1) {
          this.checkUpdateScratch.push(i);
        }
    }*/
    MyBetsComponent.prototype.setBall = function (i) {
        this.cnv = document.getElementById("scractBall_" + i);
        this.ctx = this.cnv.getContext('2d');
        var ball = document.getElementById("ball_" + i);
        ball.style.opacity = "100";
        if (this.checkUpdateScratch.indexOf(i) == -1) {
            this.checkUpdateScratch.push(i);
        }
    };
    MyBetsComponent.prototype.fadeImg = function (obj) {
        obj.style.opacity = String(+obj.style.opacity + 0.01);
    };
    MyBetsComponent.prototype.defineModalButtons = function (type) {
        if (type == "jackpot_4x21") {
            this.modalButtonsQuantity = 21;
            this.combinationQuantity = 4;
        }
        if (type == "jackpot_5x36") {
            this.modalButtonsQuantity = 36;
            this.combinationQuantity = 5;
        }
        if (type == "jackpot_6x45") {
            this.modalButtonsQuantity = 45;
            this.combinationQuantity = 6;
        }
        if (type == "rapidos") {
            this.modalButtonsQuantity = 20;
            this.combinationQuantity = 8;
        }
        if (type == "two_numbers") {
            this.modalButtonsQuantity = 100;
            this.combinationQuantity = 2;
        }
        if (type == "prize_jackpot") {
            this.modalButtonsQuantity = 24;
            this.combinationQuantity = 12;
        }
        this.setModalButtonsArray(this.modalButtonsQuantity);
        console.log(type);
    };
    MyBetsComponent.prototype.setModalButtonsArray = function (max) {
        this.modalButtonsArray = [];
        this.modalButtonsTable = [];
        //Array
        for (var i = 0; i < this.modalButtonsQuantity; i++) {
            //let buttonClass = "btn btn-dark";
            var buttonClass = "btn button-black";
            if (this.editableCombination != null) {
                if (this.editableCombination.indexOf(i + 1) > -1) {
                    //buttonClass = "btn btn-danger";
                    buttonClass = "btn button-red";
                }
            }
            else {
                this.editableCombination = [];
            }
            var button = {
                title: i + 1,
                class: buttonClass
            };
            this.modalButtonsArray.push(button);
        }
        //Table
        if (this.modalButtonsQuantity == 36) {
            var k = 0;
            for (var i = 0; i < 6; i++) {
                var subArray = [];
                for (var j = 0; j < 6; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 45) {
            var k = 0;
            for (var i = 0; i < 5; i++) {
                var subArray = [];
                for (var j = 0; j < 9; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 20) {
            var k = 0;
            for (var i = 0; i < 4; i++) {
                var subArray = [];
                for (var j = 0; j < 5; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 49) {
            var k = 0;
            for (var i = 0; i < 7; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 21) {
            var k = 0;
            for (var i = 0; i < 3; i++) {
                var subArray = [];
                for (var j = 0; j < 7; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 100) {
            var k = 0;
            for (var i = 0; i < 10; i++) {
                var subArray = [];
                for (var j = 0; j < 10; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
        else if (this.modalButtonsQuantity == 24) {
            var k = 0;
            for (var i = 0; i < 6; i++) {
                var subArray = [];
                for (var j = 0; j < 4; j++) {
                    subArray.push(this.modalButtonsArray[k]);
                    k++;
                }
                this.modalButtonsTable.push(subArray);
            }
        }
    };
    MyBetsComponent.prototype.getDismissReason = function (reason) {
        if (reason === __WEBPACK_IMPORTED_MODULE_2__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].ESC) {
            return 'by pressing ESC';
        }
        else if (reason === __WEBPACK_IMPORTED_MODULE_2__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        }
        else {
            return "with: " + reason;
        }
    };
    MyBetsComponent.prototype.editCombination = function (val) {
        //Number button
        //if (document.getElementById("button_" + val).getAttribute("class") != "btn btn-danger") {
        if (document.getElementById("button_" + val).getAttribute("class") != "btn button-red button-round") {
            if (this.editableCombination.length < this.combinationQuantity) {
                //document.getElementById("button_" + val).setAttribute("class", "btn btn-danger");
                document.getElementById("button_" + val).setAttribute("class", "btn button-red button-round");
                this.editableCombination.push(val);
            }
        }
        else {
            //document.getElementById("button_" + val).setAttribute("class", "btn btn-dark");
            document.getElementById("button_" + val).setAttribute("class", "btn button-black button-round");
            this.editableCombination.splice(this.editableCombination.indexOf(val, 0), 1);
        }
        //Save button
        if (this.editableCombination.length == this.combinationQuantity || this.editableCombination.length == 0) {
            document.getElementById("saveButton").setAttribute("style", "visibility: visible;");
        }
        else {
            document.getElementById("saveButton").setAttribute("style", "visibility: hidden;");
        }
    };
    MyBetsComponent.prototype.updateCombination = function () {
        var _this = this;
        console.log("UPDATE");
        console.log(this.editableCombination);
        console.log(this.lotteryType);
        console.log(this.editedRecordId);
        console.log(new __WEBPACK_IMPORTED_MODULE_3__models_combination_update__["a" /* CombinationUpdate */](this.editedRecordId, this.lotteryType, this.editableCombination));
        if (this.editableCombination.length == this.combinationQuantity || this.editableCombination.length == 0) {
            this.lottery.updateCombination(new __WEBPACK_IMPORTED_MODULE_3__models_combination_update__["a" /* CombinationUpdate */](this.editedRecordId, this.lotteryType, this.editableCombination))
                .then(function (res) {
                console.log(res.json());
                if (res.json().status === 'success') {
                    _this.loadData();
                }
            }, function (err) {
                console.log(err);
            });
        }
        this.editableCombination = [];
        this.lotteryType = "";
        this.editedRecordId = 0;
        this.combinationQuantity = 0;
        this.modalId = "";
        this.modalType = "";
        this.modalButtonsQuantity = 0;
        this.modalButtonsArray = [];
        this.modalButtonsTable = [];
    };
    MyBetsComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    MyBetsComponent.prototype.scratch = function () {
    };
    MyBetsComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    MyBetsComponent.prototype.detectLeftButton = function (event) {
        if ('buttons' in event) {
            return event.buttons === 1;
        }
        else if ('which' in event) {
            return event.which === 1;
        }
        else {
            return event.button === 1;
        }
    };
    MyBetsComponent.prototype.getBrushPos = function (xRef, yRef) {
        var rect = this.cnv.getBoundingClientRect();
        return {
            x: Math.floor((xRef - rect.left) / (rect.right - rect.left) * this.cnv.width),
            y: Math.floor((yRef - rect.top) / (rect.bottom - rect.top) * this.cnv.height)
        };
    };
    MyBetsComponent.prototype.drawDot = function (mouseX, mouseY) {
        this.ctx.beginPath();
        this.ctx.arc(mouseX, mouseY, this.brushRadius, 0, 2 * Math.PI, true);
        this.ctx.fillStyle = '#000';
        this.ctx.globalCompositeOperation = "destination-out";
        this.ctx.fill();
    };
    MyBetsComponent.prototype.mouseMove = function (e) {
        if (this.cnv != null) {
            var brushPos = this.getBrushPos(e.clientX, e.clientY);
            //var leftBut = this.detectLeftButton(e);
            //if (leftBut == true) {
            this.drawDot(brushPos.x, brushPos.y);
            //}
        }
    };
    MyBetsComponent.prototype.drawCover = function (i) {
        var ball = document.getElementById("scractBall_" + i);
        var ctx = ball.getContext('2d');
        var gradient = ctx.createLinearGradient(0, 0, 145, 196);
        gradient.addColorStop(0, 'cyan');
        gradient.addColorStop(0.5, 'orange');
        gradient.addColorStop(1, 'violet');
        ctx.fillStyle = gradient;
        ctx.fillRect(0, 0, ball.width, ball.height);
    };
    return MyBetsComponent;
}());
MyBetsComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-my-bets',
        template: __webpack_require__("../../../../../src/app/components/my-bets/my-bets.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/my-bets/my-bets.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_5__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _d || Object])
], MyBetsComponent);

var _a, _b, _c, _d;
//# sourceMappingURL=my-bets.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/my-statistics/my-statistics.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/my-statistics/my-statistics.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div style=\"width: 887px\">\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/my-statistics/my-statistics.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MyStatisticsComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var MyStatisticsComponent = (function () {
    function MyStatisticsComponent(lottery, router, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.tpService = tpService;
    }
    MyStatisticsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    MyStatisticsComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    MyStatisticsComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return MyStatisticsComponent;
}());
MyStatisticsComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-my-statistics',
        template: __webpack_require__("../../../../../src/app/components/my-statistics/my-statistics.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/my-statistics/my-statistics.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], MyStatisticsComponent);

var _a, _b, _c;
//# sourceMappingURL=my-statistics.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/my-tokens/my-tokens.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "#tokensContainer {\r\n  margin-top: 50px;\r\n  margin-left: 5%;\r\n  margin-right: 15%;\r\n  margin-bottom: 100px;\r\n}\r\n\r\ninput {\r\n  width: 100px;\r\n}\r\n\r\n#walletContainer table tr td {\r\n  padding-right: 50px;\r\n}\r\n\r\n#walletContainer table tr td button {\r\n  width: 100px;\r\n}\r\n\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 90px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/my-tokens/my-tokens.component.html":
/***/ (function(module, exports) {

module.exports = "\r\n<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 10%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div>\r\n\r\n\r\n                <ngb-alert *ngIf=\"errorMessage\" type=\"danger\" (close)=\"errorMessage = null\">{{ errorMessage }}</ngb-alert>\r\n\r\n                <div id=\"tokensContainer\">\r\n                  <h4>Tokens amount: {{ amount }}</h4>\r\n                  <hr>\r\n                  <input id=\"tokensInput\" class=\"form-control\" type=\"number\" value=\"0\" (change)=\"calculateCost()\" min =\"1\">\r\n                  <br>\r\n                  <p>BTC: {{ cost.toPrecision(3) }}</p>\r\n                  <p>ETC: {{ (0.055 * cost).toPrecision(3) }}</p>\r\n                  <button type=\"button\" class=\"lotteryButton\" (click)=\"buy()\">Buy!</button>\r\n                  <hr>\r\n                  <button type=\"button\" class=\"lotteryButton\" (click)=\"open(content)\">Wallet</button>\r\n                </div>\r\n\r\n                <ng-template #content let-c=\"close\" let-d=\"dismiss\">\r\n                  <div class=\"modal-header\">\r\n                    <h4 class=\"modal-title\">Wallet</h4>\r\n                    <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n                      <span aria-hidden=\"true\">&times;</span>\r\n                    </button>\r\n                  </div>\r\n                  <div class=\"modal-body\">\r\n                    <ul>\r\n                      <li>The won funds are transferred to this wallet</li>\r\n                      <li>The funds on this wallet allows you to buy Lottery Tokens</li>\r\n                      <li><a href=\"https://walletspace.io/\" target=\"_blank\">More information about Wallet Space</a></li>\r\n                    </ul>\r\n                    <hr>\r\n                    <ngb-alert *ngIf=\"walletErrorMessage\" type=\"danger\" (close)=\"walletErrorMessage = null\">{{ walletErrorMessage }}</ngb-alert>\r\n                    <div id=\"walletContainer\">\r\n                      <table>\r\n                        <tr>\r\n                          <td>\r\n                            <p>BTC: {{ walletAmount }}</p>\r\n                            <p>ETC:  {{ (0.055 * walletAmount).toPrecision(3) }}</p>\r\n                          </td>\r\n                      <td>\r\n                        <input id=\"fillUpInput\" class=\"form-control\" type=\"number\" value=\"0\" min =\"1\">\r\n                        <br>\r\n                        <button type=\"button\" class=\"btn btn-dark\" (click)=\"fillUp()\">Fill Up</button>\r\n                      </td>\r\n                      <td>\r\n                        <input id=\"withdrawInput\" class=\"form-control\" type=\"number\" value=\"0\" min =\"1\">\r\n                        <br>\r\n                        <button type=\"button\" class=\"btn btn-dark\"  (click)=\"withdraw()\">Withdraw</button>\r\n                      </td>\r\n                      </tr>\r\n                    </table>\r\n                    </div>\r\n                  </div>\r\n                  <div class=\"modal-footer\">\r\n                    <button id=\"saveButton\" type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Close</button>\r\n                  </div>\r\n                </ng-template>\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/my-tokens/my-tokens.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MyTokensComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__ = __webpack_require__("../../../../rxjs/Subject.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__ = __webpack_require__("../../../../rxjs/operator/debounceTime.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};







var MyTokensComponent = (function () {
    function MyTokensComponent(lottery, router, modalService, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.modalService = modalService;
        this.tpService = tpService;
        this.amount = 0;
        this.walletAmount = 0;
        this.cost = 0;
        this._alert = new __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__["Subject"]();
        this._walletAlert = new __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__["Subject"]();
        this.staticAlertClosed = false;
    }
    MyTokensComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        this.getAmount();
        this.getWalletAmount();
        setTimeout(function () { return _this.staticAlertClosed = true; }, 20000);
        this._alert.subscribe(function (message) { return _this.errorMessage = message; });
        this._walletAlert.subscribe(function (message) { return _this.walletErrorMessage = message; });
        __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__["debounceTime"].call(this._alert, 5000).subscribe(function () { return _this.errorMessage = null; });
        __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__["debounceTime"].call(this._walletAlert, 5000).subscribe(function () { return _this.walletErrorMessage = null; });
    };
    MyTokensComponent.prototype.getAmount = function () {
        var _this = this;
        this.lottery.getTokensAmount()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.amount = res.json().data.amount;
            }
        });
    };
    MyTokensComponent.prototype.alertMessage = function (message) {
        this._alert.next(message);
    };
    MyTokensComponent.prototype.walletAlertMessage = function (message) {
        this._walletAlert.next(message);
    };
    MyTokensComponent.prototype.calculateCost = function () {
        var tokensNumber = document.getElementById("tokensInput");
        this.cost = +tokensNumber.value * 0.05;
    };
    MyTokensComponent.prototype.buy = function () {
        var _this = this;
        var quantity = document.getElementById("tokensInput");
        this.lottery.fillUpTokens(+quantity.value)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
            }
            else if (res.json().status === 'fail') {
                _this.alertMessage(res.json().message);
                _this.cost = 0;
            }
        });
        quantity.value = "0";
        this.getAmount();
    };
    MyTokensComponent.prototype.open = function (content) {
        this.modalService.open(content).result.then(function (result) {
            //this.closeResult = `Closed with: ${result}`;
        }, function (reason) {
            //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
        });
    };
    MyTokensComponent.prototype.getDismissReason = function (reason) {
        if (reason === __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].ESC) {
            return 'by pressing ESC';
        }
        else if (reason === __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        }
        else {
            return "with: " + reason;
        }
    };
    MyTokensComponent.prototype.fillUp = function () {
        var amount = document.getElementById("fillUpInput");
        this.lottery.fillUpWallet(+amount.value);
        this.getWalletAmount();
        amount.value = "0";
    };
    MyTokensComponent.prototype.withdraw = function () {
        var _this = this;
        var amount = document.getElementById("withdrawInput");
        this.lottery.withdrawWallet(+amount.value)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
            }
            else if (res.json().status === 'fail') {
                _this.walletAlertMessage(res.json().message);
            }
        });
        this.getWalletAmount();
        amount.value = "0";
    };
    MyTokensComponent.prototype.getWalletAmount = function () {
        var _this = this;
        this.lottery.getWalletAmount()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.walletAmount = res.json().data.amount;
            }
        });
    };
    MyTokensComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    MyTokensComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return MyTokensComponent;
}());
MyTokensComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-my-tokens',
        template: __webpack_require__("../../../../../src/app/components/my-tokens/my-tokens.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/my-tokens/my-tokens.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_6__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_6__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _d || Object])
], MyTokensComponent);

var _a, _b, _c, _d;
//# sourceMappingURL=my-tokens.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/privateOffice/privateOffice.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "/*.buyContainer {\r\n  margin-top: 10px;\r\n}\r\n\r\n.ticketDiv {\r\n  width: 200px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nh5 {\r\n  margin-left: 40px;\r\n}\r\n\r\n#ticketInput {\r\n  width: 200px;\r\n}\r\n\r\n.modal-table tr td {\r\n  padding-left: 25px;\r\n}\r\n\r\n.modal-table tr button {\r\n  width: 100px;\r\n}\r\n\r\n.modal-table tr p {\r\n  margin-top: 12px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    margin: 0 0 1.5em 0 !important;\r\n    color: black;\r\n    -webkit-box-shadow:  0px 0px 0px 0px #000;\r\n            box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n#fieldsDiv {\r\n  margin-left: 10%;\r\n  margin-right: 10%;\r\n}\r\n\r\n.lottery-cell {\r\n\r\n  text-align: center;\r\n  align-content: center;\r\n  align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  backface-visibility: hidden;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.container {\r\n  margin-left: 100px;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  align-content: center;\r\n  align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n\r\n    -webkit-transition: left 2s;\r\n    -moz-transition: left 2s;\r\n    -o-transition: left 2s;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 60%;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}*/\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.lotteryLabel2 {\r\n  font-size: 1em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #000;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 53%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryCounter {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 62%;\r\n  width: 100%;\r\n  font-size: 15pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 70%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n#present {\r\n  background-color: #F44336;\r\n  border: 1px solid #F44336;\r\n}\r\n\r\n#present:hover {\r\n  background-color: white;\r\n  border: 1px solid black;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/privateOffice/privateOffice.component.html":
/***/ (function(module, exports) {

module.exports = "\r\n<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 10%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\" colspan=\"3\" align=\"center\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\"><b>SUPER</b>JACK<b>POT&nbsp;&nbsp;&nbsp;{{superjackpot_value}} SJP</b></legend>\r\n            <label class=\"lotteryLabel2\">Win multimillion jackpots ...</label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('jackpot_4x21', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/4_21.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 4x21</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_4_21_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_4_21_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 4x21', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('jackpot_4x21', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('jackpot_4x21', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('jackpot_5x36', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/5_36.jpg\" alt=\"Card image cap\">\r\n                    </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 5x36</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_5_36_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_5_36_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 5x36', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('jackpot_5x36', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('jackpot_5x36', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('jackpot_6x45', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/6_45.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">JACK<b>POT</b> 6x45</div>\r\n                  <div class=\"lotteryCounter\">{{jackpot_6_45_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{jackpot_6_45_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Jackpot 6x45', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('jackpot_6x45', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('jackpot_6x45', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n      <tr>\r\n        <td></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\">INSTANT<b>LOTTO</b></legend>\r\n            <label class=\"lotteryLabel2\">These are the fastest lotteries. Ways to win - a great many. You can become a Winner, even if you do not guess a single number. You decide how to participate, how many numbers to note, and, of course, how much You want to win.<br/>The choice is Yours!</label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('rapidos', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/rapidos.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">RAPI<b>DOS</b></div>\r\n                  <div class=\"lotteryCounter\">{{rapidos_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{rapidos_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Rapidos', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('rapidos', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('rapidos', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('two_numbers', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/supers.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">TWO <b>NUMBERS</b></div>\r\n                  <div class=\"lotteryCounter\">{{two_numbers_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{two_numbers_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Two Numbers', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('two_numbers', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('two_numbers', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a (click)=\"buyTicketRedirect('prize_jackpot', 'no')\" style=\"cursor: pointer;\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/prize_jackpot.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">PRIZE&<b>JACKPOT</b></div>\r\n                  <div class=\"lotteryCounter\">{{prize_jackpot_counter}}</div>\r\n                  <div class=\"lotteryFunds\">{{prize_jackpot_value}} SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Prize&Jackpot', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"buyTicketRedirect('prize_jackpot', 'no')\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyTicketRedirect('prize_jackpot', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n      <tr>\r\n        <td></td>\r\n        <fieldset class=\"scheduler-border\">\r\n            <legend class=\"scheduler-border\">SCRATCH <b>LOTTERIES</b></legend>\r\n            <label class=\"lotteryLabel\"></label>\r\n            <div class=\"control-group\">\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a style=\"cursor: pointer;\" (click)=\"buyScratch('fruity', 'no')\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/33.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\"><b>Fruity</b></div>\r\n                  <div class=\"lotteryCounter\">Any Time</div>\r\n                  <div class=\"lotteryFunds\">333 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('Fruity', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"buyScratch('fruity', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyScratch('fruity', 'yes')\" class=\"lotteryButton\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a style=\"cursor: pointer;\" (click)=\"buyScratch('100CASH', 'no')\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/100000CASH.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\">100'000 <b>CASH</b></div>\r\n                  <div class=\"lotteryCounter\">Any Time</div>\r\n                  <div class=\"lotteryFunds\">1 000 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('100`000 CASH', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"buyScratch('100CASH', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyScratch('100CASH', 'yes')\" class=\"lotteryButton\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n              <td class=\"lottery-cell\">\r\n                <div class=\"card\" style=\"width: 15rem;  margin: 0 auto;\">\r\n                  <a style=\"cursor: pointer;\" (click)=\"buyScratch('777', 'no')\">\r\n                    <img class=\"card-img-top\" src=\"assets/img/top3.jpg\" alt=\"Card image cap\">\r\n                  </a>\r\n                  <div class=\"lotteryTitle\"><b>777</b></div>\r\n                  <div class=\"lotteryCounter\">Any Time</div>\r\n                  <div class=\"lotteryFunds\">777 SJP</div>\r\n                  <div class=\"buttonSector\">\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" (click)=\"open('777', 'about', content)\">Rules</button></div>\r\n                    <div class=\"buttonDiv\"><button (click)=\"buyScratch('777', 'no')\" class=\"lotteryButton\">Buy</button></div>\r\n                    <div class=\"buttonDiv\"><button class=\"lotteryButton\" id=\"present\" (click)=\"buyScratch('777', 'yes')\">Present</button></div>\r\n                  </div>\r\n                </div>\r\n              </td>\r\n            </div>\r\n        </fieldset>\r\n      </tr>\r\n\r\n    </table>\r\n\r\n\r\n    <ng-template #content let-c=\"close\" let-d=\"dismiss\">\r\n      <div class=\"modal-header\">\r\n        <h4 class=\"modal-title\">{{ modalTitle }}</h4>\r\n        <button type=\"button\" class=\"close\" aria-label=\"Close\" (click)=\"d('Cross click')\">\r\n          <span aria-hidden=\"true\">&times;</span>\r\n        </button>\r\n      </div>\r\n\r\n\r\n      <div class=\"modal-body\">\r\n        <div *ngIf=\"lottery_description == 1\">\r\n        <p>The 4x21 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_4_21_value}} SJP.</p>\r\n        <hr/>\r\n        <p><b>Time</b></p>\r\n        <p>Drawings are held daily, at 02:00, 05:00, 08:00, 11:00, 14:00, 17:00, 20:00 and 23:00 GMT. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n        <hr/>\r\n        <p><b>Participation & Rules</b></p>\r\n        <p>To participate in the Lottery, you need to choose 4 numbers from 1 to 21 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n          <hr/>\r\n        <p><b>Distribution of Funds</b></p>\r\n        The price of one ticket  -  1 SJP\r\n        Funds collected from ticket sales for each drawing are distributed as follows:\r\n        21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n        SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n        70% goes to the Prize pool for the current drawing:<br/>\r\n        The distribution of the Prize pool by the number of guessed numbers<br/>\r\n        2 - 32% of the Prize Pool / The number of Players who matched 2 numbers<br/>\r\n        3\t- 33% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n        4\t- 35% of the Prize Pool – Jackpot<br/>\r\n        9% are used to cover technical and operating expenses.<hr/>\r\n        <p><b>Jackpot</b></p>\r\n        35% of the Prize pool (Category 4) are always rolled over to the Jackpot for the following drawing. The Jackpot built up over the previous drawings is divided between the  Owners of the tickets with 4 matching numbers. If there are no such tickets, the current Jackpot is rolled over to the Jackpot for the following drawing. In category 2, 3 the winning amount is divided by the number of Winners in this category. If there are no Winners, then the Prize pool of these categories also goes to the Jackpot of the following drawing.<hr/>\r\n        <p><b>Casting</b></p>\r\n        The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE<hr/>\r\n        <p><b>Taxes</b></p>\r\n        SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.<hr/>\r\n        <p><b>Agreement</b></p>\r\n        By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n      </div>\r\n\r\n    <div *ngIf=\"lottery_description == 2\">\r\n      <p>The 5x36 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_5_36_value}} SJP.</p>\r\n      <hr/>\r\n      <p><b>Time</b></p>\r\n      Drawings are held daily, at 04:00, 10:00, 16:00 and 22:00 GMT.\r\n      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n      <hr/>\r\n      <p><b>Participation & Rules</b></p>\r\n      To participate in the Lottery, you need to choose 5 numbers from 1 to 36 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n      <hr/>\r\n      <p><b>Distribution of Funds</b></p>\r\n      The price of one ticket  -  2 SJP\r\n      Funds collected from ticket sales for each drawing are distributed as follows:\r\n      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n      SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n      70% goes to the Prize pool for the current drawing:\r\n      There are four winning categories in the Lottery: two with fixed winnings and two with accumulated Jackpot.<br/>\r\n      2 - 2 SJP / The number of Players who matched 2 numbers <br/>\r\n      3\t- 20 SJP / The number of Players who matched 3 numbers<br/>\r\n      4\t- 50 SJP / The number of Players who matched 4 numbers\t<br/>\r\n      5 - 50% / Jackpot<br/>\r\n      First, fixed winnings are calculated for 2 and 3 guessed numbers. After that, the rest of the Prize pool is divided equally between the categories 4 and 5  (Jackpot). If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n      9% are used to cover technical and operating expenses.\r\n      <hr/>\r\n      <p><b>Casting</b></p>\r\n      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n      <hr/>\r\n      <p><b>Taxes</b></p>\r\n      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n      <hr/>\r\n      <p><b>Agreement</b></p>\r\n      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n    </div>\r\n\r\n    <div  *ngIf=\"lottery_description == 3\">\r\n      <p>The 6x45 SJP Lottery has a minimum guaranteed Jackpot of {{jackpot_6_45_value}} SJP.</p>\r\n      <hr/>\r\n      <p><b>Time</b></p>\r\n      Drawings are held daily, at 09:00 and 21:00 GMT.\r\n      The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 15 minutes before the drawing. After that time, any tickets purchased will be played in the following drawing.\r\n      <hr/>\r\n      <p><b>Participation & Rules</b></p>\r\n      To participate in the Lottery, you need to choose 6 numbers from 1 to 45 in your Lottery ticket, or select the Random icon to allow the random number generator to choose the numbers for you. The number of tickets that you can buy is almost unlimited. However, using automated software tools for buying tickets or filling them out is prohibited. The cost of one ticket is 1 SJP. Your Prize will be automatically transferred to your SJP Wallet in SJP. Later you can transfer your funds to another online wallet or to fiat. You can get more info about it as well as about SJP Wallet in section “My Tokens”.\r\n      <hr/>\r\n      <p><b>Distribution of Funds</b></p>\r\n      The price of one ticket  -  3 SJP\r\n      Funds collected from ticket sales for each drawing are distributed as follows:\r\n      21% of the Prize pool is always transferred to the SuperJackpot Prize Fund.\r\n      SuperJackpot is played on the 21st of each month at 21:21 GMT.\r\n      70% goes to the Prize pool for the current drawing:\r\n      Win combinations in which in one field 2, 3, 4, 5 or 6 numbers from 45 coincide with winning numbers.\r\n      Those participants who guessed the 2 numbers receive 3 SJP each. The remaining Prize pool is distributed in the following percentage:<br/>\r\n      3\t- 24% of the Prize Pool / The number of Players who matched 3 numbers<br/>\r\n      4\t- 14% of the Prize Pool / The number of Players who matched 4 numbers<br/>\r\n      5\t- 26% of the Prize Pool / The number of Players who matched 5 numbers\t<br/>\r\n      6\t- 36% of the Prize Pool – Jackpot<br/>\r\n      Guessing 6 numbers, You get a Jackpot! The Jackpot is accumulated. Therefore, if no one guesses 6 numbers in the current draw, the accumulated amount goes to the next draw Jackpot Prize pool. In category 3, 4, 5 the winning amount is divided by the number of Winners in this category. If there are no Winners in any of these categories, then the Prize pool of these categories also goes to the Jackpot of the following drawing.\r\n      9% are used to cover technical and operating expenses.\r\n      <hr/>\r\n      <p><b>Casting</b></p>\r\n      The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n      <hr/>\r\n      <p><b>Taxes</b></p>\r\n      SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n      <hr/>\r\n      <p><b>Agreement</b></p>\r\n      By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n      </div>\r\n\r\n    <div *ngIf=\"lottery_description == 4\">\r\n      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\n      The Rapidos Lottery has a minimum guaranteed Jackpot of {{rapidos_value}} SJP and to win a Jackpot, you just need to guess 8 numbers out of 20 in the first part of the field and one number in four - in the second part.\r\n      <hr/>\r\n      <p><b>Time</b></p>\r\n      Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n      The price of one ticket  -  1 SJP\r\n      <hr/>\r\n      <p><b>How to play</b></p>\r\n      In a ticket - only one playing field, consisting of two parts (the first and second).<br/>\r\n      • You need to choose 8 non-repeating numbers from 1 to 20 in the first part of the playing field and one number from 1 to 4 - in the second part.<br/>\r\n      • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n      • To participate in several runs, specify their number in a special column.<br/>\r\n      • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n      When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n      <hr/>\r\n      <p><b>What can be won?</b></p>\r\n\r\n      In Rapid SJP there are 9 categories of winnings.<br/>\r\n      All winnings, except for the Jackpot, are fixed. The minimum winnings are 1 SJP.<br/>\r\n\r\n    <table class=\"table\">\r\n      <thead>\r\n        <tr colspan=\"3\">\r\n          <th>You can win in Rapidos</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>Guessed the numbers in the first part of the field</td>\r\n          <td>Guessed the numbers in the second part of the field</td>\r\n          <td>You win</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8</td>\r\n          <td>1</td>\r\n          <td>Jackpot</td>\r\n        </tr>\r\n        <tr>\r\n          <td>8</td>\r\n          <td>0</td>\r\n          <td>1 000 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>7</td>\r\n          <td>1</td>\r\n          <td>150 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>7</td>\r\n          <td>0</td>\r\n          <td>50 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>6</td>\r\n          <td>1</td>\r\n          <td>30 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>6</td>\r\n          <td>0</td>\r\n          <td>10 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>5</td>\r\n          <td>1</td>\r\n          <td>5 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>5</td>\r\n          <td>0</td>\r\n          <td>2 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>4</td>\r\n          <td>1</td>\r\n          <td>1 SJP</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n    The Jackpot is received by the one who guessed 8 numbers in the first part of the field and one number in the second. The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. Therefore, if no one guesses the combination of the draw in the current draw, the accumulated amount goes to the next draw.\r\n    <hr/>\r\n    <p><b>Casting</b></p>\r\n    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n    <hr/>\r\n    <p><b>Taxes</b></p>\r\n    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n    <hr/>\r\n    <p><b>Agreement</b></p>\r\n    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n    </div>\r\n\r\n    <div *ngIf=\"lottery_description == 5\">\r\n      Lottery with an increased prize fund, which is 91% of each ticket purchased.<br/>\r\n    The Two Numbers  Lottery is one of the most simple and popular Lotteries in the world since ancient times.\r\n    <hr/>\r\n    <p><b>Time</b></p>\r\n    Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n    The price of one ticket  -  2 SJP\r\n    <hr/>\r\n    <p><b>How to play</b></p>\r\n    In a ticket - only one playing field, consisting of two parts (the first and second). <br/>\r\n    • You need to choose 1 numbers from 1 to 100 in the first part of the playing field and one number from 1 to 8 - in the second part.<br/>\r\n    • To participate in several runs, specify their number in a special column.<br/>\r\n    • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n    When the ticket is issued - You are among the contenders for the victory. Congratulations!<br/>\r\n    <hr/>\r\n    <p><b>What can be won?</b></p>\r\n    The Jackpot is received by the one who guessed one number in the first part of the field and one number in the second.\r\n    <table class=\"table\">\r\n      <thead>\r\n        <tr colspan=\"3\">\r\n          <th>You can win in Two Numbers Lottery</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>Guessed the numbers in the first part of the field</td>\r\n          <td>Guessed the numbers in the second part of the field</td>\r\n          <td>You win</td>\r\n        </tr>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>1</td>\r\n          <td>Jackpot</td>\r\n        </tr>\r\n        <tr>\r\n          <td>1</td>\r\n          <td>0</td>\r\n          <td>150 SJP</td>\r\n        </tr>\r\n      </tbody>\r\n    </table>\r\n    First, fixed winnings are calculated for 1 guessed number. After that, the rest of the Prize pool transferees to Jackpot and distributes equally among the Winners. The Jackpot is accumulative. Therefore, if there were no Winners in these two categories, then the Prize pool will be transferred to the next draw Jackpot Prize pool.\r\n    <hr/>\r\n    <p><b>Casting</b></p>\r\n    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n    <hr/>\r\n    <p><b>Taxes</b></p>\r\n    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n    <hr/>\r\n    <p><b>Agreement</b></p>\r\n    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n    </div>\r\n\r\n    <div *ngIf=\"lottery_description == 6\">\r\n    Lottery with an increased prize fund, which is 91% of each ticket purchased.\r\n    The 24/12 SJP Lottery has a minimum guaranteed Jackpot of {{prize_jackpot_value }} SJP and  this is the only lottery where you can win a Jackpot without guessing a single number. Also the Jackpot is received by those who guess 12 numbers from 24.\r\n    <p><b>Time</b></p>\r\n    Drawings are held every 15 minutes. The time of the current drawing is indicated on the Lottery ticket. Ticket sales end 1 minute before the drawing.\r\n    The price of one ticket  -  1 SJP\r\n    <hr/>\r\n    <p><b>How to play</b></p>\r\n    The ticket Prize&Jackpot Lottery consists of one field with numbers from 1 to 24. <br/>\r\n    • Select 12 non-repeating numbers from 1 to 24.<br/>\r\n    • By ticking Random icon in the ticket, you choose auto-complete: in this case a random combination of numbers will be chosen.<br/>\r\n    • To participate in several runs, specify their number in a special column.<br/>\r\n    • After selecting the numbers, go to the payment. Either continue to choose tickets. Then pay all together.<br/>\r\n    When the ticket is issued - You are among the contenders for the victory. Congratulations!\r\n    <hr/>\r\n    <p><b>How to increase the chances?</b></p>\r\n    The chance of winning the lottery is regarded as one to 4.5. This is one of the highest figures among lotteries.\r\n    <p>Now multiply the winnings! To do this, select the multiplier (maximum - 100).\r\n    It will multiply all your winnings, except for the Jackpot.</p>\r\n    <p>Also you can choose the number of runs in which your ticket will participate. The maximum number of runs is 100.</p>\r\n    <hr/>\r\n    <p><b>What can be won?</b></p>\r\n    Winners are considered to be combinations in which 0, 1, 2, 3, 4, 8, 9, 10, 11 or 12 numbers coincide with the numbers in the draw. All winnings, except for the Prize and the Jackpot, are fixed. The minimum winnings are 2 SJP.\r\n\r\n    <table class=\"table\">\r\n      <thead>\r\n        <tr colspan=\"2\">\r\n          <th>You can win in Prize&Jackpot Lottery</th>\r\n        </tr>\r\n      </thead>\r\n      <tbody>\r\n        <tr>\r\n          <td>Guessed the numbers</td>\r\n          <td>You win</td>\r\n        </tr>\r\n        <tr>\r\n          <td>0 or 12 guessed numbers</td>\r\n          <td>50% of the Prize pool / Jackpot</td>\r\n        </tr>\r\n        <tr>\r\n          <td>1 or 11 guessed numbers</td>\r\n          <td>50% of the Prize pool / Prize</td>\r\n        </tr>\r\n        <tr>\r\n          <td>2 or 10 guessed numbers</td>\r\n          <td>25 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>3 or 9 guessed numbers</td>\r\n          <td>5 SJP</td>\r\n        </tr>\r\n        <tr>\r\n          <td>4 or 8 guessed numbers</td>\r\n          <td>2 SJP</td>\r\n        </tr>\r\n      </tbody>\r\n      <tr colspan=\"2\">\r\n        <td>Combinations in which 5, 6 and 7 numbers have coincided, do not win.</td>\r\n      </tr>\r\n    </table>\r\n    The minimum guaranteed Jackpot is 2100 SJP. It is accumulative. First, fixed winnings are calculated. After that, the rest of the Prize pool is divided equally between the categories Prize and Jackpot. If there were no Winners in these two categories, then the Prize pools of these categories will be transferred to the next draw Jackpot Prize pool.\r\n    <hr/>\r\n    <p><b>Casting</b></p>\r\n    The translation of the drawing is conducted on the site SUPERJACKPOT.ONLINE\r\n    <hr/>\r\n    <p><b>Taxes</b></p>\r\n    SJP Lotto does not act as a tax agent. The responsibility to pay taxes lies with the Owner of the cryptocurrency wallet to which the winnings were transferred – SJP Wallet.\r\n    <hr/>\r\n    <p><b>Agreement</b></p>\r\n    By participating in the SJP Lotteries, you agree to the SJP Lotteries rules. By purchasing the SJP Lotteries tickets, you guarantee that you are 18 years of age and/or you have reached the minimum age for legally participating in the Lottery in your country of residence.\r\n    </div>\r\n    <hr>\r\n    <p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n    <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n       <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n       <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n      <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n      <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n      <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n      <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n      <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n      <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n      <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n      <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n      <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n      <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n      <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n      <h5>How to withdraw winnings to a bank account</h5>\r\n      <table class=\"table\">\r\n        <thead>\r\n          <tr>\r\n            <th>Approach</th>\r\n            <th>Algorithm of actions</th>\r\n            <th>Comments, restrictions</th>\r\n          </tr>\r\n        </thead>\r\n        <tbody>\r\n          <tr>\r\n            <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n            <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n            <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n          </tr>\r\n          <tr>\r\n            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n          </tr>\r\n          <tr>\r\n            <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n            <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n            <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n          </tr>\r\n          <tr>\r\n            <td>SJP conversion with third party exchange services </td>\r\n            <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n            <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n          </tr>\r\n        </tbody>\r\n      </table>\r\n  </div>\r\n\r\n\r\n      <div class=\"modal-footer\">\r\n        <button type=\"button\" class=\"btn btn-outline-dark\" (click)=\"c('Close click')\">Close</button>\r\n      </div>\r\n    </ng-template>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/privateOffice/privateOffice.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return PrivateOfficeComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__models_make_bets__ = __webpack_require__("../../../../../src/app/models/make-bets.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_Subject__ = __webpack_require__("../../../../rxjs/Subject.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_rxjs_Subject___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_rxjs_Subject__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_rxjs_operator_debounceTime__ = __webpack_require__("../../../../rxjs/operator/debounceTime.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_rxjs_operator_debounceTime___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7_rxjs_operator_debounceTime__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__ng_bootstrap_ng_bootstrap__ = __webpack_require__("../../../../@ng-bootstrap/ng-bootstrap/index.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};









var PrivateOfficeComponent = (function () {
    function PrivateOfficeComponent(auth, router, lottery, modalService, /*, private activeModal: NgbActiveModal*/ tpService) {
        this.auth = auth;
        this.router = router;
        this.lottery = lottery;
        this.modalService = modalService;
        this.tpService = tpService;
        this.cost = 0;
        this._alert = new __WEBPACK_IMPORTED_MODULE_6_rxjs_Subject__["Subject"]();
        this.staticAlertClosed = false;
        this.lottery_description = 0;
    }
    PrivateOfficeComponent.prototype.ngOnInit = function () {
        var _this = this;
        setInterval(function () {
            _this.countDown();
        }, 1000);
        this.tpService.setLotteryType(null);
        this.tpService.setScratchType(null);
        this.tpService.setWannaGive(null);
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
                _this.jackpot_5_36_value = res.json().data.jackpot_5x36;
                _this.jackpot_6_45_value = res.json().data.jackpot_6x45;
                _this.jackpot_4_21_value = res.json().data.jackpot_4x21;
                _this.rapidos_value = res.json().data.rapidos;
                _this.two_numbers_value = res.json().data.two_numbers;
                _this.prize_jackpot_value = res.json().data.prize_jackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
        setTimeout(function () { return _this.staticAlertClosed = true; }, 20000);
        this._alert.subscribe(function (message) { return _this.errorMessage = message; });
        __WEBPACK_IMPORTED_MODULE_7_rxjs_operator_debounceTime__["debounceTime"].call(this._alert, 5000).subscribe(function () { return _this.errorMessage = null; });
    };
    PrivateOfficeComponent.prototype.alertMessage = function (message) {
        this._alert.next(message);
    };
    /*addTicket(): void {
      this.addTicketRow().then(res => this.calculateCost());
    }
  
    addTicketRow() {
      return new Promise((resolve, reject) => {
        var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");
        var row = table.insertRow();
  
        var cellLJ = row.insertCell(0);
        cellLJ.innerHTML = `<select class="form-control" id="exampleFormControlSelect1" (change)="calculateCost()">
          <option>Lottery</option>
          <option>Jackpot</option>
        </select>`;
  
        var cellType = row.insertCell(1);
        cellType.innerHTML = `<select class="form-control" id="exampleFormControlSelect2" (change)="calculateCost()">
            <option>5x36</option>
            <option>6x45</option>
            <option>4x20</option>
            <option>7x49</option>
        </select>`;
  
        var cellQuantity = row.insertCell(2);
        cellQuantity.innerHTML = `<input class="form-control" type="number" value="1" min ="1" (change)="calculateCost()">`;
  
        var cellRemove = row.insertCell(3);
        cellRemove.innerHTML = `<button type="button" class="btn btn-dark" (click)="removeTicket()">Remove</button>`;
  
          resolve();
      });
  
    }*/
    /*addTicket(): void {
  
      var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");
      var row = table.insertRow();
  
      var cellLJ = row.insertCell(0);
      cellLJ.innerHTML = `<select class="form-control" onchange="calculateCost()">
        <option>Lottery</option>
        <option>Jackpot</option>
      </select>`;
  
      var cellType = row.insertCell(1);
      cellType.innerHTML = `<select class="form-control" onchange="calculateCost()">
          <option>5x36</option>
          <option>6x45</option>
          <option>4x20</option>
          <option>7x49</option>
      </select>`;
  
      var cellQuantity = row.insertCell(2);
      cellQuantity.innerHTML = `<input class="form-control" type="number" value="1" min ="1" onchange="calculateCost()">`;
  
      var cellRemove = row.insertCell(3);
      cellRemove.innerHTML = `<button type="button" class="btn btn-dark" onclick="removeTicket()">Remove</button>`;
  
      this.cost = this.cost + 1;
    }
  
    calculateCost() {
  
      var costCounter = 0;
      var table: HTMLTableElement = <HTMLTableElement> document.getElementById("ticketContainer");
  
      for (var i = 1; i < table.rows.length; i++) {
  
        var rowCost = 0;
        let game = table.rows[i].cells[0].childNodes[1] as HTMLSelectElement;
        let q = table.rows[i].cells[2].childNodes[1] as HTMLSelectElement;
  
        if (game.value == "Lottery") {
          rowCost = 1;
        } else if (game.value == "Jackpot") {
          rowCost = 5;
        }
        rowCost = rowCost * +q.value;
        costCounter += rowCost;
      }
      this.cost = costCounter;
    }*/
    PrivateOfficeComponent.prototype.calculateCost = function () {
        var l536 = document.getElementById("lottery_5x36");
        var l645 = document.getElementById("lottery_6x45");
        var l420 = document.getElementById("lottery_4x20");
        var l749 = document.getElementById("lottery_7x49");
        var j536 = document.getElementById("jackpot_5x36");
        var j645 = document.getElementById("jackpot_6x45");
        var j420 = document.getElementById("jackpot_4x20");
        var j749 = document.getElementById("jackpot_7x49");
        this.cost = +l536.value + +l645.value + +l420.value + +l749.value + +j536.value * 5 + +j645.value * 5 + +j420.value * 5 + +j749.value * 5;
    };
    PrivateOfficeComponent.prototype.calculateTicketCost = function () {
        var coef = 0;
        var ticketInput = document.getElementById("ticketInput");
        if (this.modalTitle == "Lottery 5x36" || this.modalTitle == "Lottery 6x45" || this.modalTitle == "Lottery 4x20" || this.modalTitle == "Lottery 7x49") {
            coef = 1;
        }
        else if (this.modalTitle == "Jackpot 5x36" || this.modalTitle == "Jackpot 6x45" || this.modalTitle == "Jackpot 4x20" || this.modalTitle == "Jackpot 7x49") {
            coef = 5;
        }
        this.cost = coef * +ticketInput.value;
    };
    PrivateOfficeComponent.prototype.buy = function () {
        var _this = this;
        var l536 = document.getElementById("lottery_5x36");
        var l645 = document.getElementById("lottery_6x45");
        var l420 = document.getElementById("lottery_4x20");
        var l749 = document.getElementById("lottery_7x49");
        var j536 = document.getElementById("jackpot_5x36");
        var j645 = document.getElementById("jackpot_6x45");
        var j420 = document.getElementById("jackpot_4x20");
        var j749 = document.getElementById("jackpot_7x49");
        var bet = new __WEBPACK_IMPORTED_MODULE_5__models_make_bets__["a" /* MakeBets */](+l536.value, +l645.value, +l420.value, +l749.value, +j536.value, +j645.value, +j420.value, +j749.value);
        console.log(bet);
        this.lottery.makeBets(bet)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.router.navigateByUrl('/my-bets');
            }
            else {
                _this.alertMessage(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    PrivateOfficeComponent.prototype.buyTicket = function () {
        var _this = this;
        var ticketInput = document.getElementById("ticketInput");
        var l536 = 0;
        var l645 = 0;
        var l420 = 0;
        var l749 = 0;
        var j536 = 0;
        var j645 = 0;
        var j420 = 0;
        var j749 = 0;
        if (this.modalTitle == "Lottery 5x36") {
            l536 = +ticketInput.value;
        }
        else if (this.modalTitle == "Lottery 6x45") {
            l645 = +ticketInput.value;
        }
        else if (this.modalTitle == "Lottery 4x20") {
            l420 = +ticketInput.value;
        }
        else if (this.modalTitle == "Lottery 7x49") {
            l749 = +ticketInput.value;
        }
        else if (this.modalTitle == "Jackpot 5x36") {
            j536 = +ticketInput.value;
        }
        else if (this.modalTitle == "Jackpot 6x45") {
            j645 = +ticketInput.value;
        }
        else if (this.modalTitle == "Jackpot 4x20") {
            j420 = +ticketInput.value;
        }
        else if (this.modalTitle == "Jackpot 7x49") {
            j749 = +ticketInput.value;
        }
        var bet = new __WEBPACK_IMPORTED_MODULE_5__models_make_bets__["a" /* MakeBets */](l536, l645, l420, l749, j536, j645, j420, j749);
        console.log(bet);
        this.lottery.makeBets(bet)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                /*this.activeModal.close();*/
                //close('close');
                _this.modalReference.close();
                _this.router.navigateByUrl('/my-bets');
            }
            else {
                _this.alertMessage(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    PrivateOfficeComponent.prototype.open = function (title, reason, content) {
        this.modalTitle = title;
        this.modalReference = this.modalService.open(content);
        if (reason == "about") {
            /*this.aboutContent = true;
            this.buyContent = false;*/
            if (title == "Jackpot 5x36") {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
                this.lottery_description = 2;
            }
            else if (title == "Jackpot 6x45") {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
                this.lottery_description = 3;
            }
            else if (title == "Jackpot 4x20") {
                this.maxNumber = 20;
                this.combinationSize = 4;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
            }
            else if (title == "Jackpot 4x21") {
                this.maxNumber = 21;
                this.combinationSize = 4;
                this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
                this.lottery_description = 1;
            }
            else if (title == "Jackpot 7x49") {
                this.maxNumber = 49;
                this.combinationSize = 7;
                this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
            }
            else if (title == "Rapidos") {
                this.maxNumber = 21;
                this.combinationSize = 4;
                this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
                this.lottery_description = 4;
            }
            else if (title == "Two Numbers") {
                this.maxNumber = 36;
                this.combinationSize = 5;
                this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
                this.lottery_description = 5;
            }
            else if (title == "Prize&Jackpot") {
                this.maxNumber = 45;
                this.combinationSize = 6;
                this.lotteryGrequencyDescription = "Top3 is held every 5 minutes.";
                this.lottery_description = 6;
            }
        }
        else if (reason == "buy") {
            /*this.aboutContent = false;
            this.buyContent = true;*/
            this.cost = 1;
        }
        //this.modalService.open(content).result.then((result) => {
        this.modalReference.result.then(function (result) {
            //this.closeResult = `Closed with: ${result}`;
        }, function (reason) {
            //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
        });
    };
    PrivateOfficeComponent.prototype.getDismissReason = function (reason) {
        this.modalTitle = "";
        this.cost = 0;
        var ticketInput = document.getElementById("ticketInput");
        ticketInput.value = "0";
        if (reason === __WEBPACK_IMPORTED_MODULE_8__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].ESC) {
            return 'by pressing ESC';
        }
        else if (reason === __WEBPACK_IMPORTED_MODULE_8__ng_bootstrap_ng_bootstrap__["a" /* ModalDismissReasons */].BACKDROP_CLICK) {
            return 'by clicking on a backdrop';
        }
        else {
            return "with: " + reason;
        }
    };
    PrivateOfficeComponent.prototype.buyTicketRedirect = function (type, give) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
        this.tpService.setWannaGive(give);
    };
    PrivateOfficeComponent.prototype.countDown = function () {
        this.jackpot_4_21_counter = this.getCountDown("Jackpot 4x21");
        this.jackpot_5_36_counter = this.getCountDown("Jackpot 5x36");
        this.jackpot_6_45_counter = this.getCountDown("Jackpot 6x45");
        this.rapidos_counter = this.getCountDown("Rapidos");
        this.two_numbers_counter = this.getCountDown("Two Numbers");
        this.prize_jackpot_counter = this.getCountDown("Prize&Jackpot");
    };
    PrivateOfficeComponent.prototype.getCountDown = function (lotteryName) {
        var nowLocal = new Date();
        var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
        if (lotteryName == "Jackpot 4x21") {
            if (now.getHours() >= 23) {
                cd.setHours(3);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 2 && now.getHours() >= 0) {
                cd.setHours(3);
            }
            else if (now.getHours() >= 2 && now.getHours() < 5) {
                cd.setHours(5);
            }
            else if (now.getHours() >= 5 && now.getHours() < 8) {
                cd.setHours(8);
            }
            else if (now.getHours() >= 8 && now.getHours() < 11) {
                cd.setHours(11);
            }
            else if (now.getHours() >= 11 && now.getHours() < 14) {
                cd.setHours(14);
            }
            else if (now.getHours() >= 14 && now.getHours() < 17) {
                cd.setHours(17);
            }
            else if (now.getHours() >= 17 && now.getHours() < 20) {
                cd.setHours(23);
            }
            else if (now.getHours() >= 20 && now.getHours() < 23) {
                cd.setHours(23);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Jackpot 5x36") {
            if (now.getHours() >= 22) {
                cd.setHours(4);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 4 && now.getHours() >= 0) {
                cd.setHours(4);
            }
            else if (now.getHours() >= 4 && now.getHours() < 10) {
                cd.setHours(10);
            }
            else if (now.getHours() >= 10 && now.getHours() < 16) {
                cd.setHours(16);
            }
            else if (now.getHours() >= 16 && now.getHours() < 22) {
                cd.setHours(22);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Jackpot 6x45") {
            if (now.getHours() >= 21) {
                cd.setHours(9);
                cd.setDate(now.getDate() + 1);
            }
            else if (now.getHours() < 9 && now.getHours() >= 0) {
                cd.setHours(9);
            }
            else if (now.getHours() >= 9 && now.getHours() < 21) {
                cd.setHours(21);
            }
            cd.setMinutes(0);
            cd.setSeconds(0);
        }
        else if (lotteryName == "Rapidos") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
                cd.setMinutes(15);
            }
            else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
                cd.setMinutes(30);
            }
            else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
                cd.setMinutes(45);
            }
            else if (now.getMinutes() >= 45) {
                cd.setMinutes(0);
                cd.setHours(now.getHours() + 1);
            }
            cd.setSeconds(0);
        }
        else if (lotteryName == "Two Numbers") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
                cd.setMinutes(20);
            }
            else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
                cd.setMinutes(35);
            }
            else if (now.getMinutes() < 50 && now.getMinutes() >= 35) {
                cd.setMinutes(50);
            }
            else if (now.getMinutes() >= 50 /*&& now.getMinutes() < 0*/) {
                cd.setMinutes(5);
                cd.setHours(now.getHours() + 1);
                /*} else if (now.getMinutes() == 59) {
                  cd.setMinutes(5);
                  cd.setHours(now.getHours()+1);*/
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
                cd.setMinutes(5);
            }
            cd.setSeconds(0);
        }
        else if (lotteryName == "Prize&Jackpot") {
            var now = new Date();
            var cd = new Date();
            if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
                cd.setMinutes(25);
            }
            else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
                cd.setMinutes(40);
            }
            else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
                cd.setMinutes(55);
            }
            else if (now.getMinutes() >= 55 /*&& now.getMinutes() < 59*/) {
                cd.setMinutes(10);
                cd.setHours(now.getHours() + 1);
                /*} else if (now.getMinutes() == 59) {
                  cd.setMinutes(10);
                  cd.setHours(now.getHours()+1);*/
            }
            else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
                cd.setMinutes(10);
            }
            cd.setSeconds(0);
        }
        var countDownDate = cd.getTime();
        var distance = countDownDate - now.getTime();
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        return hours + "h " + minutes + "m " + seconds + "s ";
    };
    PrivateOfficeComponent.prototype.buyScratch = function (type, give) {
        this.tpService.setScratchType(type);
        this.tpService.setWannaGive(give);
        this.router.navigateByUrl('/scratch');
    };
    PrivateOfficeComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return PrivateOfficeComponent;
}());
PrivateOfficeComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'privateOffice',
        template: __webpack_require__("../../../../../src/app/components/privateOffice/privateOffice.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/privateOffice/privateOffice.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_8__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_8__ng_bootstrap_ng_bootstrap__["b" /* NgbModal */]) === "function" && _d || Object, typeof (_e = typeof __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _e || Object])
], PrivateOfficeComponent);

var _a, _b, _c, _d, _e;
//# sourceMappingURL=privateOffice.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/public-statistics/public-statistics.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/public-statistics/public-statistics.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/home\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n        <app-navbar></app-navbar>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div style=\"width: 887px\">\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/public-statistics/public-statistics.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return PublicStatisticsComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var PublicStatisticsComponent = (function () {
    function PublicStatisticsComponent(router, tpService, lottery) {
        this.router = router;
        this.tpService = tpService;
        this.lottery = lottery;
    }
    PublicStatisticsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    PublicStatisticsComponent.prototype.goLogin = function (lotteryType) {
        this.router.navigateByUrl('/login');
        this.tpService.setLotteryType(lotteryType);
    };
    return PublicStatisticsComponent;
}());
PublicStatisticsComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-public-statistics',
        template: __webpack_require__("../../../../../src/app/components/public-statistics/public-statistics.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/public-statistics/public-statistics.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _c || Object])
], PublicStatisticsComponent);

var _a, _b, _c;
//# sourceMappingURL=public-statistics.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/register/register.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".brd {\r\n\r\n  border: 4px solid #fff;\r\n  border-radius: 50px;\r\n  margin-top: 15%;\r\n  background-color: rgba(255, 255, 255, 0.6);\r\n}\r\n\r\ninput {\r\n  height: 55px;\r\n  border-radius: 0;\r\n}\r\n\r\nbutton {\r\n  width: 100%;\r\n  height: 55px;\r\n  font-size: 150%;\r\n  padding-bottom: 10px;\r\n  border-radius: 0;\r\n}\r\n\r\n#background {\r\n  width: 100%;\r\n  height: 100%;\r\n  /*background-color:red;*/\r\n  padding-bottom: 10%;\r\n  background: red; /* For browsers that do not support gradients */ /* For Safari 5.1 to 6.0 */ /* For Opera 11.1 to 12.0 */ /* For Firefox 3.6 to 15 */\r\n    background: linear-gradient(to right, cyan, orange, violet); /* Standard syntax (must be last) */\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 60px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/register/register.component.html":
/***/ (function(module, exports) {

module.exports = "<app-cube style=\"position:absolute;margin-left:85%;margin-top:5%;\"></app-cube>\r\n\r\n<div id=\"background\">\r\n<div class=\"row\">\r\n  <div class=\"col-md-6 offset-md-3\">\r\n    <div class=\"brd\">\r\n      <img src=\"assets/img/logo_small.png\" alt=\"logo\" align=\"right\" style=\"padding: 30px;\">\r\n      <br>\r\n      <div style=\"padding: 30px 80px 35px 80px;\">\r\n        <h1 style=\"font-size: 30px; padding-bottom: 15px;\"><strong>Register</strong></h1>\r\n\r\n\r\n        <ngb-alert *ngIf=\"errorMessage\" type=\"danger\" (close)=\"errorMessage = null\">{{ errorMessage }}</ngb-alert>\r\n        <form (ngSubmit)=\"onRegister()\" novalidate>\r\n         <div class=\"form-group\">\r\n\r\n           <input type=\"text\" class=\"form-control\" id=\"email\" placeholder=\"Email\" [(ngModel)]=\"user.email\" name=\"email\" required>\r\n         </div>\r\n         <div class=\"form-group\">\r\n\r\n           <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Password\" [(ngModel)]=\"user.password\" name=\"password\" required>\r\n         </div>\r\n         <div class=\"form-group\">\r\n\r\n           <input type=\"password\" class=\"form-control\" id=\"repeat-password\" placeholder=\"Repeat password\" [(ngModel)]=\"repeatPassword\" name=\"repeat-password\" required>\r\n         </div>\r\n\r\n         <button type=\"submit\" class=\"lotteryButton\"><strong>Submit</strong></button>\r\n        </form>\r\n\r\n    </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/register/register.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RegisterComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_user__ = __webpack_require__("../../../../../src/app/models/user.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_Subject__ = __webpack_require__("../../../../rxjs/Subject.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_rxjs_Subject___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_rxjs_Subject__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_operator_debounceTime__ = __webpack_require__("../../../../rxjs/operator/debounceTime.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_operator_debounceTime___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_rxjs_operator_debounceTime__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var RegisterComponent = (function () {
    function RegisterComponent(router, auth) {
        this.router = router;
        this.auth = auth;
        this.user = new __WEBPACK_IMPORTED_MODULE_3__models_user__["a" /* User */]();
        this._alert = new __WEBPACK_IMPORTED_MODULE_4_rxjs_Subject__["Subject"]();
        this.staticAlertClosed = false;
    }
    RegisterComponent.prototype.ngOnInit = function () {
        var _this = this;
        setTimeout(function () { return _this.staticAlertClosed = true; }, 20000);
        this._alert.subscribe(function (message) { return _this.errorMessage = message; });
        __WEBPACK_IMPORTED_MODULE_5_rxjs_operator_debounceTime__["debounceTime"].call(this._alert, 5000).subscribe(function () { return _this.errorMessage = null; });
    };
    RegisterComponent.prototype.onRegister = function () {
        var _this = this;
        var myPassword = document.getElementById("password");
        if (myPassword.value == this.repeatPassword) {
            this.auth.register(this.user)
                .then(function (user) {
                if (user.json().status == "success") {
                    localStorage.setItem('token', user.json().auth_token);
                    _this.router.navigateByUrl('/privateOffice');
                }
                else {
                    _this.alertMessage(user.json().message);
                }
            })
                .catch(function (err) {
                console.log(err);
            });
        }
        else {
            this.alertMessage('Passwords different');
        }
    };
    RegisterComponent.prototype.alertMessage = function (message) {
        this._alert.next(message);
    };
    return RegisterComponent;
}());
RegisterComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'register',
        template: __webpack_require__("../../../../../src/app/components/register/register.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/register/register.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_auth_service__["a" /* AuthService */]) === "function" && _b || Object])
], RegisterComponent);

var _a, _b;
//# sourceMappingURL=register.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/scratch/scratch.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-dark {\r\n  border: 1px solid #000;\r\n  /*width: 171px;*/\r\n  width: 203px;\r\n  height: 40px;\r\n  text-align: center;\r\n  cursor: pointer;\r\n  margin: 0;\r\n  margin-left:5px;\r\n}\r\n\r\nh2 {\r\n  margin-bottom: 10px;\r\n  color: black;\r\n}\r\n\r\nh4 {\r\n  color: black;\r\n}\r\n\r\n.border {\r\n  /*width: 535px;\r\n  height: 350px;\r\n  padding: 15px;*/\r\n  width: 630px;\r\n  /*width: 80%;*/\r\n  padding: 15px;\r\n}\r\n\r\n.ok {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 630px;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n}\r\n\r\n.ok:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.ok p {\r\n  margin-top: 5px;\r\n}\r\n\r\nul {\r\n  list-style: none;\r\n  padding: 0;\r\n  margin:0;\r\n}\r\n\r\n.border ul button {\r\n  text-decoration: none;\r\n  color: #FFF;\r\n  border: none;\r\n  cursor: pointer;\r\n  color: #000;\r\n}\r\n\r\n.border ul li button{\r\n  width: 70px;\r\n  background: #FFF;\r\n  height: 70px;\r\n  border-radius: 50%;\r\n  border: 1px solid #000;\r\n  float: left;\r\n  margin: 5px;\r\n  margin-left: 8px; /* Для Firefox */\r\n  -webkit-column-count: 4; /* Для Safari и Chrome */\r\n  column-count: 4;\r\n  font-size: 22px;\r\n  font-weight: bold;\r\n\r\n  /*text-shadow:\r\n  -1px -1px 0 #000,\r\n  1px -1px 0 #000,\r\n  -1px 1px 0 #000,\r\n  1px 1px 0 #000;*/\r\n\r\n  /*border: 1px solid rgba(0,0,0,0.5);\r\n  border-bottom: 3px solid rgba(0,0,0,0.5);*/\r\n  border: 1px solid rgba(0,0,0,1);\r\n  border-bottom: 1px solid rgba(0,0,0,1);\r\n\r\n  /*background: rgba(0,0,0,0.25);*/\r\n\r\n  /*box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);*/\r\n}\r\n\r\n.border ul li button:hover {\r\n  color: #FFF;\r\n  background-color: #000;\r\n  transition: 0.3s;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.border ul li .clicked {\r\n  color: #FFF;\r\n  background-color: #000;\r\n\r\n  box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -o-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -webkit-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n\r\n  -moz-box-shadow:\r\n  0 2px 8px rgba(0,0,0,0.1),\r\n  inset 0 1px rgba(255,255,255,0.3),\r\n  inset 0 10px rgba(255,255,255,0.2),\r\n  inset 0 10px 20px rgba(255,255,255,0.1),\r\n  inset 0 -15px 30px rgba(0,0,0,1);\r\n}\r\n\r\n.timer {\r\n  margin:0;\r\n  padding: 0;\r\n  text-align: center;\r\n}\r\n\r\n.container {\r\n  margin-top: 35px;\r\n  margin-left: 5%;\r\n  height: 100%;\r\n}\r\n\r\n#rules {\r\n  text-align: top;\r\n  -ms-flex-line-pack: stretch;\r\n      align-content: stretch;\r\n  -ms-flex-align: stretch;\r\n      align-items: stretch;\r\n}\r\n\r\n.nav > li > button.active, .nav > li > button:hover {\r\n    background-color: #fff;\r\n    color: #000;\r\n}\r\n\r\n#random-button:hover {\r\n  color: #000;\r\n  background-color: #FFF;\r\n}\r\n\r\n.header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n#navbar {\r\n  position: fixed;\r\n  z-index: 10;\r\n  padding-top: 107px;\r\n  padding-left: 20px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\n.container {\r\n  /*margin-left: 10px;*/\r\n  width: 80%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n  margin-top: 8%;\r\n  padding-left: 10%;\r\n  /*position: fixed;*/\r\n  left: 1%;\r\n\r\n\r\n}\r\n\r\n.cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  /*margin-left: 85%;*/\r\n  /*margin-top: 5%;*/\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n\r\n.card {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card img {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n  text-transform: uppercase;\r\n  color: black;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n  color: black;\r\n}\r\n\r\n.top-panel-button {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  /*display: inline-block;*/\r\n}\r\n\r\n.top-panel-button:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  /*transition: 0.3s;*/\r\n}\r\n\r\n.top-panel-button:visited {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button:active {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.btn-dark.top-panel-button.active.show {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n}\r\n\r\n.top-panel-button:link {\r\n  cursor: pointer;\r\n  border: 1px solid #FFF;\r\n  background-color: #000;\r\n  color: #FFF;\r\n}\r\n\r\n.top-panel-button p {\r\n  margin-top: 5px;\r\n}\r\n\r\n#buyButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n#buyButton:hover{\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n\r\n.btn-shake:hover {\r\n    /* Start the shake animation and make the animation last for 0.5 seconds */\r\n    animation: shake 0.5s;\r\n    /* When the animation is finished, start again */\r\n    /*animation-iteration-count: infinite;*/\r\n    animation-iteration-count: 1;\r\n}\r\n\r\n@keyframes shake {\r\n    0% { transform: translate(1px, 1px) rotate(0deg); }\r\n    10% { transform: translate(-1px, -2px) rotate(-1deg); }\r\n    20% { transform: translate(-3px, 0px) rotate(1deg); }\r\n    30% { transform: translate(3px, 2px) rotate(0deg); }\r\n    40% { transform: translate(1px, -1px) rotate(1deg); }\r\n    50% { transform: translate(-1px, 2px) rotate(-1deg); }\r\n    60% { transform: translate(-3px, 1px) rotate(0deg); }\r\n    70% { transform: translate(3px, 1px) rotate(-1deg); }\r\n    80% { transform: translate(-1px, -1px) rotate(1deg); }\r\n    90% { transform: translate(1px, 2px) rotate(0deg); }\r\n    100% { transform: translate(1px, -2px) rotate(-1deg); }\r\n}\r\n\r\n.btn-zoom {\r\n  transition: transform .2s; /* Animation */\r\n}\r\n\r\n.btn-zoom:hover {\r\n  transform: scale(1.2);\r\n}\r\n\r\n#rules {\r\n  background-color: white;\r\n}\r\n\r\n\r\n\r\n#ballsContainer {\r\n  background-color: white;\r\n  height: 830px;\r\n}\r\n\r\n\r\n#ballsTable {\r\n  padding: 30%;\r\n  width: 100%;\r\n  height: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.ball {\r\n  position: relative;\r\n  cursor: pointer;\r\n  z-index: 1;\r\n}\r\n\r\n.hidden-number {\r\n  opacity: 0;\r\n  position: absolute;\r\n  font-size: 30pt;\r\n  top: 73%;\r\n  left: 50%;\r\n  transform: translate(-50%, -50%);\r\n  font-weight: bold;\r\n}\r\n\r\n.ball-number {\r\n  opacity: 0;\r\n  position: absolute;\r\n  font-size: 30pt;\r\n  top: 50%;\r\n  left: 40%;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 5em;\r\n  z-index: 3;\r\n}\r\n\r\n.cnv {\r\n  position: absolute;\r\n  top: 0;\r\n  left: 0;\r\n  z-index: 50;\r\n}\r\n\r\n.ballImage {\r\n  z-index: 1;\r\n  opacity: 0;\r\n}\r\n\r\n\r\n\r\n\r\n\r\n\r\n/*h1 {\r\n  width:100%; text-align:center;\r\n}\r\n\r\n.cell {\r\n\tdisplay: table-cell;\r\n\tvertical-align: middle;\r\n\ttext-align: center;\r\n}\r\n\r\n.cell canvas {\r\n\tvertical-align: middle;\r\n}\r\n\r\n.canthumb {\r\n\tborder: 0px solid #222;\r\n}\r\n#main {\r\n    margin:0 auto;\r\n  width:600px;\r\n  margin:0; padding:0;\r\n}\r\n\r\n#maincanvas {\r\n\tborder: 0px solid #222;\r\n\tcursor: pointer;\r\n  margin:0 auto;\r\n}*/\r\n\r\n\r\n\r\n#bridge {\r\n\tdisplay: block;\r\n\tmargin: 0 auto;\r\n  /*background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943.jpg');\r\n\tbackground-image: -webkit-image-set(url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943.jpg') 1x, url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/calgary-bridge-1943-2x.jpg') 2x );*/\r\n\tbackground-size: cover;\r\n\t/*width: 100%;\r\n\tmax-width: 750px;*/\r\n\theight: auto;\r\n  cursor: pointer;\r\n  /*cursor:  crosshair;\r\n  cursor: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/circular-cursor.png) 53 53, crosshair;*/\r\n}\r\n#bridgeContainer {\r\n  text-align: center;\r\n  font-family: Avenir, sans-serif;\r\n}\r\n#bridgeContainer figcaption {\r\n  margin-top: 2rem;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/scratch/scratch.component.html":
/***/ (function(module, exports) {

module.exports = "<img src=\"{{backgroundImage}}\" style=\"position: fixed; width: 100%; height: 100%\">\r\n\r\n<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h2 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h2></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n          <div id=\"navbar\">\r\n            <p><a routerLink=\"/privateOffice\">Buy Ticket</a></p>\r\n            <p><a routerLink=\"/my-bets\">My Bets</a></p>\r\n            <p><a routerLink=\"/my-tokens\">My Tokens</a></p>\r\n            <p><a routerLink=\"/my-statistics\">Statistics</a></p>\r\n            <p><a routerLink=\"/settings\">Settings</a></p>\r\n            <p><a routerLink=\"/faq\">FAQ</a></p>\r\n            <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\r\n          </div>\r\n\r\n          <div class=\"container\" align=\"center\">\r\n            <table border=\"0\" style=\"margin-bottom: 50px; table-layout: auto; width: 100%;\" width=\"100%\">\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\" width=\"100%\">\r\n                <ul class=\"nav\">\r\n                  <li><button class=\"btn-dark top-panel-button\" style=\"margin-left: 0px; width: 206px;\" data-toggle=\"tab\" href=\"#tickets\">Tickets</button></li>\r\n                  <li><button class=\"btn-dark top-panel-button\" style=\"width: 206px;\" data-toggle=\"tab\" href=\"#rules\">Rules</button></li>\r\n                  <li><button class=\"btn-dark top-panel-button\" style=\"width: 207px;\" id=\"scratch-now\" (click)=\"scratchNow()\">Scratch ALL!</button></li>\r\n                </ul>\r\n              </td>\r\n                <td align=\"center\" style=\"padding-left: 80px;\">\r\n                  <h2><b>SUPER</b>JACK<b>POT</b></h2>\r\n                </td>\r\n              </tr>\r\n\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\">\r\n\r\n                  <div class=\"tab-content\">\r\n                    <div class=\"tab-pane fade show active\" id=\"tickets\" role=\"tabpanel\">\r\n                      <div style=\"margin-bottom: 5px;\" *ngFor=\"let t of tickets; let i = index\">\r\n                        <div class=\"border\" id=\"ballsContainer\">\r\n                          <!--<table id=\"ballsTable\" cellpadding=\"5\">\r\n                            <tr>\r\n                              <td *ngFor=\"let n of fakeBallsArray; let j = index\" align=\"center\">\r\n                                <div class=\"ball\" (click)=\"scratchCard(i, j)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_{{j}}\" class=\"hidden-number\">{{tickets[i][j]}}</div>\r\n                                </div>\r\n                              </td>\r\n                            </tr>\r\n                          </table>-->\r\n                          <table id=\"ballsTable\" cellpadding=\"5\">\r\n                            <tr>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 0)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_0\" class=\"hidden-number\">{{tickets[i][0]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 0)\" >\r\n                                  <img id=\"ballImage_{{i}}_0\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 0)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_0\" class=\"ball-number\">{{tickets[i][0]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_0\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\" ></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 1)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_1\" class=\"hidden-number\">{{tickets[i][1]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 1)\">\r\n                                  <img id=\"ballImage_{{i}}_1\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 1)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_1\" class=\"ball-number\">{{tickets[i][1]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_1\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 2)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_2\" class=\"hidden-number\">{{tickets[i][2]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 2)\">\r\n                                  <img id=\"ballImage_{{i}}_2\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 2)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_2\" class=\"ball-number\">{{tickets[i][2]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_2\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                            </tr>\r\n                            <tr>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 3)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_3\" class=\"hidden-number\">{{tickets[i][3]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 3)\">\r\n                                  <img id=\"ballImage_{{i}}_3\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 3)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_3\" class=\"ball-number\">{{tickets[i][3]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_3\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 4)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_4\" class=\"hidden-number\">{{tickets[i][4]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 4)\">\r\n                                  <img id=\"ballImage_{{i}}_4\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 4)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_4\" class=\"ball-number\">{{tickets[i][4]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_4\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 5)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_5\" class=\"hidden-number\">{{tickets[i][5]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 5)\">\r\n                                  <img id=\"ballImage_{{i}}_5\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 5)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_5\" class=\"ball-number\">{{tickets[i][5]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_5\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n                              </td>\r\n                            </tr>\r\n                            <tr>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 6)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_6\" class=\"hidden-number\">{{tickets[i][6]}}</div>\r\n                                </div>-->\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 6)\">\r\n                                  <img id=\"ballImage_{{i}}_6\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 6)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_6\" class=\"ball-number\">{{tickets[i][6]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_6\" class=\"cnv\" width=\"189\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 7)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_7\" class=\"hidden-number\">{{tickets[i][7]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 7)\">\r\n                                  <img id=\"ballImage_{{i}}_7\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 7)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_7\" class=\"ball-number\">{{tickets[i][7]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_7\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                              <td>\r\n                                <!--<div class=\"ball\" (click)=\"scratchCard(i, 8)\">\r\n                                  <img class=\"card-img-top\" src=\"{{lotteryBunner}}\" >\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_8\" class=\"hidden-number\">{{tickets[i][8]}}</div>\r\n                                </div>-->\r\n\r\n                                <div class=\"ball\" (mouseenter)=\"setBall(i, 8)\">\r\n                                  <img id=\"ballImage_{{i}}_8\" class=\"card-img-top ballImage\" src=\"{{lotteryBunner}}\" (load)=\"drawCover(i, 8)\">\r\n                                  <div *ngIf=\"scratchNowFlag\" id=\"ball_{{i}}_8\" class=\"ball-number\">{{tickets[i][8]}}</div>\r\n                                  <canvas id=\"scractBall_{{i}}_8\" class=\"cnv\" width=\"190\" height=\"257\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                                </div>\r\n\r\n                              </td>\r\n                            </tr>\r\n                          </table>\r\n\r\n                        </div>\r\n                        <div *ngIf=\"removeButtonFlag() && !scratchNowFlag\" class=\"ok\" (click)=\"removeTicket(i)\" style=\"margin-bottom: 5px;\"><p>- Remove Ticket</p></div>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\"tab-pane fade\" id=\"rules\" style=\"text-align: justify;\">\r\n                      <div class=\"border\" style=\"height:100%;\">\r\n                        <!--<p>Upon registering on SUPERJACKPOT lottery portal, you will be prompted to connect your SUPERJACKPOT account to the WalletSpace wallet; connect it at once if you have one already or start with creating your WalletSpace account and then connect your new wallet with the lottery service.</p>\r\n                        <p>Your funds and gambling tokens are managed in «My Tokens» section.  Here you can access the following features:<br/>\r\n                           <span style=\"margin-left: 10px;\">•\tAvailable tokens count data</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tLottery tokens purchase</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tCurrent WalletSpace balance</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tWalletSpace balance top up</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tWalletSpace funds withdrawal to other accounts</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tMarket data on SJP exchange rates against other major crypto and fiat currencies (USD, EUR, GBP, BTC, ETH and others)</span><br/>\r\n                           <span style=\"margin-left: 10px;\">•\tOther WalletSpace features</span></p>\r\n                          <p>The prize is transferred to winner’s WalletSpace account automatically.<p>\r\n                          <p><i><u>Note:</u> Tokens are purchased for SJP cryptocurrency with an exchange rate of 1:1.</i></p>\r\n                          <p><i><u>Note:</u> Please be aware that the lottery service owners are only responsible for Gambling Tokens level. Service owners do not take any responsibility for cryptocurrencry and fiat transactions.</i></p>\r\n                          <p><i><u>Note:</u> SJP is purchased at Wallet Space with an exchange rate of 1 SJP:1 GBP. </i></p>\r\n                          <p>To play the lottery, you will have to buy at least one ticket. Tickets are purchased for gambling tokens. Tokens are bought for SJP cryptocurrency at 1:1 exchange rate, with SJP coming from  your WalletSpace account. Use WalletSpace account tools (which are also available right from the lottery service portal) to top up wallet balance with your debit card and convert it to SJP.</p>\r\n                          <p>Should you win, the payoff will be automatically transferred to your WalletSpace account in SJP. Winner has several options for managing funds:<br/>\r\n                          <span style=\"margin-left: 10px;\">a.\tTransfer funds to a digital wallet with crypto support (Wirex, SpectroCoin) and order a debit card issued by the wallet provider.</span><br/>\r\n                          <span style=\"margin-left: 10px;\">b.\tUse the exchange feature of your WalletSpace account to convert the funds to one of available crypto or fiat currencies. </span><br/>\r\n                          <span style=\"margin-left: 10px;\">c.\tConvert WalletSpace funds using third party exchange services. Transaction time depends on the service, but usually does not exceed 30 minutes.</span></p>\r\n                          <p>You can withdraw your WalletSpace money to your bank account and cash out at ATM or your bank branch.  If you chose to get a pre-paid debit card issued by certain digital wallet providers (such as Wirex, SpectroCoin), you may withdraw your cash only at ATMs (might not be available in certain countries).</p>\r\n                          <p><i><u>Note:</u> All steps until cash withdrawal are performed online. Transaction speed is determined by specific services availability and load, but usually operations happen immediately.</i></p>\r\n                          <h5>How to withdraw winnings to a bank account</h5>\r\n                          <table class=\"table-dark\" style=\"text-align: left;\">\r\n                            <thead>\r\n                              <tr>\r\n                                <th>Approach</th>\r\n                                <th>Algorithm of actions</th>\r\n                                <th>Comments, restrictions</th>\r\n                              </tr>\r\n                            </thead>\r\n                            <tbody>\r\n                              <tr>\r\n                                <td>WalletSpace SJP conversion + funds transfer to the bank account</td>\r\n                                <td>1.\tExchange SJP to fiat of choice<br/>2.\tTransfer funds from WalletSpace to your debit card<br/>3.\tWithdraw cash from ATM or in your bank branch(optional)</td>\r\n                                <td>Exchange and transfer operations are performed with  WalletSpace account tools.</td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account</td>\r\n                                <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tWithdraw cash from ATM (optional)</td>\r\n                                <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/> •\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be troubles with ordering or using Wirex or SpectroCoin debit cards.</td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td>WalletSpace SJP conversion + funds transfer to Wirex or SpectroCoin account + bank account transfer</td>\r\n                                <td>1.\tExchange SJP to any currency supported by Wirex or SpectroCoin <br/>2.\tTransfer funds to a bank debit card 3.\tWithdraw cash from ATM or in your bank branch (optional)</td>\r\n                                <td>•\tNot all cryptocurrencies are currently supported by Wirex and SpectroCoin <br/>•\tDue to ambiguous legal status of cryptocurrencies in some countries, there might be difficulties ordering or using Wirex or SpectroCoin debit cards</td>\r\n                              </tr>\r\n                              <tr>\r\n                                <td>SJP conversion with third party exchange services </td>\r\n                                <td>Conversion process is specific for each exchange service, but generally  looks like this:  <br/>\t 1.\tFunds are transferred to exchange service wallet.<br/> 2.\tFunds are transferred back to WalletSpace account in the currency of choice.</td>\r\n                                <td>•\tTransaction time depends on the service, but usually doesn’t take more than 30 minutes<br/> •\tRefund policy mostly depends on the integrity of service.<br/> •\tSome exchange services may have better currency conversion rates.</td>\r\n                              </tr>\r\n                            </tbody>\r\n                          </table>-->\r\n\r\n                          <!--DEFAULT-->\r\n                          <!--<figure id=\"bridgeContainer\">\r\n                            <canvas id=\"bridge\" width=\"750\" height=\"465\" (mousemove)=\"mouseMove($event)\"></canvas>\r\n                            <figcaption>Downtown Calgary in 2013 and 1943; mouse down or touch on photo to reveal</figcaption>\r\n                          </figure>-->\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n\r\n\r\n                </td>\r\n\r\n                <td rowspan=\"1\" style=\"padding-left: 80px;\" valign=\"top\" align=\"center\">\r\n                  <div class=\"timer\">\r\n                    <div class=\"card\" style=\"width: 15rem;  margin: 0 auto; \">\r\n                      <img id=\"bunner\" class=\"card-img-top\" src=\"{{lotteryBunner}}\" alt=\"Card image cap\">\r\n                      <div class=\"lotteryTitle\">{{lotteryName}}</div>\r\n                      <div class=\"lotteryFunds\">{{lotteryFunds}} <img style=\"width:24px;\" src=\"assets/img/logo_small.png\" alt=\"logo\"></div>\r\n                      <div class=\"buttonSector\">\r\n                        <div *ngIf=\"!scratchNowFlag\" id=\"buyButton\" class=\"ok\" (click)=\"buyTickets()\"><p>Buy Tickets</p></div>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </td>\r\n\r\n                <td style=\"vertical-align: top; padding-left: 5%;\">\r\n                  <app-cube></app-cube>\r\n                </td>\r\n              </tr>\r\n\r\n              <tr>\r\n                <td colspan=\"3\" align=\"center\">\r\n                  <div *ngIf=\"!scratchNowFlag\" class=\"ok\" (click)=\"addTicket()\"><p>+ Add Ticket</p></div>\r\n                </td>\r\n              </tr>\r\n            </table>\r\n          </div>\r\n\r\n\r\n\r\n\r\n\r\n\r\n          <!--<div id=\"main\">\r\n\r\n          <h1>\"Scratch off\" image to reveal a different one</h1>\r\n\r\n          <div><canvas id=\"maincanvas\"></canvas></div>\r\n\r\n          <div><input id=\"resetbutton\" type=\"button\" value=\"Reset\"></div>\r\n\r\n\r\n        </div>-->\r\n"

/***/ }),

/***/ "../../../../../src/app/components/scratch/scratch.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ScratchComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_common__ = __webpack_require__("../../../common/@angular/common.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var ScratchComponent = (function () {
    function ScratchComponent(location, router, lottery, tpService) {
        this.location = location;
        this.router = router;
        this.lottery = lottery;
        this.tpService = tpService;
        this.tickets = [];
        this.fakeBallsArray = [];
        this.scratchNowFlag = false;
        this.brushRadius = 30;
    }
    ScratchComponent.prototype.ngOnInit = function () {
        if (this.tpService.getWannaGive() === 'yes') {
            this.router.navigateByUrl('/give-scratch');
        }
        if (this.tpService.getScratchType() == "777") {
            this.backgroundImage = "assets/img/b_top3.jpg";
            this.lotteryFunds = 777;
            this.lotteryName = "777";
            this.lotteryBunner = "assets/img/top3.jpg";
        }
        else if (this.tpService.getScratchType() == "100CASH") {
            this.backgroundImage = "assets/img/b_4_21.jpg";
            this.lotteryFunds = 100;
            this.lotteryName = "100'000 CASH";
            this.lotteryBunner = "assets/img/100000CASH.jpg";
        }
        else if (this.tpService.getScratchType() == "fruity") {
            this.backgroundImage = "assets/img/b_rapidos.jpg";
            this.lotteryFunds = 333;
            this.lotteryName = "Fruity";
            this.lotteryBunner = "assets/img/33.jpg";
        }
        for (var i = 0; i < 9; i++) {
            this.fakeBallsArray.push(i);
        }
        //this.addTicket();
        var arr = [];
        this.tickets.push(arr);
    };
    ScratchComponent.prototype.ngAfterViewInit = function () {
        /*this.bridge = <HTMLCanvasElement> document.getElementById("scractBall_1");
        this.bridgeCanvas = this.bridge.getContext('2d');
        this.brushRadius = 30;
        this.img = new Image();
        this.img.src = 'http://5.178.87.76:7000/' + this.lotteryBunner;
        var gradient = this.bridgeCanvas.createLinearGradient(0, 0, 189, 257);
        gradient.addColorStop(0, 'cyan');
        gradient.addColorStop(0.5, 'orange');
        gradient.addColorStop(1, 'violet');
        this.bridgeCanvas.fillStyle = gradient;
        this.bridgeCanvas.fillRect(0,0,this.bridge.width,this.bridge.height);*/
        //this.drawCanvas();
    };
    /*ngAfterViewChecked() {
      this.drawCanvas();
    }*/
    /*ngOnChanges() {
      this.drawCanvas();
    }*/
    ScratchComponent.prototype.drawCover = function (i, j) {
        //if (this.scratchNowFlag) {
        var ball = document.getElementById("scractBall_" + i + "_" + j);
        var ctx = ball.getContext('2d');
        var gradient = ctx.createLinearGradient(0, 0, 189, 257);
        gradient.addColorStop(0, 'cyan');
        gradient.addColorStop(0.5, 'orange');
        gradient.addColorStop(1, 'violet');
        ctx.fillStyle = gradient;
        ctx.fillRect(0, 0, ball.width, ball.height);
        //}
    };
    ScratchComponent.prototype.drawCanvas = function () {
        for (var i = 0; i < this.tickets.length; i++) {
            for (var j = 0; j < 9; j++) {
                var ball = document.getElementById("scractBall_" + i + "_" + j);
                var ctx = ball.getContext('2d');
                var gradient = ctx.createLinearGradient(0, 0, 189, 257);
                gradient.addColorStop(0, 'cyan');
                gradient.addColorStop(0.5, 'orange');
                gradient.addColorStop(1, 'violet');
                ctx.fillStyle = gradient;
                ctx.fillRect(0, 0, ball.width, ball.height);
            }
        }
    };
    ScratchComponent.prototype.buyTickets = function () {
        var _this = this;
        this.lottery.buyScratch(this.tpService.getScratchType(), this.tickets.length)
            .then(function (res) {
            if (res.json().status === 'success') {
                //this.tpService.setNewBets(tickets);
                //this.tpService.setLotteryType("");
                _this.router.navigateByUrl('/my-bets');
            }
            else {
            }
        }, function (err) {
            console.log(err);
        });
    };
    ScratchComponent.prototype.scratchNow = function () {
        var _this = this;
        //this.scratchNowFlag = true;
        //this.drawCanvas();
        this.lottery.scratchNow(this.tpService.getScratchType(), this.tickets.length)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.scratchNowFlag = true;
                _this.tickets = res.json().tickets;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    ScratchComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    ScratchComponent.prototype.addTicket = function () {
        var arr = [];
        this.tickets.push(arr);
    };
    ScratchComponent.prototype.removeTicket = function (index) {
        this.tickets.splice(index, 1);
    };
    ScratchComponent.prototype.removeButtonFlag = function () {
        if (this.tickets.length > 1) {
            return true;
        }
        else {
            return false;
        }
    };
    ScratchComponent.prototype.scratchCard = function (i, j) {
        var _this = this;
        if (this.scratchNowFlag) {
            var ball = document.getElementById("ball_" + i + "_" + j);
            ball.style.opacity = "0";
            var theLoop_1 = function (k) {
                setTimeout(function () {
                    _this.fadeImg(ball);
                    if (--k) {
                        theLoop_1(k);
                    }
                }, 10);
            };
            theLoop_1(100);
        }
    };
    ScratchComponent.prototype.fadeImg = function (obj) {
        obj.style.opacity = String(+obj.style.opacity + 0.01);
    };
    ScratchComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    //DEFAULT
    ScratchComponent.prototype.detectLeftButton = function (event) {
        if ('buttons' in event) {
            return event.buttons === 1;
        }
        else if ('which' in event) {
            return event.which === 1;
        }
        else {
            return event.button === 1;
        }
    };
    /*private getBrushPos(xRef, yRef) {
        var bridgeRect = this.bridge.getBoundingClientRect();
        return {
          x: Math.floor((xRef-bridgeRect.left)/(bridgeRect.right-bridgeRect.left)*this.bridge.width),
          y: Math.floor((yRef-bridgeRect.top)/(bridgeRect.bottom-bridgeRect.top)*this.bridge.height)
        };
    }
    
    private drawDot(mouseX,mouseY){
        this.bridgeCanvas.beginPath();
        this.bridgeCanvas.arc(mouseX, mouseY, this.brushRadius, 0, 2*Math.PI, true);
        this.bridgeCanvas.fillStyle = '#000';
        this.bridgeCanvas.globalCompositeOperation = "destination-out";
        this.bridgeCanvas.fill();
    }
    
    private mouseMove(e: MouseEvent) {
    
      var brushPos = this.getBrushPos(e.clientX, e.clientY);
    
      var leftBut = this.detectLeftButton(e);
    
        if (leftBut == true) {
          this.drawDot(brushPos.x, brushPos.y);
      }
    }*/
    ScratchComponent.prototype.setBall = function (i, j) {
        if (this.scratchNowFlag) {
            this.cnv = document.getElementById("scractBall_" + i + "_" + j);
            this.ctx = this.cnv.getContext('2d');
            var ball = document.getElementById("ball_" + i + "_" + j);
            ball.style.opacity = "100";
            var ballImage = document.getElementById("ballImage_" + i + "_" + j);
            ballImage.style.opacity = "100";
        }
    };
    ScratchComponent.prototype.getBrushPos = function (xRef, yRef) {
        var rect = this.cnv.getBoundingClientRect();
        return {
            x: Math.floor((xRef - rect.left) / (rect.right - rect.left) * this.cnv.width),
            y: Math.floor((yRef - rect.top) / (rect.bottom - rect.top) * this.cnv.height)
        };
    };
    ScratchComponent.prototype.drawDot = function (mouseX, mouseY) {
        this.ctx.beginPath();
        this.ctx.arc(mouseX, mouseY, this.brushRadius, 0, 2 * Math.PI, true);
        this.ctx.fillStyle = '#000';
        this.ctx.globalCompositeOperation = "destination-out";
        this.ctx.fill();
    };
    ScratchComponent.prototype.mouseMove = function (e) {
        if (this.cnv != null && this.scratchNowFlag) {
            var brushPos = this.getBrushPos(e.clientX, e.clientY);
            //var leftBut = this.detectLeftButton(e);
            //if (leftBut == true) {
            this.drawDot(brushPos.x, brushPos.y);
            //}
        }
    };
    return ScratchComponent;
}());
ScratchComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-scratch',
        template: __webpack_require__("../../../../../src/app/components/scratch/scratch.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/scratch/scratch.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_common__["f" /* Location */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_common__["f" /* Location */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_lottery_service__["a" /* LotteryService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _d || Object])
], ScratchComponent);

var _a, _b, _c, _d;
//# sourceMappingURL=scratch.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/settings/settings.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".header {\r\n  margin-top: 20px;\r\n  position: fixed;\r\n  margin-bottom: 50px;\r\n  z-index: 10;\r\n}\r\n\r\n.header img {\r\n  width: 39px;\r\n  height: 34px;\r\n}\r\n\r\n.page-content {\r\n  width: 80%;\r\n  table-layout: auto;\r\n}\r\n\r\n.page-content td {\r\n  vertical-align: top;\r\n  padding: 20px;\r\n}\r\n\r\na h2:hover {\r\n  color: black;\r\n}\r\n\r\n\r\n.lottery-cell {\r\n  text-align: center;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  padding-top: 20px;\r\n}\r\n\r\na {\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  color: black;\r\n  font-size: 13pt;\r\n  text-shadow: 1px 1px 8px #ffffff;\r\n  /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n  color: grey;\r\n}\r\n\r\na:active {\r\n  color: grey;\r\n}\r\n\r\np {\r\n  margin-bottom: 10px;\r\n}\r\n\r\n.buy-give {\r\n  width: 60px;\r\n  margin-left: 2px;\r\n}\r\n\r\nfieldset.scheduler-border {\r\n    border: 1px groove #000 !important;\r\n    padding: 0 1.4em 1.4em 1.4em !important;\r\n    /*margin: 0 0 1.5em 0 !important;*/\r\n    margin: 1em 1em 1.5em 1em !important;\r\n    color: black;\r\n    box-shadow:  0px 0px 0px 0px #000;\r\n}\r\n\r\nlegend.scheduler-border {\r\n        font-size: 2.5em !important;\r\n        /*font-weight: bold !important;*/\r\n        text-align: left !important;\r\n        width:auto;\r\n        padding:0 10px;\r\n        border-bottom:none;\r\n        color: black;\r\n}\r\n\r\n.lotteryLabel {\r\n  font-size: 2em !important;\r\n  margin-left: 15px;\r\n  color: black;\r\n  font-weight: 100;\r\n}\r\n\r\n.container {\r\n  margin-left: 10px;\r\n  width: 100%;\r\n  -ms-flex-line-pack: center;\r\n      align-content: center;\r\n  -ms-flex-align: center;\r\n      align-items: center;\r\n  -ms-flex-item-align: center;\r\n      -ms-grid-row-align: center;\r\n      align-self: center;\r\n  align: center;\r\n  position: absolute;\r\n}\r\n\r\n\r\n.slider-holder\r\n{\r\n    width: 800px;\r\n    height: 240px;\r\n    background-color: yellow;\r\n    margin-left: auto;\r\n    margin-right: auto;\r\n    margin-top: 0px;\r\n    text-align: center;\r\n    overflow: hidden;\r\n}\r\n\r\n.image-holder\r\n{\r\n    width: 2400px;\r\n    background-color: red;\r\n    height: 240px;\r\n    clear: both;\r\n    position: relative;\r\n    transition: left 2s;\r\n}\r\n\r\n.slider-image\r\n{\r\n    float: left;\r\n    margin: 0px;\r\n    padding: 0px;\r\n    position: relative;\r\n    width: 800px;\r\n}\r\n\r\n#slider-image-1:target ~ .image-holder\r\n{\r\n    left: 0px;\r\n}\r\n\r\n#slider-image-2:target ~ .image-holder\r\n{\r\n    left: -800px;\r\n}\r\n\r\n#slider-image-3:target ~ .image-holder\r\n{\r\n    left: -1600px;\r\n}\r\n\r\n.button-holder\r\n{\r\n    position: relative;\r\n    top: -20px;\r\n}\r\n\r\n.slider-change\r\n{\r\n    display: inline-block;\r\n    height: 10px;\r\n    width: 10px;\r\n    border-radius: 5px;\r\n    background-color: brown;\r\n}\r\n\r\n.banner-text {\r\n  height: 170px;\r\n  font-size: 3.5em !important;\r\n  font-weight: 100;\r\n  padding-left: 10%;\r\n}\r\n\r\n.card {\r\n  position: relative;\r\n  border: 0px solid #333;\r\n  margin: 2%;\r\n  overflow: hidden;\r\n  /*width: 540px;*/\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card-img-top {\r\n  border-top-left-radius: 0;\r\n  border-top-right-radius: 0;\r\n  border-bottom-right-radius: 0;\r\n  border-bottom-left-radius: 0;\r\n}\r\n\r\n.card:hover img {\r\n  transform: scale(1.1);\r\n  -webkit-transition: transform 0.5s ease-in-out;\r\n}\r\n\r\n.buttonSector {\r\n  z-index: 9;\r\n  position: absolute;\r\n  bottom: 0;\r\n  width: 100%;\r\n  text-align: center;\r\n}\r\n\r\n.buttonDiv {\r\n  display: inline-block;\r\n  width: 30%;\r\n  margin-left: 0px;\r\n  margin-right: 0px;\r\n  margin-bottom: 5%;\r\n}\r\n\r\n.lotteryButton {\r\n  cursor: pointer;\r\n  /*width: 265px;*/\r\n  width: 100%;\r\n  height: 40px;\r\n  border: 1px solid #FFF;\r\n  text-align: center;\r\n  background-color: #000;\r\n  color: #FFF;\r\n  display: inline-block;\r\n  z-index: 9;\r\n}\r\n\r\n.lotteryButton:hover {\r\n  background-color: #FFF;\r\n  color: #000;\r\n  border-color: #000;\r\n  transition: 0.3s;\r\n}\r\n\r\n.lotteryButton p {\r\n  margin-top: 5px;\r\n}\r\n\r\n.lotteryTitle {\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 55%;\r\n  width: 100%;\r\n  font-size: 20pt;\r\n}\r\n\r\n.lotteryFunds {\r\n  color: #333333;\r\n  z-index: 9;\r\n  position: absolute;\r\n  top: 68%;\r\n  width: 100%;\r\n  font-size: 17pt;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/settings/settings.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"header\">\r\n  <table style=\"margin-left: 20px;\">\r\n    <tr>\r\n      <td><img src=\"assets/img/logo_small.png\" alt=\"logo\"></td>\r\n      <td style=\"padding-top: 5px; color=black;\"><a routerLink=\"/privateOffice\"><h5 style=\"cursor: pointer;\"><b>SUPER</b>JACK<b>POT</b></h5></a></td>\r\n    </tr>\r\n  </table>\r\n  <p style=\"font-size: 1em; padding-top: 0px; padding-left: 20px;\">BLOCKCHAIN LOTTERY</p>\r\n</div>\r\n\r\n  <table class=\"page-content\">\r\n    <tr>\r\n      <td width=\"50px;\" style=\"padding-top: 9.8%;\">\r\n        <app-navbar-registered></app-navbar-registered>\r\n    </td>\r\n    <td class=\"banner-cell\"  align=\"center\" width=\"100%\" style=\"padding-top: 10%; padding-left: 16px; padding-right: 16px;\">\r\n      <div id=\"carouselExampleIndicators\" class=\"carousel slide\" data-ride=\"carousel\" style=\"width: 887px;\">\r\n        <!--<ol class=\"carousel-indicators\">\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"0\" class=\"active\"></li>\r\n          <li data-target=\"#carouselExampleIndicators\" data-slide-to=\"1\"></li>\r\n        </ol>-->\r\n        <div class=\"carousel-inner\">\r\n          <div class=\"carousel-item active\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_1.jpg\" alt=\"First slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>\r\n          <!--<div class=\"carousel-item\">\r\n            <img class=\"d-block w-100\" src=\"assets/img/bannermega_3.jpg\" alt=\"Second slide\">\r\n            <div class=\"carousel-caption d-none d-md-block banner-text \">\r\n              <p>{{superjackpot_value}} SJP</p>\r\n            </div>\r\n          </div>-->\r\n        </div>\r\n      </div>\r\n    </td>\r\n    <td style=\"padding-left: 6%; padding-top: 10%;\">\r\n      <app-cube></app-cube>\r\n    </td>\r\n  </tr>\r\n      <tr>\r\n        <td style=\"width: 100%; padding-right: 180px;\"></td>\r\n            <div class=\"control-group\">\r\n              <div style=\"width: 887px\">\r\n\r\n\r\n              </div>\r\n            </div>\r\n      </tr>\r\n\r\n    </table>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/settings/settings.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return SettingsComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var SettingsComponent = (function () {
    function SettingsComponent(lottery, router, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.tpService = tpService;
    }
    SettingsComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.lottery.getBank()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                console.log(res.json().data);
                _this.superjackpot_value = res.json().data.superjackpot;
            }
            else {
                console.log(res.json().message);
            }
        }, function (err) {
            console.log(err);
        });
    };
    SettingsComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    SettingsComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return SettingsComponent;
}());
SettingsComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-settings',
        template: __webpack_require__("../../../../../src/app/components/settings/settings.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/settings/settings.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], SettingsComponent);

var _a, _b, _c;
//# sourceMappingURL=settings.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/status/status.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/status/status.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"row\">\n  <div class=\"col-md-4\">\n    <h1>User Status</h1>\n    <hr><br>\n    <p>Logged In? {{isLoggedIn}}</p>\n    <p>Tocken Expired? {{tockenExpired}}</p>\n    <p>Date {{te_date}}</p>\n  </div>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/status/status.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return StatusComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var StatusComponent = (function () {
    function StatusComponent(auth) {
        this.auth = auth;
        this.isLoggedIn = false;
        this.tockenExpired = false;
    }
    StatusComponent.prototype.ngOnInit = function () {
        var _this = this;
        var token = localStorage.getItem('token');
        this.tockenExpired = this.auth.isTokenExpired();
        this.te_date = this.auth.getTokenExpirationDate(token);
        if (token) {
            console.log(token);
            this.auth.ensureAuthenticated(token)
                .then(function (user) {
                console.log(user.json());
                if (user.json().status === 'success') {
                    _this.isLoggedIn = true;
                }
            })
                .catch(function (err) {
                console.log(err);
            });
        }
    };
    return StatusComponent;
}());
StatusComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'status',
        template: __webpack_require__("../../../../../src/app/components/status/status.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/status/status.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_auth_service__["a" /* AuthService */]) === "function" && _a || Object])
], StatusComponent);

var _a;
//# sourceMappingURL=status.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/templates/cube/cube.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".cube {\r\n  width: 100px;\r\n  height: 100px;\r\n  position: absolute;\r\n  transform-origin: 50% 50% -50px;\r\n  transform-style: preserve-3d;\r\n  animation: rotation 18s cubic-bezier(0.15,1,0.15,1) infinite;\r\n}\r\n\r\n.side {\r\n  width: inherit;\r\n  height: inherit;\r\n  background: rgba(0,0,0,.3);\r\n  position: absolute;\r\n  color: #fff;\r\n  text-align: center;\r\n  font-size: 180%;\r\n  box-shadow: 0 0 8px rgba(0,0,0,.5);\r\n  transform-origin: 50% 50% -50px;\r\n  -webkit-backface-visibility: hidden;\r\n          backface-visibility: hidden;\r\n  cursor: pointer;\r\n}\r\n\r\n\r\n#side-2 {\r\n  transform: rotateY(90deg);\r\n}\r\n\r\n#side-3 {\r\n  transform: rotateY(-90deg);\r\n}\r\n\r\n#side-4 {\r\n  transform: rotateX(90deg);\r\n}\r\n\r\n#side-5 {\r\n  transform: rotateX(-90deg);\r\n}\r\n\r\n#side-6 {\r\n  transform: rotateY(180deg);\r\n}\r\n\r\n@keyframes rotation {\r\n  0% {\r\n    transform: rotateY(0);\r\n  }\r\n  25% {\r\n    transform: rotateY(90deg);\r\n  }\r\n  50% {\r\n    transform: rotateY(180deg);\r\n  }\r\n  75% {\r\n    transform: rotateY(270deg);\r\n  }\r\n  100% {\r\n    transform: rotateX(360deg);\r\n  }\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/templates/cube/cube.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"cube\">\r\n  <div class=\"side\" id=\"side-1\" (click)=\"buyTicketRedirect('jackpot_4x21', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/4_21_small.jpg\"></div>\r\n  <div class=\"side\" id=\"side-2\" (click)=\"buyTicketRedirect('jackpot_6x45', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/6_45_small.jpg\"></div>\r\n  <div class=\"side\" id=\"side-3\" (click)=\"buyTicketRedirect('jackpot_5x36', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/5_36_small.jpg\"></div>\r\n  <div class=\"side\" id=\"side-4\" (click)=\"buyTicketRedirect('rapidos', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/rapidos_small.jpg\"></div>\r\n  <div class=\"side\" id=\"side-5\" (click)=\"buyTicketRedirect('two_numbers', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/two_numbers_small.jpg\"></div>\r\n  <div class=\"side\" id=\"side-6\" (click)=\"buyTicketRedirect('prize_jackpot', 'no')\"><img style=\"width: inherit;\" src=\"assets/img/prize_jackpot_small.jpg\"></div>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/templates/cube/cube.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CubeComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var CubeComponent = (function () {
    function CubeComponent(lottery, router, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.tpService = tpService;
    }
    CubeComponent.prototype.ngOnInit = function () {
    };
    CubeComponent.prototype.buyTicketRedirect = function (type, give) {
        this.tpService.setWannaGive('no');
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    return CubeComponent;
}());
CubeComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-cube',
        template: __webpack_require__("../../../../../src/app/components/templates/cube/cube.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/templates/cube/cube.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_3__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], CubeComponent);

var _a, _b, _c;
//# sourceMappingURL=cube.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "#navbar {\r\n  /*margin-top: 20px;*/\r\n  position: fixed;\r\n  z-index: 10;\r\n}\r\n\r\na {\r\n text-decoration: none;\r\n font-weight: bold;\r\n color: black;\r\n font-size: 13pt;\r\n text-shadow: 1px 1px 8px #ffffff;\r\n /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n color: grey;\r\n}\r\n\r\na:active {\r\n color: grey;\r\n}\r\n\r\np {\r\n margin-bottom: 10px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.html":
/***/ (function(module, exports) {

module.exports = "<div id=\"navbar\">\r\n  <p><a routerLink=\"/privateOffice\" [ngStyle]=\"{'color': href === '/privateOffice' ? 'grey' : 'black' }\">Buy Ticket</a></p>\r\n  <p><a routerLink=\"/my-bets\" [ngStyle]=\"{'color': href === '/my-bets' ? 'grey' : 'black' }\">My Bets</a></p>\r\n  <p><a routerLink=\"/my-tokens\" [ngStyle]=\"{'color': href === '/my-tokens' ? 'grey' : 'black' }\">My Tokens</a></p>\r\n  <p><a routerLink=\"/my-statistics\" [ngStyle]=\"{'color': href === '/my-statistics' ? 'grey' : 'black' }\">Statistics</a></p>\r\n  <p><a routerLink=\"/settings\" [ngStyle]=\"{'color': href === '/settings' ? 'grey' : 'black' }\">Settings</a></p>\r\n  <p><a routerLink=\"/faq\" [ngStyle]=\"{'color': href === '/faq' ? 'grey' : 'black' }\">FAQ</a></p>\r\n  <p><a (click)=\"logOut()\" routerLink=\"/home\">Logout</a></p>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return NavbarRegisteredComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var NavbarRegisteredComponent = (function () {
    function NavbarRegisteredComponent(router) {
        this.router = router;
        this.url = "";
        this.href = "";
    }
    NavbarRegisteredComponent.prototype.ngOnInit = function () {
        this.href = this.router.url;
        console.log(this.href);
    };
    NavbarRegisteredComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return NavbarRegisteredComponent;
}());
NavbarRegisteredComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-navbar-registered',
        template: __webpack_require__("../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/templates/navbar-registered/navbar-registered.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object])
], NavbarRegisteredComponent);

var _a;
//# sourceMappingURL=navbar-registered.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar/navbar.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "#navbar {\r\n  /*margin-top: 20px;*/\r\n  position: fixed;\r\n  z-index: 10;\r\n}\r\n\r\na {\r\n text-decoration: none;\r\n font-weight: bold;\r\n color: black;\r\n font-size: 13pt;\r\n text-shadow: 1px 1px 8px #ffffff;\r\n /*font-family: Arial, Helvetica, sans-serif;*/\r\n}\r\n\r\na:hover {\r\n color: grey;\r\n}\r\n\r\na:active {\r\n color: grey;\r\n}\r\n\r\np {\r\n margin-bottom: 10px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar/navbar.component.html":
/***/ (function(module, exports) {

module.exports = "<div id=\"navbar\">\r\n  <p><a routerLink=\"/home\" [ngStyle]=\"{'color': href === '/home' ? 'grey' : 'black' }\">Home</a></p>\r\n  <p><a routerLink=\"/login\">Log in</a></p>\r\n  <p><a routerLink=\"/register\">Registration</a></p>\r\n  <p><a routerLink=\"/about\" [ngStyle]=\"{'color': href === '/about' ? 'grey' : 'black' }\">Rules</a></p>\r\n  <p><a routerLink=\"/public-statistics\" [ngStyle]=\"{'color': href === '/public-statistics' ? 'grey' : 'black' }\">Statistics</a></p>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/components/templates/navbar/navbar.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return NavbarComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var NavbarComponent = (function () {
    function NavbarComponent(router) {
        this.router = router;
        this.url = "";
        this.href = "";
    }
    NavbarComponent.prototype.ngOnInit = function () {
        this.href = this.router.url;
        console.log(this.href);
    };
    return NavbarComponent;
}());
NavbarComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-navbar',
        template: __webpack_require__("../../../../../src/app/components/templates/navbar/navbar.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/templates/navbar/navbar.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object])
], NavbarComponent);

var _a;
//# sourceMappingURL=navbar.component.js.map

/***/ }),

/***/ "../../../../../src/app/components/wallet/wallet.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "#walletContainer {\r\n  margin-top: 50px;\r\n}\r\n\r\ninput {\r\n  width: 150px;\r\n}\r\n\r\nbutton {\r\n  width: 150px;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/components/wallet/wallet.component.html":
/***/ (function(module, exports) {

module.exports = "<nav class=\"navbar navbar-expand-lg navbar-dark bg-dark\">\n\n    <a class=\"navbar-brand\" routerLink=\"#\">SuperJackpot</a>\n    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarColor01\" aria-controls=\"navbarColor01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n      <span class=\"navbar-toggler-icon\"></span>\n    </button>\n\n    <div class=\"collapse navbar-collapse\" id=\"navbarColor01\">\n      <ul class=\"navbar-nav mr-auto\">\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/privateOffice\">Buy Ticket!<span class=\"sr-only\">(current)</span></a>\n        </li>\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/my-bets\">My Bets</a>\n        </li>\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/my-tokens\">My Tokens</a>\n        </li>\n        <li class=\"nav-item active\">\n          <a class=\"nav-link\" routerLink=\"/wallet\">Wallet</a>\n        </li>\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/my-statistics\">Statistics</a>\n        </li>\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/settings\">Settings</a>\n        </li>\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" routerLink=\"/faq\">FAQ</a>\n        </li>\n      </ul>\n      <ul class=\"navbar-nav navbar-right\">\n        <li class=\"nav-item\">\n          <a class=\"nav-link\" (click)=\"logOut()\" routerLink=\"/home\">Logout</a>\n        </li>\n      </ul>\n    </div>\n</nav>\n\n<ngb-alert *ngIf=\"errorMessage\" type=\"danger\" (close)=\"errorMessage = null\">{{ errorMessage }}</ngb-alert>\n\n\n\n<div id=\"walletContainer\">\n  <p>BTC: {{ amount }}</p>\n  <p>ETC:  {{ (0.055 * amount).toPrecision(3) }}</p>\n  <hr>\n  <input id=\"fillUpInput\" class=\"form-control\" type=\"number\" value=\"0\" min =\"1\">\n  <br>\n  <button type=\"button\" class=\"btn btn-dark btn-lg\" (click)=\"fillUp()\">Fill Up</button>\n  <hr>\n  <input id=\"withdrawInput\" class=\"form-control\" type=\"number\" value=\"0\" min =\"1\">\n  <br>\n  <button type=\"button\" class=\"btn btn-dark btn-lg\"  (click)=\"withdraw()\">Withdraw</button>\n</div>\n"

/***/ }),

/***/ "../../../../../src/app/components/wallet/wallet.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WalletComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__ = __webpack_require__("../../../../../src/app/services/lottery.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__ = __webpack_require__("../../../../rxjs/Subject.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__ = __webpack_require__("../../../../rxjs/operator/debounceTime.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__ = __webpack_require__("../../../../../src/app/services/tickets-purchase.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var WalletComponent = (function () {
    function WalletComponent(lottery, router, tpService) {
        this.lottery = lottery;
        this.router = router;
        this.tpService = tpService;
        this.amount = 0;
        this._alert = new __WEBPACK_IMPORTED_MODULE_2_rxjs_Subject__["Subject"]();
        this.staticAlertClosed = false;
    }
    WalletComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.getAmount();
        setTimeout(function () { return _this.staticAlertClosed = true; }, 20000);
        this._alert.subscribe(function (message) { return _this.errorMessage = message; });
        __WEBPACK_IMPORTED_MODULE_3_rxjs_operator_debounceTime__["debounceTime"].call(this._alert, 5000).subscribe(function () { return _this.errorMessage = null; });
    };
    WalletComponent.prototype.alertMessage = function (message) {
        this._alert.next(message);
    };
    WalletComponent.prototype.getAmount = function () {
        var _this = this;
        this.lottery.getWalletAmount()
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
                _this.amount = res.json().data.amount;
            }
        });
    };
    WalletComponent.prototype.fillUp = function () {
        var amount = document.getElementById("fillUpInput");
        this.lottery.fillUpWallet(+amount.value);
        this.getAmount();
        amount.value = "0";
    };
    WalletComponent.prototype.withdraw = function () {
        var _this = this;
        var amount = document.getElementById("withdrawInput");
        this.lottery.withdrawWallet(+amount.value)
            .then(function (res) {
            console.log(res.json());
            if (res.json().status === 'success') {
            }
            else if (res.json().status === 'fail') {
                _this.alertMessage(res.json().message);
            }
        });
        this.getAmount();
        console.log(amount.value);
        amount.value = "0";
    };
    WalletComponent.prototype.buyTicketRedirect = function (type) {
        this.tpService.setLotteryType(type);
        this.router.navigateByUrl('/buy-ticket');
    };
    WalletComponent.prototype.logOut = function () {
        localStorage.removeItem('token');
        localStorage.removeItem('WANNA_BUY');
    };
    return WalletComponent;
}());
WalletComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-wallet',
        template: __webpack_require__("../../../../../src/app/components/wallet/wallet.component.html"),
        styles: [__webpack_require__("../../../../../src/app/components/wallet/wallet.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services_lottery_service__["a" /* LotteryService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_4__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__angular_router__["a" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__services_tickets_purchase_service__["a" /* TicketsPurchaseService */]) === "function" && _c || Object])
], WalletComponent);

var _a, _b, _c;
//# sourceMappingURL=wallet.component.js.map

/***/ }),

/***/ "../../../../../src/app/models/combination-update.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return CombinationUpdate; });
var CombinationUpdate = (function () {
    function CombinationUpdate(id, type, combination) {
        this.id = id;
        this.type = type;
        this.combination = combination;
    }
    return CombinationUpdate;
}());

//# sourceMappingURL=combination-update.js.map

/***/ }),

/***/ "../../../../../src/app/models/make-bets.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return MakeBets; });
var MakeBets = (function () {
    function MakeBets(l_5x36, l_4x20, l_6x45, l_7x49, j_5x36, j_4x20, j_6x45, j_7x49) {
        this.l_5x36 = l_5x36;
        this.l_4x20 = l_4x20;
        this.l_6x45 = l_6x45;
        this.l_7x49 = l_7x49;
        this.j_5x36 = j_5x36;
        this.j_4x20 = j_4x20;
        this.j_6x45 = j_6x45;
        this.j_7x49 = j_7x49;
    }
    return MakeBets;
}());

//# sourceMappingURL=make-bets.js.map

/***/ }),

/***/ "../../../../../src/app/models/user.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return User; });
var User = (function () {
    function User(email, password) {
    }
    return User;
}());

//# sourceMappingURL=user.js.map

/***/ }),

/***/ "../../../../../src/app/services/auth-guard.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthGuard; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AuthGuard = (function () {
    function AuthGuard(router, authService) {
        this.router = router;
        this.authService = authService;
    }
    AuthGuard.prototype.canActivate = function () {
        var token = localStorage.getItem('token');
        if (!this.authService.isTokenExpired(token)) {
            return true;
        }
        this.router.navigate(['/login']);
        return false;
    };
    return AuthGuard;
}());
AuthGuard = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */]) === "function" && _b || Object])
], AuthGuard);

var _a, _b;
//# sourceMappingURL=auth-guard.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/auth.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export TOKEN_NAME */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_add_operator_toPromise__ = __webpack_require__("../../../../rxjs/add/operator/toPromise.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_add_operator_toPromise___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_add_operator_toPromise__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_jwt_decode__ = __webpack_require__("../../../../jwt-decode/lib/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_jwt_decode___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_jwt_decode__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__config_service__ = __webpack_require__("../../../../../src/app/services/config.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var TOKEN_NAME = 'token';
var AuthService = (function () {
    function AuthService(http, configService) {
        this.http = http;
        this.configService = configService;
        //private BASE_URL: string = 'http://178.63.57.162:5000/auth';
        //private BASE_URL: string = 'http://5.178.87.76:5000/auth';
        this.headers = new __WEBPACK_IMPORTED_MODULE_1__angular_http__["a" /* Headers */]({ 'Content-Type': 'application/json' });
    }
    AuthService.prototype.getBaseUrl = function () {
        return this.configService.getSavedServerPath() + "/auth";
    };
    AuthService.prototype.getToken = function () {
        return localStorage.getItem(TOKEN_NAME);
    };
    AuthService.prototype.setToken = function (token) {
        localStorage.setItem(TOKEN_NAME, token);
    };
    AuthService.prototype.getTokenExpirationDate = function (token) {
        var decoded = __WEBPACK_IMPORTED_MODULE_3_jwt_decode__(token);
        if (decoded.exp === undefined)
            return null;
        var date = new Date(0);
        date.setUTCSeconds(decoded.exp);
        return date;
    };
    AuthService.prototype.isTokenExpired = function (token) {
        if (!token)
            token = this.getToken();
        if (!token)
            return true;
        var date = this.getTokenExpirationDate(token);
        if (date === undefined)
            return false;
        return !(date.valueOf() > new Date().valueOf());
    };
    AuthService.prototype.login = function (user) {
        //let url: string = `${this.BASE_URL}/login`;
        var url = this.getBaseUrl() + "/login";
        return this.http.post(url, user, { headers: this.headers }).toPromise();
    };
    AuthService.prototype.register = function (user) {
        //let url: string = `${this.BASE_URL}/register`;
        var url = this.getBaseUrl() + "/register";
        return this.http.post(url, user, { headers: this.headers }).toPromise();
    };
    AuthService.prototype.ensureAuthenticated = function (token) {
        //let url: string = `${this.BASE_URL}/status`;
        var url = this.getBaseUrl() + "/status";
        var headers = new __WEBPACK_IMPORTED_MODULE_1__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    AuthService.prototype.logout = function (user) {
        //let url: string = `${this.BASE_URL}/logout`;
        var url = this.getBaseUrl() + "/logout";
        return this.http.post(url, user, { headers: this.headers }).toPromise();
    };
    return AuthService;
}());
AuthService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_4__config_service__["a" /* ConfigService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__config_service__["a" /* ConfigService */]) === "function" && _b || Object])
], AuthService);

var _a, _b;
//# sourceMappingURL=auth.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/config.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ConfigService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var ConfigService = (function () {
    function ConfigService(http) {
        this.http = http;
        this.configUrl = "assets/config.json";
    }
    ConfigService.prototype.getJSON = function () {
        return this.http.get(this.configUrl).toPromise();
    };
    ConfigService.prototype.getSavedServerPath = function () {
        return localStorage.getItem('server_path');
    };
    return ConfigService;
}());
ConfigService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */]) === "function" && _a || Object])
], ConfigService);

var _a;
//# sourceMappingURL=config.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/ensure-authenticated.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return EnsureAuthenticated; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var EnsureAuthenticated = (function () {
    function EnsureAuthenticated(auth, router) {
        this.auth = auth;
        this.router = router;
    }
    EnsureAuthenticated.prototype.canActivate = function () {
        if (localStorage.getItem('token')) {
            return true;
        }
        else {
            this.router.navigateByUrl('/login');
            return false;
        }
    };
    return EnsureAuthenticated;
}());
EnsureAuthenticated = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _b || Object])
], EnsureAuthenticated);

var _a, _b;
//# sourceMappingURL=ensure-authenticated.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/login-redirect.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginRedirect; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var LoginRedirect = (function () {
    function LoginRedirect(auth, router) {
        this.auth = auth;
        this.router = router;
    }
    LoginRedirect.prototype.canActivate = function () {
        //if (localStorage.getItem('token')) {
        if (!this.auth.isTokenExpired()) {
            this.router.navigateByUrl('/privateOffice');
            //this.router.navigateByUrl('/privateOffice');
            return false;
        }
        else {
            return true;
        }
    };
    return LoginRedirect;
}());
LoginRedirect = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__auth_service__["a" /* AuthService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* Router */]) === "function" && _b || Object])
], LoginRedirect);

var _a, _b;
//# sourceMappingURL=login-redirect.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/lottery.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LotteryService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__auth_service__ = __webpack_require__("../../../../../src/app/services/auth.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__config_service__ = __webpack_require__("../../../../../src/app/services/config.service.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var LotteryService = (function () {
    function LotteryService(auth, http, configService) {
        this.auth = auth;
        this.http = http;
        this.configService = configService;
    }
    //private BASE_URL: string = 'http://178.63.57.162:5000/logic';
    //private BASE_URL: string = 'http://5.178.87.76:5000/logic';
    //private headers: Headers = new Headers({'Content-Type': 'application/json'});
    LotteryService.prototype.getBaseUrl = function () {
        //return this.BASE_URL + "/logic";
        return this.configService.getSavedServerPath() + "/logic";
    };
    LotteryService.prototype.getTokensAmount = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/tokens_amount`;
        var url = this.getBaseUrl() + "/tokens_amount";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.getWalletAmount = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/wallet_amount`;
        var url = this.getBaseUrl() + "/wallet_amount";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.makeBets = function (bets) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/make_bets`;
        var url = this.getBaseUrl() + "/make_bets";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, bets, { headers: headers }).toPromise();
    };
    LotteryService.prototype.getBets = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/get_bets`;
        var url = this.getBaseUrl() + "/get_bets";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.getBetsArchive = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/get_bets_archive`;
        var url = this.getBaseUrl() + "/get_bets_archive";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.updateCombination = function (combinationUpdate) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/update_combination`;
        var url = this.getBaseUrl() + "/update_combination";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, combinationUpdate, { headers: headers }).toPromise();
    };
    LotteryService.prototype.fillUpWallet = function (amount) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/fill_up_wallet`;
        var url = this.getBaseUrl() + "/fill_up_wallet";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { amount: amount }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.withdrawWallet = function (amount) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/withdraw_wallet`;
        var url = this.getBaseUrl() + "/withdraw_wallet";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { amount: amount }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.fillUpTokens = function (quantity) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/fill_up_tokens`;
        var url = this.getBaseUrl() + "/fill_up_tokens";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { quantity: quantity }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.getSuperjackpot = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/get_superjackpot`;
        var url = this.getBaseUrl() + "/get_superjackpot";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.getBank = function () {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/get_bank`;
        var url = this.getBaseUrl() + "/get_bank";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.get(url, { headers: headers }).toPromise();
    };
    LotteryService.prototype.buyTickets = function (ticket) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/buy_tickets`;
        var url = this.getBaseUrl() + "/buy_tickets";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, ticket, { headers: headers }).toPromise();
    };
    LotteryService.prototype.giveTickets = function (ticket) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/give_tickets`;
        var url = this.getBaseUrl() + "/give_tickets";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, ticket, { headers: headers }).toPromise();
    };
    LotteryService.prototype.scratchNow = function (type, tickets) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/scratch_now`;
        var url = this.getBaseUrl() + "/scratch_now";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { type: type, tickets: tickets }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.buyScratch = function (type, tickets) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/buy_scratch`;
        var url = this.getBaseUrl() + "/buy_scratch";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { type: type, tickets: tickets }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.giveScratch = function (type, tickets, email) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/give_scratch`;
        var url = this.getBaseUrl() + "/give_scratch";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { type: type, tickets: tickets, email: email }, { headers: headers }).toPromise();
    };
    LotteryService.prototype.updateScratch = function (id, type) {
        var token = this.auth.getToken();
        //let url: string = `${this.BASE_URL}/update_scratch`;
        var url = this.getBaseUrl() + "/update_scratch";
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            Authorization: "Bearer " + token
        });
        return this.http.post(url, { id: id, type: type }, { headers: headers }).toPromise();
    };
    return LotteryService;
}());
LotteryService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__auth_service__["a" /* AuthService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__auth_service__["a" /* AuthService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_http__["b" /* Http */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_3__config_service__["a" /* ConfigService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__config_service__["a" /* ConfigService */]) === "function" && _c || Object])
], LotteryService);

var _a, _b, _c;
//# sourceMappingURL=lottery.service.js.map

/***/ }),

/***/ "../../../../../src/app/services/tickets-purchase.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* unused harmony export LOTTERY_TYPE */
/* unused harmony export WANNA_GIVE */
/* unused harmony export NEW_BETS */
/* unused harmony export SCRATCH_TYPE */
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return TicketsPurchaseService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var LOTTERY_TYPE = "WANNA_BUY";
var WANNA_GIVE = "WANNA_GIVE";
var NEW_BETS = "NEW_BETS";
var SCRATCH_TYPE = "SCRATCH_TYPE";
var TicketsPurchaseService = (function () {
    function TicketsPurchaseService() {
    }
    TicketsPurchaseService.prototype.setLotteryType = function (type) {
        localStorage.setItem(LOTTERY_TYPE, type);
    };
    TicketsPurchaseService.prototype.getLotteryType = function () {
        return localStorage.getItem(LOTTERY_TYPE);
    };
    TicketsPurchaseService.prototype.setScratchType = function (type) {
        localStorage.setItem(SCRATCH_TYPE, type);
    };
    TicketsPurchaseService.prototype.getScratchType = function () {
        return localStorage.getItem(SCRATCH_TYPE);
    };
    TicketsPurchaseService.prototype.getWannaGive = function () {
        return localStorage.getItem(WANNA_GIVE);
    };
    TicketsPurchaseService.prototype.setWannaGive = function (give) {
        localStorage.setItem(WANNA_GIVE, give);
    };
    TicketsPurchaseService.prototype.setNewBets = function (newBets) {
        localStorage.setItem(NEW_BETS, JSON.stringify(newBets));
    };
    TicketsPurchaseService.prototype.getNewBets = function () {
        return localStorage.getItem(NEW_BETS);
    };
    TicketsPurchaseService.prototype.removeNewBets = function () {
        localStorage.removeItem(NEW_BETS);
    };
    return TicketsPurchaseService;
}());
TicketsPurchaseService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [])
], TicketsPurchaseService);

//# sourceMappingURL=tickets-purchase.service.js.map

/***/ }),

/***/ "../../../../../src/environments/environment.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return environment; });
// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.
// The file contents for the current environment will overwrite these during build.
var environment = {
    production: false
};
//# sourceMappingURL=environment.js.map

/***/ }),

/***/ "../../../../../src/main.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__ = __webpack_require__("../../../platform-browser-dynamic/@angular/platform-browser-dynamic.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__app_app_module__ = __webpack_require__("../../../../../src/app/app.module.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__environments_environment__ = __webpack_require__("../../../../../src/environments/environment.ts");




if (__WEBPACK_IMPORTED_MODULE_3__environments_environment__["a" /* environment */].production) {
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["_23" /* enableProdMode */])();
}
Object(__WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__["a" /* platformBrowserDynamic */])().bootstrapModule(__WEBPACK_IMPORTED_MODULE_2__app_app_module__["a" /* AppModule */]);
//# sourceMappingURL=main.js.map

/***/ }),

/***/ 0:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__("../../../../../src/main.ts");


/***/ })

},[0]);
//# sourceMappingURL=main.bundle.js.map