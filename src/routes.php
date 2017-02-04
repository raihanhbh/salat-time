<?php
// Routes

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

//require '../vendor/autoload.php';

spl_autoload_register(function ($classname) {
    require ("../classes/" . $classname . ".php");
});

$app->get('/mosques', function (Request $request, Response $response) {
    // Sample log message
    $this->logger->addInfo("Mosques list");
    $mapper = new MosqueMapper($this->db);
    $mosques = $mapper->getMosques();

	return $response->withJson($mosques);
});

$app->post('/mosques/new', function (Request $request, Response $response) {

	if( $request->isPost() ) {
		$parsedBody = $request->getParsedBody();

		$this->logger->addInfo("add new mosque");
    	$mapper = new MosqueMapper($this->db);
    	$mosque = $mapper->save($parsedBody);

		return $response->withJson($mosque);
	}
});

