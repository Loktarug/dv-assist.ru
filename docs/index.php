<?php
/**
 * User: Сергей
 * Date: 13.11.13
 * Time: 0:28
 */


require_once('libs/Smarty.class.php');
require_once('db/dbOperations.php');
require_once('engine/functions.php');

$smarty = new Smarty();

$smarty->template_dir = '../templates/';
$smarty->compile_dir = '../templates_c/';
$smarty->config_dir = '../configs/';
$smarty->cache_dir = '../cache/';

$smarty->caching = false;


//** раскомментируйте следующую строку для отображения отладочной консоли
//$smarty->debugging = true;

if (!$_REQUEST['action'])
{
    $smarty->display('index.tpl');
}
else
{
    switch ($_REQUEST['type'])
    {
        case 'form':
            if ($_REQUEST['action'] == 'activate-card')
            {
                if ($_REQUEST['step'] != 'finish')
                {
                    $smarty->display('activate-card-form.tpl');
                }
                else
                {
                    try{
                        activateCard($_POST);
                        $smarty->display('activate-card-form-finish.tpl');
                    }
                    catch (Exception $e){
                        $smarty->assign('error', $e->getMessage());
                        $smarty->display('activate-card-form-finish-error.tpl');
                    }


                }
            }
            elseif ($_REQUEST['action'] == 'check-card')
            {
                if ($_REQUEST['step'] != 'finish')
                {
                    $smarty->display('check-card-form.tpl');
                }
                else
                {
                    try{
                        $result = getCard($_POST);
                        $smarty->assign('data', $result);
                        $smarty->display('check-card-form-finish.tpl');
                    }
                    catch (Exception $e){
                        $smarty->assign('error', $e->getMessage());
                        $smarty->display('check-card-form-finish-error.tpl');
                    }

                }
            }
            break;
        case 'manage':
            break;
        case 'page':
            switch ($_GET['action'])
            {
                case 'activate-card':
                    $smarty->display('activate-card.tpl');
                    break;
                case 'insured-accident':
                    $smarty->display('insured-accident.tpl');
                    break;
                case 'about-company':
                    $smarty->display('about-company.tpl');
                    break;
                case 'contacts':
                    $smarty->display('contacts.tpl');
                    break;
                case 'evacuation':
                    $smarty->display('evacuation.tpl');
                    break;
                case 'collection-of-certificates':
                    $smarty->display('collection-of-certificates.tpl');
                    break;
            }
            break;
        case 'comparison':
            if ($_GET['action'] == 'cards-comparison')
            {
                $smarty->display('cards-comparison.tpl');
            }
    }
}
