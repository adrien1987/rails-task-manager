Rails.application.routes.draw do

# lire tous les taches
  get 'tasks' ,     to: 'tasks#index'
  #creer un restaurant : se fait en 2 requetes : GET et POST
  get 'tasks/new' , to: 'tasks#new', as: :new   #j'affiche le formulaire, envoie le formulaire
  post 'tasks' ,    to: 'tasks#create' #enregistre en base la task

#lire une tache: j'ai besoin de l'id de la tache pour la chercher en base et
#y afficher ses détails, je vais faire un GET tasks/23 dans params[:id]
  get 'tasks/:id' ,  to: 'tasks#show', as: :task



  #update la task se fait aussi en 2 temps: j'affiche et je post
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit #je selectionne l'id et je vais sur l'edit pour
  #afficher le formulaire prérempli
  patch 'tasks/:id' ,    to: 'tasks#update'

  #supprimer une tache a partir d'un ID
  delete 'tasks/:id',   to: 'tasks#destroy'
end
