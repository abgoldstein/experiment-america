ExperimentAmerica::Application.routes.draw do
  get "snapshot/new"
  post "snapshot/create"
  get "snapshot/index"
end
