Rails.application.routes.draw do
  match 'delayed_job_admin' => 'delayed_job_admin#index', :as => 'delayed_job_admin', :method => :get
  match 'delayed_job_admin/restart' => 'delayed_job_admin#restart', :as => 'delayed_job_admin/restart', :method => :get
  match 'delayed_job_admin/check_status' => 'delayed_job_admin#check_status', :as => 'delayed_job_admin/check_status', :method => :get

  match 'delayed_job_admin/delete/:id' => 'delayed_job_admin#delete', :as => 'delete_job_delayed_job_admin', :method => :get
  match 'delayed_job_admin/retry' => 'delayed_job_admin#retry_job', :as => 'retry_job_delayed_job_admin', :method => :put
  match 'delayed_job_admin/run_now' => 'delayed_job_admin#run_job_now', :as => 'run_job_now_delayed_job_admin', :method => :put
end
