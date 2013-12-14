<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 14.12.13
 * Time: 2:06
 */

include("../dbOperations.php");
include("../../engine/mail.php");

$cards = dbGetRegisteredCards();
//print_r ($cards);

$fp = fopen('registerCards.csv', 'w');

fwrite($fp, "Номер карты,Тип карты,Действительна с,Действительна по,Марка ТС,Модель ТС,Гос номер ТС,Имя,Фамилия,Отчество,".
    "Номер телефона,Имя агента,Название сервиса,Адрес сервиса,Контакты сервиса\n");
foreach ($cards as $card)
{
    fwrite($fp, $card['CardNumber'].','.$card['CardType'].','.$card['ValidFrom'].','.$card['ValidUntil'].','.
        $card['MarkVehicle'].','.$card['ModelVehicle'].','.$card['CarNumber'].','.$card['FirstName'].','.
        $card['SecondName'].','.$card['Patronymic'].','.$card['PhoneNumber'].','.$card['AgentName'].','.
        $card['ServiceName'].','.$card['ServiceAddress'].','.$card['ServicePhone']."\n");
}
fclose($fp);

mail::sendMail('tarasovsr@gmail.com, ermaxx@mail.ru', 'RegistredCards', 'Hello', 'registerCards.csv');

