<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use App\Repository\ArticleRepository;
use DateTime;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

#[Route('/article')]
class ArticleController extends AbstractController
{
    #[Route('/', name: 'app_article_index', methods: ['GET'])]
    public function index(ArticleRepository $articleRepository): Response
    {
        return $this->render('article/index.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }
    
    // Fonction Pagination pour affichage en AJAX de nos pages 

    #[Route('/page_articles/{pageNb}', name: 'app_article_data', methods: ['GET'])]
    public function pagination(ArticleRepository $articleRepository,int $pageNb ): Response
    {
        return $this->render('article/index_data.html.twig', [
            'articles' => $articleRepository->findPage($pageNb),
        ]);
    }

    // Fonction Count dividse le nbre d'articles par 3 puis donne le nbre de pages

    #[Route('/count_articles', name: 'app_count_data', methods: ['GET'])]
    public function count(ArticleRepository $articleRepository ): Response
    {
        return $this->render('article/count.twig', [
            'count' => $articleRepository->countPage(),
        ]);
    }

    

    #[Route('/crud/new', name: 'app_article_new', methods: ['GET', 'POST'])]
    public function new(Request $request, ArticleRepository $articleRepository, SluggerInterface $slugger): Response
    {
        $article = new Article();
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $imageFile = $form->get('photo')->getData();
            
            if ($imageFile) {
                $originalFilename = pathinfo($imageFile->getClientOriginalName(), PATHINFO_FILENAME);
                
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$imageFile->guessExtension();

                try {
                    $imageFile->move(
                        $this->getParameter('images_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                }

                $article->setImage($newFilename);
            }

            $article->setPublishedDate(new DateTime('now'));
            $article->setUser($this->getUser());
            $articleRepository->add($article);
            return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('article/new.html.twig', [
            'article' => $article,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_article_show', methods: ['GET'])]
    public function show(Article $article, ArticleRepository $articleRepository): Response
    {
        
        return $this->render('article/show.html.twig', [
            'articles' => $articleRepository->find( $article, $lockMode = null, $lockVersion = null)
            
        ]);
        var_dump($article);
    }

    #[Route('/crud/{id}/edit', name: 'app_article_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Article $article, ArticleRepository $articleRepository, SluggerInterface $slugger): Response
    {
        $form = $this->createForm(ArticleType::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
             
            /** @var UploadedFile $eventImage */
             $imageFile = $form->get('photo')->getData();
 
             // this condition is needed because the 'eventImage' field is not required
             // so the Image file must be processed only when a file is uploaded
             if ($imageFile) {
                 $originalFilename = pathinfo($imageFile->getClientOriginalName(), PATHINFO_FILENAME);
                 // this is needed to safely include the file name as part of the URL
                 $safeFilename = $slugger->slug($originalFilename);
                 $newFilename = $safeFilename . '-' . uniqid() . '.' . $imageFile->guessExtension();
  
                 // Move the file to the directory where images are stored
                 try {
                     $imageFile->move(
                         $this->getParameter('images_directory'),
                         $newFilename
                     );
                 } catch (FileException $e) {
                     // ... handle exception if something happens during file upload
                 }
  
                 // updates the 'eventImage' property to store the image file name
                 // instead of its contents
                 $article->setImage($newFilename);
             }
             $articleRepository->add($article);
  
             return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
         }
  
         return $this->renderForm('article/edit.html.twig', [
            'articles' => $article,
            'form' => $form,
         ]);
          
    }

    #[Route('/crud{id}', name: 'app_article_delete', methods: ['POST'])]
    public function delete(Request $request, Article $article, ArticleRepository $articleRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$article->getId(), $request->request->get('_token'))) {
            $articleRepository->remove($article);
        }

        return $this->redirectToRoute('app_article_index', [], Response::HTTP_SEE_OTHER);
    }
}
