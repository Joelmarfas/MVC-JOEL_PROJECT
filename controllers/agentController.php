<?php

require_once MODELS . "agentModel.php";

$action= "";
$agent = "";
// $update = "";
// var_dump($_POST) ;

if(isset($_GET["action"])) {
$action= $_GET["action"];
}

if(function_exists($action)) {
  call_user_func($action);
} else {
  error("This function is not working at the moment!");
}

function getAllAgents(){
$agents = get();

if(isset($agents)) {
  require_once VIEWS . "agents/agentsDashboard.php";
} else {
  error("There was some problem with the server!");
}
  }

// EDIT AGENT
function editAgent() {
  if(isset($_GET["agent_code"])) {
    $agent_code = $_GET["agent_code"];
    $agent = bringAgentInfo($agent_code);
  }
  
  require_once VIEWS . "editAgent/editAgent.php";
}

function updateAgent() {
  $agent_code = $_GET["agent_code"];
  
    if(isset($agent_code)) {
      getUpdatedAgent($agent_code);
      getAllAgents();
    //   require_once VIEWS . "agents/agentsDashboard.php";
    // } else {
    //   error("There was some problem with the server!");
    }
}

 function deleteAgent() {
   require_once VIEWS . "deleteAgent/deleteAgent.php";
  //  echo $agent_code;
 }

 function confirmDelete() {
echo $_GET["agent_code"];
  if(isset($_GET["agent_code"])) {
     deleteFromDb($_GET["agent_code"]);
  }
 getAllAgents();
 }

function error($errorMsg)
{
    require_once VIEWS . "error/error.php";
  }
  
  function createAgent() {
  require_once VIEWS . "createAgent/createAgent.php";


}

function agentCreated() {
  var_dump($_POST);

  newAgent();
  // getAllAgents();

}