<!doctype html>
<html lang="en">
<head>
<#include "components/analitics.ftl">
<#include "components/meta.ftl">
<#include "components/bootstrapcss.ftl">
    <title>Libris, sign in.</title>
    <link href="/css/signinup.css" rel="stylesheet">
</head>

<body>

<main role="main" class="container">

    <div class="row">
        <div class="signInUpDescription col-12">
            Sign in to Libris.
        </div>
    </div>

    <div class="row">
        <form class="col-6 offset-3" action="/login" method="post">
            <div class="login-result-info">
            <#if RequestParameters.error??>
                <div class="error">Invalid username or password.</div>
            </#if>

            <#if RequestParameters.logout??>
                <div>You have been logged out.</div>
            </#if>
            </div>
            <div class="form-group">
                <label for="inputEmail">Email address</label>
                <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp"
                       placeholder="Enter email" name="username">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.
                </small>
            </div>
            <div class="form-group">
                <label for="inputPassword">Password</label>
                <input type="password" class="form-control" id="inputPassword" placeholder="Password"
                       name="password">
            </div>
            <div class="form-check">
                <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" disabled="disabled">
                    Remember me
                </label>
            </div>

            <div class="form-group" style="padding-bottom: 10px">
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary col-12 action-button">Sign In</button>
                <a id="facebook" class="btn col-12 action-button" href="${facebookLoginUrl}">Sign In with Facebook</a>
            </div>
        </form>
    </div>

</main>
<#include "components/bootstrapjs.ftl">

</body>
</html>
