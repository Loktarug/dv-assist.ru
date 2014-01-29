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
                <!-- content start -->

                <table width="100%" class="main_icons">
                    <tr>
                        <td align="center">
                            <a href="index.php?type=page&action=evacuation"><img src="images/icons/evacuator.jpg" width="160" height="110" border="0"/><br><span>Эвакуатор</span></a>
                        </td>
                        <td align="center">
                            <a href="index.php?type=page&action=collection-of-certificates"><img src="images/icons/docs.jpg" width="160" height="110" border="0"/><br><span>Сбор справок ГИБДД</span></a>
                        </td>
                        <td align="center">
                            <a href="index.php?type=page&action=activate-card"><img src="images/icons/power.jpg" width="160" height="110" border="0"/><br><span>Активировать карту</span></a>
                        </td>
                        <td align="center">
                            <a href="index.php?type=form&action=check-card"><img src="images/icons/zoom.jpg" width="160" height="110" border="0"/><br><span>Проверить карту</span></a>
                        </td>
                    </tr>
                </table>

                <div class="gray_line">Скидки от 30 коп. за литр топлива по карте в сети АЗС топливной компании ЕКА</div>
                <div class="orange_line" style="position:relative;">
                ВЫПЛАТА ПО ОСАГО В ТЕЧЕНИЕ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ДНЕЙ
                <a href="index.php?type=page&amp;action=osago-5-days" class="button btn_arrow" style="float:right;margin-top:5px;">подробнее</a>
                <img src="images/calendar_small.png" width="130" height="113" align="Календарь" style="position:absolute;top:-35px;right:320px;" />
                </div>

                <!-- content end -->
            </td>
        </tr>
    </table>
</div>
    {include file="footer.tpl"}
</body>
</html>