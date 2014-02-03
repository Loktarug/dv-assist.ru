{* Smarty *}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
{include file="head.tpl"}
<body>
<script type="text/javascript">
    function getCardsList(){
        var cardNumber = '';
        if ($('#cardNumber').val() != undefined){
            cardNumber = $('#cardNumber').val();
        }
        $.getJSON("ajax/get.php?data=cards&cardNumber=" + cardNumber, function (data) {
            var items = '<tr>' +
                            '<td>Номер Карты</td>' +
                            '<td>Регион</td>' +
                            '<td>Тип карты</td>' +
                            '<td>Фамилия</td>' +
                            '<td>Имя</td>' +
                            '<td>Агент</td>' +
                            '<td>Добавить информацию</td>' +
                        '</tr>';
            $.each(data, function (key, val) {
                items += "<tr>" +
                            "<td><a href=\"index.php?type=form&action=edit-card&id-card=" + key + "\">" + val.CardNumber + "</a></td>" +
                            "<td>" + val.IdRegion + "</td>" +
                            "<td>" + val.CardTypeName + "</td>" +
                            "<td>" + val.SecondName + "</td>" +
                            "<td>" + val.FirstName + "</td>" +
                            "<td>" + val.AgentName + "</td>" +
                            "<td><a href=\"index.php?type=form&action=add-info&id-card=" + key + "\">+</a></td>" +
                        "</tr>";
            });

            $("#cards-list").empty();
            $(items).appendTo("#cards-list");
        });
    }

    getCardsList();

</script>
<div class="top_bg">
    <table class="main" cellpadding="0" cellspacing="0" border="0">
    {include file="header.tpl"}
        <tr>
            <td valign="top" colspan="2" class="content">
                <div>
                    Номер карты: <input type="text" id="cardNumber" name="cardNumber" onkeyup="getCardsList()">
                </div>
                <table id="cards-list" border="1">

                </table>
            </td>
        </tr>


    </table>
</div>
{include file="footer.tpl"}
</body>
</html>