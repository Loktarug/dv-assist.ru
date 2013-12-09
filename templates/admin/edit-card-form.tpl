{* Smarty *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{include file="head.tpl"}
<body>
{* <script>
    $(function () {
        $("#ValidFrom").datepicker($.datepicker.regional[ "ru" ]);
        $("#locale").change(function () {
            $("#ValidFrom").datepicker("option",
                    $.datepicker.regional[ $(this).val() ]);
        });
        $("#ValidFrom").datepicker("option", "dateFormat", "yy-mm-dd" );
    });
</script>

<script>
    $(function () {
        $("#ValidUntil").datepicker($.datepicker.regional[ "ru" ]);
        $("#locale").change(function () {
            $("#ValidUntil").datepicker("option",
                    $.datepicker.regional[ $(this).val() ]);
        });
        $("#ValidUntil").datepicker("option", "dateFormat", "yy-mm-dd" );
    });
</script> *}
<div class="top_bg">
    <table class="main" cellpadding="0" cellspacing="0" border="0">
    {include file="header.tpl"}
        <tr>
            <td valign="top" colspan="2" class="content">
                <div>
                    <form action="index.php?type=form&action=edit-card&step=finish" method="POST">
                        <input type="hidden" name="IdCard" id="IdCard" value="{$idCard}" readonly="readonly">
                        <table cellpadding="4" cellspacing="4" border="0" class="table_form">
                            <tr>
                                <td class="label">Номер пользователя</td>
                                <td><input type="text" name="IdUser" id="IdUser" value="{$card.IdUser}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Номер карты</td>
                                <td><input type="text" name="CardNumber" id="CardNumber" value="{$card.CardNumber}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Марка ТС</td>
                                <td><input type="text" name="MarkVehicle" id="MarkVehicle" value="{$card.MarkVehicle}"></td>
                            </tr>
                            <tr>
                                <td class="label">Модель ТС</td>
                                <td><input type="text" name="ModelVehicle" id="ModelVehicle" value="{$card.ModelVehicle}"></td>
                            </tr>
                            <tr>
                                <td class="label">Гос Номер</td>
                                <td><input type="text" name="CarNumber" id="CarNumber" value="{$card.CarNumber}"></td>
                            </tr>
                            <tr>
                                <td class="label">Статус</td>
                                <td><input type="text" name="IdStatus" id="IdStatus" value="{$card.IdStatus}"></td>
                            </tr>
                            <tr>
                                <td class="label">Действует с</td>
                                <td><input type="text" name="ValidFrom" id="ValidFrom" value="{$card.ValidFrom}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Действует по</td>
                                <td><input type="text" name="ValidUntil" id="ValidUntil" value="{$card.ValidUntil}" readonly="readonly"></td>
                            </tr>
                            {*<hr>*}
                            <tr>
                                <td class="label">Имя пользователя</td>
                                <td><input type="text" name="FirstName" id="FirstName" value="{$card.FirstName}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Фамилия</td>
                                <td><input type="text" name="SecondName" id="SecondName" value="{$card.SecondName}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Отчество</td>
                                <td><input type="text" name="Patronymic" id="Patronymic" value="{$card.Patronymic}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td class="label">Телефонный номер</td>
                                <td><input type="text" name="PhoneNumber" id="PhoneNumber" value="{$card.PhoneNumber}" readonly="readonly"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right"><a class="button btn_arrow" style="float:right;" onclick="document.forms[0].submit();">Обновить</a></td>
                            </tr>
                        </table>


                    </form>
                </div>
            </td>
        </tr>


    </table>
</div>
{include file="footer.tpl"}
</body>
</html>