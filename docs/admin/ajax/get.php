<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 30.11.13
 * Time: 1:08
 */

require_once ('../dbOperations.php');


switch ($_GET['data'])
{
    case 'cards':
        $startFrom = isset($_GET['start-from']) ? $_GET['start-from'] : 0;
        $quantity = isset($_GET['quantity']) ? $_GET['quantity'] : 20;
        print json_encode(dbGetCards(array('CardNumber' => '%'. $_GET['cardNumber'] .'%', 'StartFrom' => $startFrom, 'Quantity' => $quantity )));

}