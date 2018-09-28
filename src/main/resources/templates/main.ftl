<#import "parts/common.ftl" as c>

<@c.page>


<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Добавить заявку
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="text" placeholder="Введите сообщение" />
            </div>
            <div class="form-group">
                <label for="exampleFormControlSelect1">Выбырите тип проблемы</label>
                <select class="form-control"
                        value="<#if message??>${message.tag}</#if>"
                        name="tag" id="exampleFormControlSelect1">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
                <#if tagError??>
                    <div class="invalid-feedback">
                        ${tagError}
                    </div>
                </#if>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Выберите фаил</label>
                </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Отправить заявку</button>
            </div>
        </form>


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