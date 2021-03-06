"use strict";
var assert = require("power-assert");
var sinon = require("sinon");
var xhr = require("../src/multiple-xhr-callback");
describe("multiple-xhr-callback", function () {
    before(function () {
        sinon.stub(xhr.request, "comment", function (callback) {
            callback(null, 1);
        });
        sinon.stub(xhr.request, "people", function (callback) {
            callback(null, 2);
        })
    });
    after(function (done) {
        xhr.request.comment.restore();
        done();
    });
    it("should passing result of request callback", function (done) {
        xhr.main(function (error, value) {
            assert.deepEqual(value, [1, 2]);
            done();
        });
    });
});

