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
                    <h1>Ввести карты</h1>
                    <form action="/admin/index.php?type=form&action=add-cards&step=finish" method="POST">
                        <div>№ карты С:<input type="text" name="cardsNumberFrom"/></div>
                        <div>№ карты ПО:<input type="text" name="cardsNumberUntil"/></div>
                        <div>Регион:
                            <select name="idRegion">
                            {foreach from=$regions item=region}
                                <option value="{$region.Id}">{$region.Name}</option>
                            {/foreach}
                            </select></div>
                        <div>Тип Карты:
                            <select name="cardType">
                            {foreach from=$cardTypes item=cardType}
                                <option value="{$cardType.Id}">{$cardType.Name}</option>
                            {/foreach}
                            </select></div>
                        {* <div>Действительно С <input type="text" id="date-valid-from" name="dateValidFrom"/></div>
                        <div>Действительно ПО <input type="text" id="date-valid-until" name="dateValidUntil"/></div> *}
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