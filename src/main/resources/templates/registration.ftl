<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <button type="submit" class="btn btn-primary">Добавить пользователя</button>
</div>
    ${message?if_exists}
<@l.login "/registration" true />
</@c.page>