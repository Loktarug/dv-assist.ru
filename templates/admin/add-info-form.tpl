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
                    <h1>Добавить информацию</h1>
                    <form action="/admin/index.php?type=form&action=add-info&step=finish" method="POST">
                        <div>№ карты: {$card.CardNumber}<input type="hidden" name="idCard" value="{$idCard}"/></div>
                        <div>Действие:
                            <select name="idAction">
                            {foreach from=$actions item=action}
                                <option value="{$action.IdAction}">{$action.ActionName}</option>
                            {/foreach}
                            </select></div>
                        <div>Дата: <input type="text" name="actionCommitted" id="dataPicker"/></div>
                        <div>Ложный вызов:<input type="checkbox" name="mockCall"/></div>
                        {* <div>Действительно С <input type="text" id="date-valid-from" name="dateValidFrom"/></div>
                        <div>Действительно ПО <input type="text" id="date-valid-until" name="dateValidUntil"/></div> *}
                        <input type="submit" name="Добавить"/>
                    </form>
                </div>
            </td>
        </tr>


    </table>
</div>
<script type="text/javascript">
    $("#dataPicker").datepicker();
    $("#dataPicker").datepicker("option", "dateFormat", "yy-mm-dd");
</script>
{include file="footer.tpl"}
</body>
</html>