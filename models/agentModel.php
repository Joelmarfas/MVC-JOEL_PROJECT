<?php
// import { uuidv4 } from 'uuid';
require_once("helpers/dbConnection.php");

function get()
{
    $query = conn()->prepare("SELECT agent_code, agent_name, working_area, comission, phone_no, country
    FROM agents 
    -- INNER JOIN genders g ON e.gender_id = g.id
    ORDER BY agent_code ASC;");

    try {
        $query->execute();
        $agents = $query->fetchAll();
        return $agents;
    } catch (PDOException $e) {
        return [];
    }
}

function bringAgentInfo($agent_code) {
    $query = conn()->prepare("SELECT agent_code, agent_name, working_area, comission, phone_no, country
     FROM agents
     WHERE agent_code = '$agent_code'");
   
       

     try {
        $query->execute();
        $agent = $query->fetchAll();
        return $agent;
    } catch (PDOException $e) {
        return [];
    }
}

function deleteFromDb($agent_code) {
   
   echo $agent_code; 
   $query = conn()->prepare("DELETE FROM agents WHERE agent_code = '$agent_code'");
   echo "hola";

      try {
         $query->execute();
       echo "Done";
     
    } catch (PDOException $e) {
        echo "Error";
        return [];
    }
}

function getUpdatedAgent($agent_code) {
    $query = conn()->prepare("UPDATE agents SET 
    agent_name='$_POST[agent_name]', 
    working_area='$_POST[working_area]', 
    comission='$_POST[comission]', 
    phone_no='$_POST[phone_no]', 
    country='$_POST[country]'  
    WHERE agent_code = '$agent_code'");

    try {
        $query->execute();
      echo "Done";
    
   } catch (PDOException $e) {
       echo "Error";
       return [];
   }
}

function newAgent(){
    $query = conn()->prepare("INSERT INTO agents VALUES ('$_POST[agent_code]',
    '$_POST[agent_name]',
    '$_POST[working_area]',
    $_POST[comission],
    $_POST[phone_no],
    '$_POST[country]'
    )
    ");

try {
    $query->execute();
  echo "Done";

} catch (PDOException $e) {
   echo "Error";
   return [];
}
}