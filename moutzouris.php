<?php
require_once "../lib/dbconnect.php";
require_once "../lib/users.php";

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$input = json_decode(file_get_contents('php://input'),true);
if($input==null) {
    $input=[];
}
if(isset($_SERVER['HTTP_X_TOKEN'])) {
    $input['token']=$_SERVER['HTTP_X_TOKEN'];
} else {
    $input['token']='';
}switch ($r=array_shift($request)) {
        case 'board' : 
                switch ($b=array_shift($request)) {
                        case '':
                        case null:
                                handle_board($method, $input);
                                break;
                        case 'card':
                                handle_card($method, $request[0], $input);
                                break;
                        default:
                                header("HTTP/1.1 404 Not Found");
                                break;
                }
                break;
        case 'status': 
                if(sizeof($request)==0)
                        show_status();
                else
                        header("HTTP/1.1 404 Not Found");
        break;
        case 'players':
                switch ($b=array_shift($request)) {
                        case '':
                        case null:
                                handle_players($method);
                                break;
                        default:
                                handle_user($method, $b);
                                break;
                }
                break;
        default:
                header("HTTP/1.1 404 Not Found");
        exit;
} (επεξεργασμένο)
[12:26 ΜΜ]
function handle_board($method,$input) {
    if($method=='GET') {
            show_board($input);
    } else if ($method=='POST') {
            reset_board();
            show_board($input);
    } else {
        header('HTTP/1.1 405 Method Not Allowed');
    }

}
[12:27 ΜΜ]
function handle_player($method, $p,$input) {
    switch ($b=array_shift($p)) {
    //    case '':
    //    case null: if($method=='GET') {show_users($method);}
    //               else {header("HTTP/1.1 400 Bad Request"); 
    //                     print json_encode(['errormesg'=>"Method $method not allowed here."]);}
    //                break;
        case 'B': 
        case 'W': handle_user($method, $b,$input);
                    break;
        default: header("HTTP/1.1 404 Not Found");
                 print json_encode(['errormesg'=>"Player $b not found."]);
                 break;
    }
}

function handle_status($method) {
    if($method=='GET') {
        show_status();
    } else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
}
?>