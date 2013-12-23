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
                    <form action="/admin/index.php?type=form&action=add-service&step=finish" method="POST">
                        <div>Наименование:<input type="text" name="ServiceName"/></div>
                        <div>Телефон:<input type="text" name="ServicePhone"/></div>
                        <div>Адрес:<input type="text" name="ServiceAddress"/></div>
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