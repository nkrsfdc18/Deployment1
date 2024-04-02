public class JSONGeneratonforLeadHelper {

    Public static void AccountJSONcontent(){
        //get the Account Records
        List<Account>accounts=[Select id,Name,Rating,Phone,Fax,Industry,Active__c,AnnualRevenue,type,CreatedDate from account Order By name ];
        
        //Create the JSON Generator
        System.JSONGenerator jsonGen=System.JSON.CreateGenerator(true);
        
        jsonGen.WriteStartObject();
        
                jsonGen.WriteFieldname('AccountRecords');
                jsonGen.WriteStartArray();
        
        if(!accounts.isEmpty()){
            for(Account ac:accounts){
                
                jsonGen.WriteStartObject();
                
                jsonGen.WriteIdfield('ID',ac.id);
                jsonGen.WriteStringField('Name',ac.name);
                
                if(ac.Rating==null || ac.Rating==''){ 
                jsonGen.WriteNullField('Rating');
                }
                else{ 
                    jsonGen.WriteStringField('Rating',ac.Rating);
                }
                    
                if(ac.Phone==null || ac.Phone==''){  
                       jsonGen.WriteNullField('Phone');
                } else{ 
                  
                    jsonGen.WriteStringField('Phone',ac.Phone);
                      }
                 if(ac.Fax==null || ac.Fax==''){  
                   jsonGen.WriteNullField('Fax');
             }  else{  
                   jsonGen.WriteStringField('Fax',ac.Fax);
                   }
                if(ac.Industry==null || ac.Industry==''){  
                    jsonGen.WriteNullField('Industry');
                }else{  
                    jsonGen.WriteStringField('Industry',ac.Industry);
                }
                if(ac.Active__c==null || ac.Active__c==''){  
                    jsonGen.WriteNullField('Active');
                }else{  
                    jsonGen.WriteStringField('Active',ac.Active__c);
                }
                if(ac.AnnualRevenue==null){  
                       jsonGen.WriteNullField('AnnualRevenue');
                }else{  
                     jsonGen.WriteNumberField('AnnualRevenue',ac.AnnualRevenue);
                }
                if(ac.Type==null || ac.type==''){  
                     jsonGen.WriteNullField('Type');
                }else{  
                     jsonGen.WriteStringField('Type',ac.type);
                }
                 JsonGen.WriteEndObject();
            }
         }
        jsonGen.WriteEndArray();
        jsonGen.WriteEndObject();
         System.Debug('Account Records'+jsonGen.GetasString());
    }
    Public static void JsonGenerator(){
        System.JSONGenerator LeadGenerator=System.JSON.CreateGenerator(true);
       
        LeadGenerator.WriteStartObject();
        
        LeadGenerator.WriteFieldName('FirstName');
        LeadGenerator.WriteString('Naveen');
        
        LeadGenerator.WriteFieldName('LastName');
        LeadGenerator.WriteString('Kumar');
        
        LeadGenerator.WriteStringField('CandidateId','1022106653');
        //LeadGenerator.WriteNumber(1022106653);
        LeadGenerator.WriteNumberField('CandidateId',77777);
        LeadGenerator.WriteBooleanField('isActive',false);
        LeadGenerator.WriteDateField('RegDate',Date.newInstance(1994,12,18));

       
        
        LeadGenerator.WriteEndObject();
        system.debug('Lead Generator '+LeadGenerator.GetAsString());
    }
}