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

                <a href="index.php?type=comparison&action=cards-comparison" class="button btn_arrow" style="float:right;margin:20px;margin-right:45px;">подробнее</a>

                <!-- content end -->
            </td>
        </tr>
    </table>
</div>
    {include file="footer.tpl"}
</body>
</html>


