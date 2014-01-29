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
                    <h1>Проверка карты</h1>
                    <div class="otstup_left">
                    	<ul class="icons_ul">
                        	<li class="icon_card"><b>Номер карты:</b> {$data.card.CardNumber}</li>
                        	<li class="icon_status"><b>Статус карты:</b> <span class="color_{$data.card.IdStatus}">{$data.card.StatusName}</span></li>
                        	<li class="icon_auto"><b>Марка авто:</b> {$data.card.MarkVehicle}</li>
                        	<li class="icon_model"><b>Модель авто:</b> {$data.card.ModelVehicle}</li>
                        	<li class="icon_gos"><b>Гос номер:</b> {$data.card.CarNumber}</li>
                        	<li class="icon_clock_1"><b>Действительно с:</b> {$data.card.ValidFrom}</li>
                        	<li class="icon_clock_2"><b>Действительно по:</b> {$data.card.ValidUntil}</li>
						</ul>
                        <h2>Информация по карте:<h2>
                        <table class="information_tbl" cellpadding="6" cellspacing="0" border="0">
                          <tr>
                            <th scope="col">Информация</th>
                            <th scope="col">Когда</th>
                          </tr>
                        {foreach from=$data.information item=v}
                          <tr>
                            <td>{$v.ActionName}</td>
                            <td align="center" width="200">{$v.ActionCommitted}</td>
                          </tr>
                        {/foreach}
                        </table>
                    </div>
            </td>
        </tr>
    </table>
</div>
{include file="footer.tpl"}
</body>
</html>