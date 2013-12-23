{* Smarty *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{include file="head.tpl"}
<body>
<div class="top_bg">
    <table class="main" cellpadding="0" cellspacing="0" border="0">
    {include file="header.tpl"}
        <tr>
            <td valign="top" colspan="2" class="content">
                <div>
                <h1>Добавить сервис</h1>
                    <form action="/admin/index.php?type=form&action=assign-service&step=finish" method="POST">
                        <div>Агент:
                            <select name="IdAgent">
                            {foreach from=$agents item=agent}
                                <option value="{$agent.Id}">{$agent.Name}</option>
                            {/foreach}
                            </select>
                        </div>
                        <div>Сервис:
                            <select name="IdService">
                            {foreach from=$services item=service}
                                <option value="{$service.Id}">{$service.Name}</option>
                            {/foreach}
                            </select>
                        </div>
                        <input type="submit" name="Добавить"/>
                    </form>
                </div>
            </td>
        </tr>


    </table>
</div>
{include file="footer.tpl"}
</body>
</html>