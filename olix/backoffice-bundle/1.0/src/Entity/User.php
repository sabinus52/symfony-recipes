<?php

declare(strict_types=1);

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Olix\BackOfficeBundle\Model\User as BaseUser;

/**
 * Classe de l'entité des utilisateurs.
 */
#[ORM\Entity(repositoryClass: UserRepository::class)]
class User extends BaseUser {}
