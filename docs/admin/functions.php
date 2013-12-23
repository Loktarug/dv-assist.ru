<?php
/**
 * Created by PhpStorm.
 * User: Сергей
 * Date: 30.11.13
 * Time: 0:39
 */

function addCards($data)
{
    if ($data['cardsNumberFrom'] == null)
    {
        throw new Exception("Don't enter valid value for 'Cards Number From'");
    }
    if ($data['cardsNumberUntil'] == null)
    {
        throw new Exception("Don't enter valid value for 'Cards Number Until'");
    }

    $results = array();

    switch ($data['cardsNumberFrom'])
    {
        case (preg_match('/\d{6}/', $data['cardsNumberFrom'])? true : false):
            if (preg_match('/\d{6}/', $data['cardsNumberUntil']) == true)
            {
                for ($cardNumber = $data['cardsNumberFrom']; $cardNumber<=$data['cardsNumberUntil']; $cardNumber++)
                {
                    $results[] = dbAddNewCard(array('CardType' => $data['cardType'], 'IdRegion' => $data['idRegion'], 'CardNumber' => str_pad($cardNumber, 6, '0', STR_PAD_LEFT), 'IdStatus' => 1));
                }

                //$to      = 'info@dv-assist.ru';
                $to      = 'tarasovsr@gmail.com, ermaxx@mail.ru';
                $subject = 'Cards';

                // Для отправки HTML-письма должен быть установлен заголовок Content-type
                $headers  = 'MIME-Version: 1.0' . "\r\n";
                $headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

                // Дополнительные заголовки
                $headers .= 'To: Info <info@dv-diretto.ru>, Info <info@dv-assist.ru>, Sergey Tarasov <tarasovsr@gmail.com>' . "\r\n";
                $headers .= 'From: DV-Assist.ru <info@dv-assist.ru>' . "\r\n";
                //$headers .= 'Cc: birthdayarchive@example.com' . "\r\n";
                //$headers .= 'Bcc: birthdaycheck@example.com' . "\r\n";

                $message = "<table><tr>";

                $i = 0;
                foreach ($results as $result)
                {
                    $message .= "<td>№ Карты: <b>".$result['CardNumber']."</b><br/>Код подтверждения: <b>".$result['CheckCode']."</b><br/>Не выбрасывайте данный листок, код подтверждения Вам потребуется при получении информации на сайте или при звонке оператору</td>";
                    $i++;
                    if ($i%3 == 0)
                        $message .= "</tr><tr>";
                }

                $message .= "</tr></table>";

                mail($to, $subject, $message, $headers);
            }
            break;

    }
    return $results;
}

function editCard($data)
{
    $result = dbUpdateCard(array('IdCard' => $data['IdCard'],
                                    'IdUser' =>  $data['IdUser'],
                                    'MarkVehicle' =>  $data['MarkVehicle'],
                                    'ModelVehicle' =>  $data['ModelVehicle'],
                                    'CarNumber' =>  $data['CarNumber'],
                                    'IdStatus' =>  $data['IdStatus'],
                                    'ValidFrom' =>  $data['ValidFrom'],
                                    'ValidUntil' =>  $data['ValidUntil'],
                                    'Activated' =>  $data['Activated']));

    return $result;
}

function addAgent($data)
{
    return dbAddAgent(array('AgentName' => $data['AgentName']));
}

function assignService($data)
{
    return dbAssignService(array('IdAgent' => $data['IdAgent'], 'IdService' => $data['IdService']));
}

function addService($data)
{
    return dbAddService(array('ServiceName' => $data['ServiceName'], 'ServicePhone' => $data['ServicePhone'], 'ServiceAddress' => $data['ServiceAddress']));
}