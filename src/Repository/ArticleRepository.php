<?php

namespace App\Repository;

use App\Entity\Article;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findAll()
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Article $entity, bool $flush = true): void
    {
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function remove(Article $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    // /**
    //  * @return Article[] Returns an array of Article objects
    //  */
    
    public function findPage($pageNb)
    {
        $daFirst = 0;
        $Nbitem = 3;
        $daFirst = $pageNb*$Nbitem;
        return $this->createQueryBuilder('article')
            ->orderBy('article.publishedDate', 'DESC')
            ->setFirstResult($daFirst)
            ->setMaxResults($Nbitem)
            ->getQuery()
            ->getResult()
        ;
    }
    public function countPage()
    {
        $nbrArticle = $this->createQueryBuilder('article')
                            ->select('count(article.id)')
                            ->getQuery()
                            ->getSingleScalarResult();
        $Nbitem = 3;
        $nbPage = floor($nbrArticle / $Nbitem); 
        if ($nbrArticle % $Nbitem > 0 ) {
            $nbPage++;

        }
        return $nbPage;
    }
    public function findId($articleId)
    {
        return  $this->createQueryBuilder('article')
                            ->select('article.id','DESC')
                            ->setFirstResult($articleId)
                            ->getQuery()
                            ->getResult();
        
    }
    


    
    

    /*
    public function findOneBySomeField($value): ?Article
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
