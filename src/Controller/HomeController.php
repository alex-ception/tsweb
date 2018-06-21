<?php
namespace App\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\JsonResponse;

class HomeController
{
    /**
     * @Route("/home")
     * @return JsonResponse
     */
    public function __invoke()
    {
        return new JsonResponse('hello world');
    }
}
