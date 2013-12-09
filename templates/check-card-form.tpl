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
                <h1>Проверить карту:</h1>
                <form action="index.php?type=form&action=check-card&step=finish" method="POST" id="check-card">
                    <table cellpadding="4" cellspacing="4" border="0" class="table_form">
                        <tr>
                            <td class="label">Номер карты*</td>
                            <td>
                                <input type="text" id="CardNumber" name="CardNumber" class="validate[required,custom[onlyNumberSp]]"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">Код подтверждения*</td>
                            <td>
                                <input type="text" id="CheckCode" name="CheckCode" class="validate[required,custom[onlyNumberSp]]"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right">
                                <input class="button btn_arrow right" type="submit" name="go" value="Проверить">
                                {* <a class="button btn_arrow" style="float:right;" onclick="document.forms[0].submit();">Проверить</a> *}
                            </td>
                        </tr>
                    </table>
                </form>
            </td>
        </tr>
    </table>
</div>
<script>
$(document).ready(function(){
    $("#check-card").validationEngine();
   });
</script>
{include file="footer.tpl"}
</body>
</html>