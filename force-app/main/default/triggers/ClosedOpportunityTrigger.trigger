trigger ClosedOpportunityTrigger on Opportunity (before insert) {
    
    List<Task> tasksToInsert = new List<Task>();
    
    for(Opportunity op : Trigger.new){
        if (op.StageName == 'Closed Won'){
            Task t = new Task();
            t.Subject = 'Follow Up Test Task';
            t.WhatId  = op.Id;
            tasksToInsert.add(t);
        }
    }
    
    insert tasksToInsert;
}