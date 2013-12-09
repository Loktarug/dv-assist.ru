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
                    <h1>Активация Карты:</h1>

                    <form action="index.php?type=form&action=activate-card&step=finish" method="POST" name="activate-card" id="activate-card">
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
                                <td class="label">Фамилия*</td>
                                <td>
                                    <input type="text" id="SecondName" name="SecondName" class="validate[required,custom[onlyLetterSp]]"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">Имя*</td>
                                <td>
                                    <input type="text" id="FirstName" name="FirstName" class="validate[required,custom[onlyLetterSp]]"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">Отчество*</td>
                                <td>
                                    <input type="text" id="Patronymic" name="Patronymic" class="validate[required,custom[onlyLetterSp]]"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">Марка ТС*</td>
                                <td><input type="text" id="MarkVehicle" name="MarkVehicle" class="validate[required]"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">Модель ТС*</td>
                                <td>
                                    <input type="text" id="ModelVehicle" name="ModelVehicle" class="validate[required]]"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">Гос номер*</td>
                                <td><input type="text" id="CarNumber" name="CarNumber" class="validate[required]"/></td>
                            </tr>
                            <tr>
                                <td class="label">Телефон*</td>
                                <td><input type="text" id="PhoneNumber" name="PhoneNumber" class="validate[required]"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input class="button btn_arrow right"  type="submit" name="go" value="Активировать">



                                    {* <a class="button btn_arrow" style="float:right;" onclick="document.forms[0].submit();">Активировать</a> *}

                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </td>
        </tr>
    </table>
</div>
{include file="footer.tpl"}
<script type="text/javascript">
    jQuery(function($){
        $("#PhoneNumber").mask("+9(999)999-9999");
    });
    jQuery(function($){
        $.mask.definitions['l'] = "[ABCEHKMOPTXYАВСЕНКМОРТХУabcehkmoptxyавсенкмортху]";
        $("#CarNumber").mask("l999ll99?9");
    });
</script>
<script>
$(document).ready(function(){
    $("#activate-card").validationEngine();
   });
</script>
</body>
</html>