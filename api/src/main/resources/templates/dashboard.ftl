<!doctype html>
<html lang="en">
<head>
<#include "components/analitics.ftl">
<#include "components/meta.ftl">
<#include "components/bootstrapcss.ftl">
    <title>Libris, welcome.</title>
    <link href="/css/dashboard.css" rel="stylesheet">
</head>

<body>
<#include "components/navigationBar.ftl">

<main role="main" class="container">

    <div class="starter-template">
        <h1>Welcome to libris.</h1>
        <p class="lead">Manage your library.</p>
        <p class="lead">
            <a class="btn btn-lg btn-primary" href="/book/add" role="button">Add Book. »</a>
        </p>
    </div>

    <div class="row">
    <#if books?has_content>
        <table class="table table-hover">
            <thead>
            <tr class="row">
                <th scope="col" class="col-1"></th>
                <th scope="col" class="col-3">Title</th>
                <th scope="col" class="col-3">Authors</th>
                <th scope="col" class="col-2">Publisher</th>
                <th scope="col" class="col-1">Published Date</th>
                <th scope="col" class="col-2">Actions</th>
            </tr>
            </thead>
            <tbody>
                <#list books as book>
                <tr class="row">
                    <td class="col-1"><img src="${(book.thumbnail)!"#"}" class="dashboard-list-img"></td>
                    <td class="col-3">${(book.title)!"Not defined."}</td>
                    <td class="col-3">${(book.authors)!"Not defined."}</td>
                    <td class="col-2">${(book.publisher)!"Not defined."}</td>
                    <td class="col-1">${(book.publishedDate)!"Not defined."}</td>
                    <td class="col-2">(${book.uniqueId})</td>
                </tr>
                </#list >
            </tbody>
        </table>
    </#if>
    </div>
</main>

<#include "components/bootstrapjs.ftl">

</body>
</html>
