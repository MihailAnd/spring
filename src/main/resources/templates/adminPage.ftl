<#import "parts/common.ftl" as c>
<@c.page>

<div class="form-row">
    <div class="form-group col-md-6">
        <form method="get" action="/adminPage" class="form-inline">
            <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Поиск по указанной проблеме">
            <button type="submit" class="btn btn-primary ml-2">Поиск</button>
        </form>
    </div>
</div>

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
        </#if>
            <div class="m-2">

                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                <span>${message.text}</span>
                <span> ${message.authorName}</span>
                <span> ${message.data?string("dd.MM.yyyy HH:mm:ss")}</span>

            </div>
        </div>
    <#else>
    Нет заявок
    </#list>
</div>
</@c.page>