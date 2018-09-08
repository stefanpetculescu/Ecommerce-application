<?php
require_once('config.php');

function __autoload($class_name) {
	$class = explode("_", $class_name);
	$path = __DIR__ . '/../classes/' . implode("/", $class).".php";
	require_once($path);
}
