<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 30.11.13
 * Time: 0:07
 */

require_once('../libs/Smarty.class.php');
require_once('dbOperations.php');
require_once('functions.php');

$smarty = new Smarty();

$smarty->template_dir = '../../templates/admin/';
$smarty->compile_dir = '../../templates_c/admin/';
$smarty->config_dir = '../../configs/admin/';
$smarty->cache_dir = '../../cache/admin/';

$smarty->caching = false;

if (!$_GET['action'])
{
    $smarty->display('index.tpl');
}
else
{
    switch ($_GET['type'])
    {
        case 'form':
            if ($_GET['action'] == 'add-cards')
            {
                if ($_GET['step'] == 'finish')
                {
                    $result = addCards($_POST);
                    $smarty->assign('addedCards', $result);
                    $smarty->display('add-cards-form-finish.tpl');

                }
                else
                {
                    $regions = dbGetRegions();
                    $cardTypes = dbGetCardTypes();
                    $smarty->assign('regions', $regions);
                    $smarty->assign('cardTypes', $cardTypes);
                    $smarty->display('add-cards-form.tpl');
                }

            }
            elseif ($_GET['action'] == 'add-agent')
            {
                if ($_GET['step'] == 'finish')
                {
                    $result = addAgent($_POST);
                    $smarty->display('add-agent-form-finish.tpl');
                }
                else
                {
                    $smarty->display('add-agent-form.tpl');
                }

            }
            elseif ($_GET['action'] == 'assign-service')
            {
                if ($_GET['step'] == 'finish')
                {
                    $result = assignService($_POST);
                    $smarty->display('assign-service-form-finish.tpl');
                }
                else
                {
                    $agents = dbGetAgents();
                    $services = dbGetServices();
                    $smarty->assign('agents', $agents);
                    $smarty->assign('services', $services);
                    $smarty->display('assign-service-form.tpl');
                }

            }
            elseif ($_GET['action'] == 'add-service')
            {
                if ($_GET['step'] == 'finish')
                {
                    $result = addService($_POST);
                    $smarty->display('add-service-form-finish.tpl');

                }
                else
                {
                    $smarty->display('add-service-form.tpl');
                }

            }
            elseif ($_GET['action'] == 'edit-card')
            {
                if ($_GET['step'] == 'finish')
                {
                    $result = editCard($_POST);
                    $smarty->assign('addedCards', $result);
                    $smarty->display('edit-card-form-finish.tpl');

                }
                else
                {
                    $card = dbGetCardById(array('IdCard' => $_GET['id-card']));
                    $smarty->assign('card', $card[$_GET['id-card']]);
                    $smarty->assign('idCard', $_GET['id-card']);
                    $smarty->display('edit-card-form.tpl');
                }

            }
            break;
        case 'list':
            if ($_GET['action'] == 'cards-list')
            {
                $smarty->display('cards-list.tpl');
            }

    }

}