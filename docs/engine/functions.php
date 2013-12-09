<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 01.12.13
 * Time: 16:27
 */

function activateCard($data)
{
    if ($data['CardNumber'] == null)
    {
        throw new Exception ('Поле '. $data['CardNumber'].' не заполнено!');
    }

    if ($data['CheckCode'] == null)
    {
        throw new Exception ('Поле '. $data['CheckCode'].' не заполнено!');
    }

    if ($data['SecondName'] == null)
    {
        throw new Exception ('Поле '. $data['SecondName'].' не заполнено!');
    }

    if ($data['FirstName'] == null)
    {
        throw new Exception ('Поле '. $data['FirstName'].' не заполнено!');
    }

    if ($data['Patronymic'] == null)
    {
        throw new Exception ('Поле '. $data['Patronymic'].' не заполнено!');
    }

    if ($data['MarkVehicle'] == null)
    {
        throw new Exception ('Поле '. $data['MarkVehicle'].' не заполнено!');
    }

    if ($data['ModelVehicle'] == null)
    {
        throw new Exception ('Поле '. $data['ModelVehicle'].' не заполнено!');
    }

    if ($data['CarNumber'] == null)
    {
        throw new Exception ('Поле '. $data['CarNumber'].' не заполнено!');
    }

    if ($data['PhoneNumber'] == null)
    {
        throw new Exception ('Поле '. $data['PhoneNumber'].' не заполнено!');
    }

    $card = dbGetCardByNumber(array('CardNumber' => $data['CardNumber']));

    if (count ($card) == 0)
    {
        throw new Exception ('Карта с номером  '. $data['CardNumber'].' не найдена!');
    }

    if (count ($card) > 1)
    {
        throw new Exception ('Обратитесь в службу поддержки и назовите номер карты: '. $data['CardNumber']);
    }

    $idCard = array_keys($card);
    $card = $card[$idCard[0]];

    if ($card['IdStatus'] != 1)
    {
        throw new Exception ('Невозможно активировать карту '. $data['CardNumber'].'. Возможно она уже активирована. Пожалуйста обратитесь в службу поддержки');
    }

    $result = dbCheckCodeValid(array('IdCard' => $idCard[0], 'CheckCode' => $data['CheckCode']));

    if (!$result)
    {
        throw new Exception ('Код подтверждения '. $card['CheckCode'] .' для карты '. $data['CardNumber'].' неверен.');
    }

    $idUser = dbAddNewUser(array('FirstName' => $data['FirstName'],
                                 'SecondName' => $data['SecondName'],
                                 'Patronymic' => $data['Patronymic'],
                                 'PhoneNumber' => $data['PhoneNumber']));

    dbActivateCard(array('IdUser' => $idUser,
                         'MarkVehicle' => $data['MarkVehicle'],
                         'ModelVehicle' => $data['ModelVehicle'],
                         'CarNumber' => $data['CarNumber'],
                         'IdCard' => $idCard[0]));

}

function getCard ($data)
{
    if ($data['CardNumber'] == null)
    {
        throw new Exception ('Поле '. $data['CardNumber'].' не заполнено!');
    }

    if ($data['CheckCode'] == null)
    {
        throw new Exception ('Поле '. $data['CheckCode'].' не заполнено!');
    }

    $card = dbGetCardByNumber(array('CardNumber' => $data['CardNumber']));

    if (count ($card) == 0)
    {
        throw new Exception ('Карта с номером  '. $data['CardNumber'].' не найдена!');
    }

    if (count ($card) > 1)
    {
        throw new Exception ('Обратитесь в службу поддержки и назовите номер карты: '. $data['CardNumber']);
    }

    $idCard = array_keys($card);
    $card = $card[$idCard[0]];

    $result = dbCheckCodeValid(array('IdCard' => $idCard[0], 'CheckCode' => $data['CheckCode']));

    if (!$result)
    {
        throw new Exception ('Код подтверждения '. $card['CheckCode'] .' для карты '. $data['CardNumber'].' неверен.');
    }

    $cardInformation = dbGetCardInformation(array('IdCard' => $idCard[0]));

    return array('card' => $card, 'information' => $cardInformation);
}









