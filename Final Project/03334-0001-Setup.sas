/*                                                                           
 *-------------------------------------------------------------------------* 
 |              SAS DATA DEFINITION STATEMENTS FOR ICPSR 3334              | 
 |         AGING, STATUS, AND SENSE OF CONTROL 1995, 1998 (ASOC)           | 
 |                                                                         | 
 | The LRECL data should be read using the data definition statements      | 
 | provided.                                                               | 
 |                                                                         | 
 | INFILE identifies the input file to be read with the input  statement.  | 
 | Users may need to modify the "INFILE= " with the approrpriate filename. | 
 |                                                                         | 
 | INPUT  assigns  the  name,  type,  decimal specification (if any), and  | 
 | specifies the beginning and ending column locations for each variable.  | 
 |                                                                         | 
 | LABEL  assigns  descriptive  labels to all variables.  Variable labels  | 
 | and variable names may be identical for some data files.                | 
 |                                                                         | 
 | FORMAT  associates  the  formats  created by the PROC FORMAT step with  | 
 | the variables named in the INPUT statement. Users should refer to the   | 
 | codebook for a complete description of formats.                         | 
 |                                                                         | 
 | NOTE:  Users should modify these data definition statements to suit     | 
 | their specific needs.                                                   | 
 *-------------------------------------------------------------------------* 
 */                                                                          
                                                                             
                                                                             
proc format;                                                                 
                                                                             
   value FINDISPA /* Final disposition code */                               
      10 = 'completed both interviews-pd added this code'                    
      30 = 'No answer'                                                       
      31 = 'Answering machine/answering service'                             
      32 = 'Eligible R not available'                                        
      33 = 'Unscreened R not available'                                      
      40 = 'Final refusal to screener'                                       
      41 = 'Final refusal after screening'                                   
      45 = 'Refused network/secondary source'                                
      55 = 'Not able to interview during survey period'                      
      56 = 'Never able to interview'                                         
      57 = 'Unable to locate'                                                
      60 = 'Other eligible'                                                  
      61 = 'Unable to locate, second number available'                       
      85 = 'Deceased'                                                        
      86 = 'Nonworking'                                                      
      87 = 'Non-residential'                                                 
      88 = 'Ineligible foreign language'                                     
      89 = 'Final duplicate'                                                 
      90 = 'Other ineligible' ;                                              
   value HEALTH /* In general, Rs health is */                               
      1 = 'Very good,'                                                       
      2 = 'Good,'                                                            
      3 = 'Satisfactory,'                                                    
      4 = 'Poor, or'                                                         
      5 = 'Very poor?'                                                       
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WALKNUM /* How often R takes a walk */                              
      1 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 times or more'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WALKDEN /* Day / Week / Month / Year */                             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WALKFAR /* How far R walks when walking */                          
      1 = ''                                                                 
      20 = ''                                                                
      21 = '21 or more'                                                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WALKMEAS /* Blocks / Miles */                                       
      1 = 'Blocks'                                                           
      2 = 'Miles'                                                            
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STREXNUM /* How often R does strenuous exercise */                  
      1 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STREXDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MODEXNUM /* How often R does moderate exercise */                   
      1 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MODEXDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HGHTREP /* Rs height without shoes */                               
      1 = 'ENTER R HEIGHT'                                                   
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HGHTFEET /* Number of feet */                                       
      1 = 'Feet'                                                             
      7 = 'Feet'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HGHTINCH /* Number of inches */                                     
      0 = 'Inches'                                                           
      11 = 'Inches'                                                          
      97 = 'NO CODED RESPONSE APPLICATION'                                   
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WEIGHT /* Rs weight without clothing */                             
      50 = 'Pounds'                                                          
      500 = 'Pounds'                                                         
      997 = 'NO CODED RESPONSE APPLICABLE'                                   
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value SMOKENOW /* Does R smoke 7 or more cigarettes a week */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SMOKEVER /* Have ever smoked 7 or more cigs a week */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SMOKQNUM /* How long ago R quit */                                  
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      96 = 'LESS THAN ONE WEEK AGO'                                          
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SMOKQDEN /* Weeks / Months / Years */                               
      1 = 'Weeks ago'                                                        
      2 = 'Months ago'                                                       
      3 = 'Years ago'                                                        
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATMNUM /* How often eat red meat */                                
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'R NEVER EATS RED MEAT/LESS THAN ONCE A YEAR'                     
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATMDEN /* Day / Week / Month / Year */                             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATFNUM /* How often eat fruits or vegetables */                    
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATFDEN /* Day / Week / Month / Year */                             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATCHNUM /* How often eat fries, potato chips */                    
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 times or more'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATCHDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATCKNUM /* How oft eat cookies/candy/doughnuts/cake */             
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATCKDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MILKNUM /* How oft drink skim or low fat milk */                    
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MILKDEN /* Day / Week / Month / Year */                             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ALCOHNUM /* How often R drinks alcoholic beverages */               
      1 = 'Time(s)'                                                          
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVER/LESS THAN ONCE PER YEAR'                                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ALCOHDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ALCOHAVG /* Average drinks on days U drink? */                      
      1 = 'Drinks'                                                           
      24 = 'Drinks'                                                          
      25 = '25 or more drinks'                                               
      96 = 'LESS THAN ONE DRINK'                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STAIRS /* Difficulty climbing staris */                             
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value KNEELING /* Difficulty kneeling or stooping */                      
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value CARRYING /* Difficulty lifting/carrying less 10 lbs */              
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEALS /* Difficulty R has doing household work */                   
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SHOPPING /* Difficulty R has shopping/getting around */             
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SEEING /* Difficulty seeing, even with glasses */                   
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R IS BLIND'                                                       
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HEARING /* How much does R have difficulty hearing */               
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      6 = 'R WEARS A HEARING AID'                                            
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HEARAID /* Difficulty hearing with hearing aid */                   
      1 = 'No difficulty,'                                                   
      2 = 'Some difficulty, or'                                              
      3 = 'A great deal of difficulty?'                                      
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INSURANC /* R currently covered by health insurance */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INSTYPE /* R insured through */                                     
      1 = 'Your employer,'                                                   
      2 = 'Your spouse''s or another family member''s employer,'             
      3 = 'Some other private insurance,'                                    
      4 = 'Medicare, or'                                                     
      5 = 'Medicaid (GREEN CARD)?'                                           
      6 = 'MORE THAN ONE OF ABOVE'                                           
      7 = 'OTHER (SPECIFY)'                                                  
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOSPITAL /* Ever been hospitalized for an illness */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HOSPNUM /* How long ago was the most recent time */                 
      1 = ''                                                                 
      70 = ''                                                                
      71 = '71 or more'                                                      
      96 = 'LESS THAN ONE WEEK AGO'                                          
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOSPDEN /* Days / Weeks / Months / Years */                         
      1 = 'Days ago'                                                         
      2 = 'Weeks ago'                                                        
      3 = 'Months ago'                                                       
      4 = 'Years ago'                                                        
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DOCTOR /* Pst yr times R saw/talked med doctor */                   
      1 = 'Times'                                                            
      94 = 'Times'                                                           
      95 = '95 or more times'                                                
      96 = 'NEVER TALKED TO DOCTOR IN PAST 12 MONTHS'                        
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value DXHEART /* Ever diagnosed with a heart disease */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXHIGHPR /* Ever diagnosed with high blood pressure */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXLUNG /* Ever diagnosed with lung disease */                       
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXBREAST /* Ever diagnosed with breast cancer */                    
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = 'MALE R'                                                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXCANCER /* Ever diagnosed with any type of cancer */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXDIABET /* Ever been diagnosed with diabetes */                    
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXARTH /* Ever diagnosed with arthritis/rheumatism */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXOSTEO /* Ever been diagnosed with osteoporosis */                 
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXALLERG /* Ever diagnosed with allergies/asthma */                 
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXDIGEST /* Ever diagnosed with digestive problems */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEDICINE /* Taking prescribed medications hlth probl */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEDSNOW /* Take different prescribed medications */                 
      1 = ''                                                                 
      10 = ''                                                                
      11 = '11 or more prescribed medications'                               
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HEADACHE /* Past week days R had headaches */                       
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BACKACHE /* Past week days R had backaches */                       
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value PAINS /* Past week days had other aches and pain */                 
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SLEEP /* Pst wk days trouble going/staying sleep */                 
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EFFORT /* Pst wk days felt that evrythng an effort */               
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value GETGO /* Pst wk days felt R could not get going */                  
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MIND /* Past wk days had trouble keeping mind */                    
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SAD /* Past week days R felt sad */                                 
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value LONELY /* Past week days R felt lonely */                           
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BLUES /* Pst wk days felt could not shake blues */                  
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENJOY /* Past week days R enjoyed life */                           
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOPEFUL /* Pst wk days felt hopeful about future */                 
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HAPPY /* Past week days R felt happy */                             
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENERGY /* Past week days R had lots of energy */                    
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value FIT /* Past week days R felt physically fit */                      
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMP /* How spent time on daily basis */                             
      1 = 'Employed full-time,'                                              
      2 = 'Employed part-time,'                                              
      3 = 'Keeping house full-time,'                                         
      4 = 'Retired,'                                                         
      5 = 'Unable to work because of disability,'                            
      6 = 'Temporarily unemployed or laid off, or'                           
      7 = 'Going to school?'                                                 
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMPNUM /* How long have been */                                     
      1 = ''                                                                 
      95 = ''                                                                
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMPDEN /* Days / Weeks / Months / Years */                          
      1 = 'Days'                                                             
      2 = 'Weeks'                                                            
      3 = 'Months'                                                           
      4 = 'Years'                                                            
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EMPREP /* Main job title / occupation */                            
      1 = 'TO ENTER R JOB TITLE'                                             
      7 = 'NO CODED REPONSE APPLICABLE'                                      
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value TASKREP /* Work/tasks/activities done during day */                 
      1 = 'TO ENTER RESPONSE'                                                
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKROUT /* Does your work usually involve doing */                   
      1 = 'The same thing in the same way repeatedly,'                       
      2 = 'The same kind of thing in a number of different wa'               
      3 = 'A number of different kinds of things?'                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKENJOY /* Work gives a chance to do things I enjoy */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKLEARN /* Work gives R to develop/learn new things */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSOLVE /* Work to figure out how to solve problems */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKINTER /* Work chance interact with people R like */               
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKRECOM /* If frnd told intrstd same job R would */                 
      1 = 'Strongly recommend it,'                                           
      2 = 'Have doubts about recommending it, or'                            
      3 = 'Advise against it?'                                               
      6 = 'DEPENDS ON THE PERSON (FRIEND)'                                   
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSUP /* Anyone supervises work or R report to */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKDISAG /* How free feel disagree with supervisor */                
      1 = 'Not at all free,'                                                 
      2 = 'Somewhat free,'                                                   
      3 = 'Largely but not completely free, or'                              
      4 = 'Completely free to disagree?'                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKHOW /* Who decides how R will do work */                          
      1 = 'You,'                                                             
      2 = 'Someone else, or'                                                 
      3 = 'You and someone else about equally?'                              
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKWHAT /* Decides what R will do in work */                         
      1 = 'You,'                                                             
      2 = 'Someone else, or'                                                 
      3 = 'You and someone else about equally?'                              
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKROUTA /* Daily activities usually involve doing */                
      1 = 'The same thing in the same way repeatedly,'                       
      2 = 'The same kind of thing in a number of different wa'               
      3 = 'A number of different kinds of things?'                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKENJOYA /* Daily acts give chanc to do things enjoy */             
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKLEARNA /* Daily acts give chanc dev/lrn new things */             
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSOLVEA /* In daily acts have fig out solve probs */               
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKINTERA /* Daily acts give chanc interact w/ people */             
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKRECOMA /* If frnd told intrstd be hmkr like R */                  
      1 = 'Strongly recommend it,'                                           
      2 = 'Have doubts about recommending it, or'                            
      3 = 'Advise against it?'                                               
      6 = 'DEPENDS ON THE PERSON (FRIEND)'                                   
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSUPA /* Anyone who supervises Rs daily activity */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKDISAGA /* How free feel disagree w/spvr daily acts */             
      1 = 'Not at all free,'                                                 
      2 = 'Somewhat free,'                                                   
      3 = 'Largely but not completely free, or'                              
      4 = 'Completely free to disagree?'                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKHOWA /* Decides how R will do daily activities */                 
      1 = 'You,'                                                             
      2 = 'Someone else, or'                                                 
      3 = 'You and someone else about equally?'                              
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKWHATA /* Person usu decides what daily activities */              
      1 = 'You,'                                                             
      2 = 'Someone else, or'                                                 
      3 = 'You and someone else about equally?'                              
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MANAG /* R in a management position */                              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MANAGLEV /* Would R say in */                                       
      1 = 'Lower management,'                                                
      2 = 'Middle management,'                                               
      3 = 'Upper management, or'                                             
      4 = 'Top management?'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EVERFULL /* Were ever employed full-time */                         
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EMP2REP /* Kind of work R did in full-time job */                   
      1 = 'TO ENTER R JOB DESCRIPTION'                                       
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WORKHIST /* Best describes history full-time emplymt */             
      1 = 'Employed full-time all or most of your adult life,'               
      2 = 'Employed full-time for some periods of your life,'                
      3 = 'Employed full-time for a while and then stopped?'                 
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WORKLEFT /* Reason R left last full-time job */                     
      1 = 'Resign,'                                                          
      2 = 'Retire, or'                                                       
      3 = 'Get laid off or fired?'                                           
      5 = 'LEFT BECAUSE OF SERIOUS ILLINESS OF DISABILITY'                   
      6 = 'R HAS HAD NO PREVIOUS FULL-TIME JOBS'                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value LEFTREP /* Reason R resigned */                                     
      1 = 'TO ENTER REASON FOR RESIGNING'                                    
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATGOOD /* If something good is to happen, it will */               
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATLUCK /* Good things that happen are mostly luck */               
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPSUC /* Am responsible for my own successes */                   
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPANY /* Can do just about anything I set mind to */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATPROB /* Most of my problems are due to bad break */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATBAD /* Have little control over the bad things */                
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPMIS /* My misfortunes are result of my mistakes */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPFAIL /* Am responsible for my failures */                       
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VICTIM /* Often a victim of things cant control */                  
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SURVIVE /* Can survive and overcome most bad things */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value BADGREED /* A lot of my problems caused by others */                
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPTURN /* Have someone can turn to for support */                 
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPTALK /* Have someone can really talk to */                      
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPHELP /* Have someone who wld hlp me out w/things */             
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPSICK /* Have someone who wld hlp if I were sick */              
      1 = 'Strongly agree,'                                                  
      2 = 'Agree,'                                                           
      3 = 'Disagree, or'                                                     
      4 = 'Strongly disagree?'                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VISITNUM /* How oft visit with friends or relatives */              
      1 = ''                                                                 
      20 = ''                                                                
      21 = '21 or more times'                                                
      96 = 'R NEVER VISITS WITH FRIENDS OR RELATIVES/LESS'                   
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value VISITDEN /* Day / Week / Month / Year */                            
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VOLUNTEE /* Do volunteer work for church, hospital */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VOLNUM /* How often volunteer */                                    
      0 = 'Times(s)'                                                         
      20 = 'Times(s)'                                                        
      21 = '21 or more times'                                                
      96 = 'R VOLUNTEERS LESS THAN ONCE PER YEAR'                            
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value VOLDEN /* Day / Week / Month / Year */                              
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COMMSERV /* Ever participate in community service */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COMMNUM /* How often participate */                                 
      0 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'LESS THAN ONCE PER YEAR'                                         
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value COMMDEN /* Day / Week / Month / Year */                             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MIDAGE /* Total number of adults age 18-59 in HH */                 
      0 = 'Adults'                                                           
      20 = 'Adults'                                                          
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SENIORS /* Total number of adults 60/older in HH */                 
      0 = 'Adults'                                                           
      20 = 'Adults'                                                          
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELATA /* Relationship to the oldest adult in HH */                 
      1 = 'Spouse,'                                                          
      2 = 'Partner (boyfriend or girlfriend),'                               
      3 = 'Roommate (non-relative),'                                         
      4 = 'Child,'                                                           
      5 = 'Parent,'                                                          
      6 = 'Grandparent,'                                                     
      7 = 'Sibling (brother or sister), or'                                  
      8 = 'Other relative?'                                                  
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELATB /* Relationship to next oldest adult in HH */                
      1 = 'Spouse,'                                                          
      2 = 'Partner (boyfriend or girlfriend),'                               
      3 = 'Roommate (non-relative),'                                         
      4 = 'Child,'                                                           
      5 = 'Parent,'                                                          
      6 = 'Grandparent,'                                                     
      7 = 'Sibling (brother or sister), or'                                  
      8 = 'Something else?'                                                  
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELATC /* Relationship to next oldest adult in HH */                
      1 = 'Spouse,'                                                          
      2 = 'Partner (boyfriend or girlfriend),'                               
      3 = 'Roommate (non-relative),'                                         
      4 = 'Child,'                                                           
      5 = 'Parent,'                                                          
      6 = 'Grandparent,'                                                     
      7 = 'Sibling (brother or sister), or'                                  
      8 = 'Other relative?'                                                  
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value KIDS /* Number children under age 18 live in HH */                  
      0 = 'NO CHILDREN UNDER 18 LIVING IN HOUSEHOLD'                         
      1 = 'Children'                                                         
      20 = 'Children'                                                        
      21 = '21 or more children'                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGEYNG /* Age of youngest child in household */                     
      1 = 'Years old'                                                        
      17 = 'Years old'                                                       
      96 = 'LESS THAN ONE YEAR OLD'                                          
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARSTAT /* R is currently */                                        
      1 = 'Married,'                                                         
      2 = 'Living together with someone as married,'                         
      3 = 'Widowed,'                                                         
      4 = 'Divorced,'                                                        
      5 = 'Separated, or'                                                    
      6 = 'Have you never been married?'                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARMANY /* Number of times been married */                          
      1 = 'Times'                                                            
      4 = 'Times'                                                            
      5 = '5 times or more'                                                  
      6 = 'R HAS NEVER BEEN MARRIED'                                         
      7 = 'NO APPLICABLE RESPONSE APPLICABLE'                                
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARAGE /* Age when first married */                                 
      12 = 'Years old'                                                       
      60 = 'Years old'                                                       
      61 = '61 or older'                                                     
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARYEARS /* Number of years ago R was */                            
      1 = 'years ago'                                                        
      60 = 'years ago'                                                       
      61 = '61 or more years ago'                                            
      96 = 'LESS THAN ONE YEAR'                                              
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARAGAIN /* Hw much would like get remarried someday */             
      1 = 'Not at all,'                                                      
      2 = 'Somewhat, or'                                                     
      3 = 'Very much?'                                                       
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value PARTNER /* Have one person would consider sig othr */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARHAPPY /* How happy would say with other person */                
      1 = 'Very happy,'                                                      
      2 = 'Somewhat happy,'                                                  
      3 = 'Somewhat unhappy, or'                                             
      4 = 'Very Unhappy?'                                                    
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DIVTHOT /* In pst 12 mos, how oft thought leaving */                
      1 = 'Never,'                                                           
      2 = 'Rarely,'                                                          
      3 = 'Sometimes, or'                                                    
      4 = 'Often?'                                                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DECHOME /* Has most influence in major decisions */                 
      1 = 'You,'                                                             
      2 = 'Your'                                                             
      3 = 'Both of you equally?'                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SPEMP /* Is significant other currently */                          
      1 = 'Employed full-time,'                                              
      2 = 'Employed part-time,'                                              
      3 = 'Keeping house full-time,'                                         
      4 = 'Retired,'                                                         
      5 = 'Unable to work because of disability,'                            
      6 = 'Temporarily unemployed or laid off, or'                           
      7 = 'Going to school?'                                                 
      8 = 'OTHER'                                                            
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SPEDUC /* Highest grade in sch sig oth completed */                 
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      11 = 'Some high school'                                                
      12 = 'High school graduate or GED'                                     
      13 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree (BS or BA)'                                       
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree (MA, MS, MBA, MSW)'                         
      19 = 'Doctoral degree (PhD)'                                           
      20 = 'Professional degree (MD, JD-Law, DDS, EdD)'                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWORK /* Percentage of household tasks R does */                   
      0 = 'Percent'                                                          
      100 = 'Percent'                                                        
      997 = 'NO CODED RESPONSE APPLICABLE'                                   
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value HSWKWEEK /* Time spent per day on HH tasks dur wk */                
      1 = 'Hours'                                                            
      24 = 'Hours'                                                           
      96 = 'LESS THAN ONE HOUR PER DAY'                                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWKEND /* Time spent per day on HH tasks on wknd */                
      1 = 'Hours'                                                            
      24 = 'Hours'                                                           
      96 = 'LESS THAN ONE HOUR PER DAY'                                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWKFAIR /* How fair think overall share of housewrk */             
      1 = 'Very fair,'                                                       
      2 = 'Somewhat fair,'                                                   
      3 = 'Somewhat unfair, or'                                              
      4 = 'Very unfair?'                                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNFOOD /* Pst 12 mos, how oft enough buy HH necess */             
      1 = 'Very often,'                                                      
      2 = 'Fairly often,'                                                    
      3 = 'Not very often, or'                                               
      4 = 'Never?'                                                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNMED /* Pst 12 mo, how oft enough pay med care */                
      1 = 'Very often,'                                                      
      2 = 'Fairly often,'                                                    
      3 = 'Not very often, or'                                               
      4 = 'Never'                                                            
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNBILL /* Pst 12 mos, how oft trouble paying bills */             
      1 = 'Very often,'                                                      
      2 = 'Fairly often,'                                                    
      3 = 'Not very often,'                                                  
      4 = 'Never?'                                                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WORRY /* Pst wk, number days worried small things */                
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value TENSE /* Pst wk days have felt tense or anxious */                  
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RESTLESS /* Pst wk how many days have felt restless */              
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value FEAR /* Past wk days have feared being attacked */                  
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HMSAFE /* Pst wk days worried home maybe broken in */               
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MAD /* Pst week how many days have felt annoyed */                  
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value YELL /* Past week days have yelled at someone */                    
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ANGRY /* Past week how many days have felt angry */                 
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSEDSED' ;                                                    
   value TRUST /* Pst wk felt safer to trust no one. */                      
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SUSP /* Past week days have felt suspicious */                      
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGAINST /* Past week days felt everyone against R */                
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BREAKIN /* In past anyone break in home/apartment */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ASSAULT /* Someone ever attack or assault R */                      
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DISASTER /* Were ever in a major disaster */                        
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value UNEMPLOY /* Unemplyed 6 mos or more R wanted emplymt */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value UNEMPNUM /* Months / Years end of recent episode */                 
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      96 = 'R IS CURRENTLY UNEMPLOYED FOR OVER 6 MONTHS'                     
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value UNEMPDEN /* Number of months or years ago */                        
      1 = 'Months ago'                                                       
      2 = 'Years ago'                                                        
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNEVER /* Time R did not have enough money for nec */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNNUM /* Months / Years of last time */                           
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STRNDEN /* Number of months or years ago */                         
      1 = 'Months ago'                                                       
      2 = 'Years ago'                                                        
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value PMARSTAT /* Parents divorced before 18 yrs old */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = 'MOTHER DIED BEFORE R WAS 18 YEARS OLD'                            
      4 = 'FATHER DIED BEFORE R WAS 18 YEARS OLD'                            
      5 = 'BOTH PARENTS DIED BEFORE R WAS 18 YEARS OLD'                      
      6 = 'R PARENTS WERE NEVER MARRIED'                                     
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MOMALIVE /* Is Rs mother alive now */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MDEADAGE /* Age R was when she passed away */                       
      1 = 'years old'                                                        
      80 = 'years old'                                                       
      81 = '81 years old or older'                                           
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value DADALIVE /* Is Rs father alive now */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FDEADAGE /* Age R was when he passed away */                        
      1 = 'Years old'                                                        
      80 = 'Years old'                                                       
      96 = '81 years old or older'                                           
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value LIFEEXPT /* What age expect to live */                              
      18 = 'Years old'                                                       
      110 = 'Years old'                                                      
      111 = '111 Years old or more'                                          
      997 = 'NO CODED RESPONSE APPLICABLE'                                   
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value NUMKIDS /* Number of children have had in total */                  
      0 = 'No children'                                                      
      1 = 'Children'                                                         
      25 = 'Children'                                                        
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGEFIRST /* Age when first child was born */                        
      1 = 'Years old'                                                        
      60 = 'Years old'                                                       
      96 = '60 years old or older'                                           
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value OWNHOME /* Own / Rent / Live with relative */                       
      1 = 'Own'                                                              
      2 = 'Rent'                                                             
      3 = 'Other'                                                            
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ED /* Highest grade/year of school completed */                     
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some High school'                                                 
      11 = 'Some High school'                                                
      12 = 'High school graduate or GED'                                     
      13 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree (BS or BA)'                                       
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree (MA, MS, MBA, MSW)'                         
      19 = 'Doctoral degree (PhD)'                                           
      20 = 'Professional degree (MD, JD-Law, DDS, EdD)'                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value COLLREP /* College/University recvd highest degree */               
      1 = 'TO ENTER COLLEGE OR UNIVERSITY'                                   
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COLLTREP /* City / State / Country of college */                    
      1 = 'TO ENTER CITY, STATE OR COUNTRY'                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MAJORREP /* Major/Discipline of highest degree */                   
      1 = 'TO ENTER HIGHEST DEGREE'                                          
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EDMOM /* Highest grd/yr of ed completed by mother */                
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      11 = 'Some high school'                                                
      12 = 'High school graduate or GED'                                     
      13 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree (BS or BA)'                                       
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree (MA, MS, MBA, MSW)'                         
      19 = 'Doctoral degree (PhD)'                                           
      20 = 'Professional degree (MD, JD-Law, DDS, EdD)'                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EDFATHER /* Highest grd/yr of ed completed by father */             
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      11 = 'Some high school'                                                
      12 = 'High school graduate or GED'                                     
      13 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree (BS or BA)'                                       
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree (MA, MS, MBA, MSW)'                         
      19 = 'Doctoral degree (PhD)'                                           
      20 = 'Professional degree (MD, JD-Law, DDS, EdD)'                      
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value YEARBORN /* In what year R was born */                              
      1876 = ''                                                              
      1977 = ''                                                              
      9997 = 'NO CODED RESPONSE APPLICABLE'                                  
      9998 = 'DON''T KNOW'                                                   
      9999 = 'REFUSED' ;                                                     
   value USBORN /* Born in the United States */                              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value AGEIMMIG /* Age when R came to the United States */                 
      1 = 'Years old'                                                        
      96 = 'Years old'                                                       
      97 = 'NO CODED RESPONSE APPLICABLE'                                    
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENGLISH /* Is English your native language */                       
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HISPANIC /* Hispanic or Spanish origin */                           
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RACE /* Is R */                                                     
      1 = 'White,'                                                           
      2 = 'Black or African American,'                                       
      3 = 'Asian or Pacific Islander,'                                       
      4 = 'Native American or Alaskan native, or'                            
      5 = 'Something else?'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARNREP /* 1993 Annual Personal Income before taxes */              
      1 = 'TO ENTER R''S INCOME'                                             
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARNA /* Dollar amount */                                           
      0 = 'Dollars'                                                          
      500000 = 'Dollars'                                                     
      500001 = '$500,001 or more'                                            
      999997 = 'NO CODED RESPONSE APPLICABLE'                                
      999998 = 'DON''T KNOW'                                                 
      999999 = 'REFUSED' ;                                                   
   value EARN3A /* Was it */                                                 
      1 = 'Less than $30,000, or'                                            
      2 = 'More than $30,000?'                                               
      3 = '$30,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN2A /* Was it less than $20,000 */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$20,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPlCABLE'                                      
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN1A /* Was it less than $10,000 */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$10,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN4A /* Was it more than $40,000 */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$40,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN5A /* Was it more than $50,000 */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$50,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN7A /* Was it more than $75,000 */                               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$75,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLIABLE'                                      
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN10A /* Was it more than $100,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$100,000 EXACTLY'                                                 
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INCREP /* 1993 Total Annual HH Income before taxes */               
      1 = 'ENTER HOUSEHOLD INCOME'                                           
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINCA /* Dollar amount */                                         
      0 = 'Dollars'                                                          
      800000 = 'Dollars'                                                     
      800001 = '$800,001 or more'                                            
      999997 = 'NO CODED RESPONSE APPLICABLE'                                
      999998 = 'DON''T KNOW'                                                 
      999999 = 'REFUSED' ;                                                   
   value FAMINC3A /* Was it */                                               
      1 = 'Less than $30,000, or'                                            
      2 = 'More than $30,000?'                                               
      3 = '$30,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINC2A /* Was it less than $20,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$20,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPlCABLE'                                      
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINC1A /* Was it less than $10,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$10,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINC4A /* Was it more than $40,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$40,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINC5A /* Was it more than $50,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$50,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMINC7A /* Was it more than $75,000 */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$75,000 EXACTLY'                                                  
      7 = 'NO CODED RESPONSE APPLIABLE'                                      
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN10A /* Was it more than $100,000 */                            
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$100,000 EXACTLY'                                                 
      7 = 'NO CODED RESPONSE APPLICABLE'                                     
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EDSELEC /* Comparative Guide to American Colleges 1991 Selectivity S
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      0 = 'Unranked'                                                         
      1 = 'Selective'                                                        
      2 = 'Selective +'                                                      
      3 = 'Very Selective'                                                   
      4 = 'Very Selective +'                                                 
      5 = 'Highly Selective'                                                 
      6 = 'Highly Selective +'                                               
      7 = 'Most selective' ;                                                 
   value EDTYPE /* Comparative Guide to American Colleges 1991 College Types 
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      1 = 'Public'                                                           
      2 = 'Independent (Private)'                                            
      3 = 'Church-Affiliated' ;                                              
   value EDCARNEG /* Carnegie Foundation Classifications 1994 */             
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      1 = 'Professional Schools and Specialized Institutions'                
      2 = 'Associate of Arts Colleges'                                       
      3 = 'Baccalaureate Colleges II'                                        
      4 = 'Baccalaureate Colleges I'                                         
      5 = 'Masters Universities and Colleges II'                             
      6 = 'Masters Universities and Colleges I'                              
      7 = 'Doctoral University II'                                           
      8 = 'Doctoral University I'                                            
      9 = 'Research University II'                                           
      10 = 'Research University I' ;                                         
   value WKRESIGN /* WKRESIGN-Why resigned last job? */                      
      1 = 'Negative Job Characteristics'                                     
      2 = 'Conflict with Supervisor'                                         
      3 = 'Got Better Job'                                                   
      4 = 'Job Ended'                                                        
      5 = 'Job Was Temporary'                                                
      6 = 'Self-Employment/Family Business'                                  
      7 = 'Retired'                                                          
      8 = 'Return to School'                                                 
      9 = 'Got Married/Spouse wanted R to Quit'                              
      10 = 'Pregnant/Full-time homemaker'                                    
      11 = 'Care for sick relative'                                          
      12 = 'Health Problems'                                                 
      13 = 'Moved'                                                           
      14 = 'Spouse Moved for Job - R went '                                  
      15 = 'Other' ;                                                         
   value TASK /* What R Does During Day */                                   
      1 = 'Housework'                                                        
      2 = 'Child Care'                                                       
      3 = 'Care for Ill or Elderly'                                          
      4 = 'Garden/Home Maintenance'                                          
      5 = 'Volunteer/Church Work'                                            
      6 = 'Recreation in the Home'                                           
      7 = 'Recreation Outside Home'                                          
      8 = '"Work" Tasks'                                                     
      9 = 'School/Schoolwork'                                                
      10 = 'Job Search'                                                      
      11 = 'Rehab, Doctors, Therapist' ;                                     
   value INTMONTH /* Month Interview was completed */                        
      1 = 'January'                                                          
      2 = 'February'                                                         
      3 = 'March'                                                            
      9 = 'September'                                                        
      10 = 'October'                                                         
      11 = 'November'                                                        
      12 = 'December' ;                                                      
   value STRATAID /* Strata ID */                                            
      1 = 'Random Sample'                                                    
      2 = 'Elderly Sample' ;                                                 
   value STRATAIA /* Final disposition code */                               
      1 = 'Completed with gen population'                                    
      2 = 'Completed with 60+' ;                                             
   value HEALTHA /* General status of health */                              
      1 = 'Very good'                                                        
      2 = 'Good'                                                             
      3 = 'Satisfactory'                                                     
      4 = 'Poor'                                                             
      5 = 'Very poor'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WALKNUMA /* How often take a walk */                                
      1 = 'Time'                                                             
      20 = 'Times'                                                           
      21 = '21 times or more'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WALKDENA /* Day, week, month, year */                               
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WALKFARA /* Distance walked during typical walk */                  
      1 = ''                                                                 
      20 = ''                                                                
      21 = '21 or more'                                                      
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WALKMEAA /* Blocks, miles */                                        
      1 = 'Blocks'                                                           
      2 = 'Miles'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STREXNUA /* How often do strenuous exercise */                      
      1 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STREXDEA /* Day, week, month, year */                               
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MODEXNUA /* How often do moderate exercise */                       
      1 = 'Times'                                                            
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MODEXDEA /* Day, week, month, year */                               
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HGHTREPA /* Height without shoes */                                 
      1 = 'ENTER R HEIGHT'                                                   
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HGHTFEEA /* Number of feet */                                       
      1 = 'Feet'                                                             
      7 = 'Feet'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HGHTINCA /* Number of inches */                                     
      0 = 'Inches'                                                           
      11 = 'Inches'                                                          
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WEIGHTA /* Weight without clothing */                               
      50 = 'Pounds'                                                          
      500 = 'Pounds'                                                         
      997 = 'NO CODED RSP APPLIES'                                           
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value SMOKENOA /* Currently smoke 7 or more cigs a week */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SMOKEVEA /* Ever smoked 7 or more cigs a week */                    
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SMOKQNUA /* How long ago quit smoking */                            
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      96 = 'LESS THAN ONE WK AGO'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SMOKQDEA /* Quit smoking weeks, months, years ago */                
      1 = 'Weeks ago'                                                        
      2 = 'Months ago'                                                       
      3 = 'Years ago'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATMNUMA /* How often eat red meat */                               
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATMDENA /* Red meat per day, week, month, year */                  
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATFNUMA /* How often eat fruits or vegetables */                   
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATFDENA /* Fruits, vegetables per day, wk, mnth, yr */             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATCHNUA /* How often eat french fries or chips */                  
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 times or more'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATCHDEA /* French fries, chps per day, wk, mnth, yr */             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EATCKNUA /* How often eat cookies, doughnuts, cake */               
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EATCKDEA /* Cookies, doughnuts per day, wk, mnth, yr */             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MILKNUMA /* How often drink skim or low fat milk */                 
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MILKDENA /* Skim, low fat milk per day, wk, mnth, yr */             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ALCOHNUA /* How often drink alcohlic beverages */                   
      1 = 'Time'                                                             
      20 = 'Time(s)'                                                         
      21 = '21 or more times'                                                
      96 = 'NEVR/LESS ONCE PR YR'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ALCOHDEA /* Alcoholc beverages per day, wk, mnth, yr */             
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ALCOHAVA /* Number of alcoholic beverages consumed */               
      1 = 'Drink'                                                            
      24 = 'Drinks'                                                          
      25 = '25 or more drinks'                                               
      96 = 'LESS THAN ONE DRINK'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STAIRSA /* Difficulty climbing stairs */                            
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value KNEELINA /* Difficulty kneeling or stooping */                      
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value CARRYINA /* Difficulty lift, carry objects < 10 lbs. */             
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEALSA /* Difficulty preparing meals, clean house */                
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SHOPPINA /* Difficulty shopping, getting around town */             
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R NEVER DOES'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SEEINGA /* Difficulty seeing, even with glasses */                  
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'R IS BLIND'                                                       
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HEARINGA /* Difficulty hearing */                                   
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      6 = 'WEARS A HEARING AID'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HEARAIDA /* Difficulty hearing with hearing aid */                  
      1 = 'No difficulty'                                                    
      2 = 'Some difficulty'                                                  
      3 = 'Great deal difficlty'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INSURANA /* Currently covered by health insurance */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INSTYPEA /* Health insurance coverage is provided by */             
      1 = 'Your employer'                                                    
      2 = 'Sps/fmly mem employr'                                             
      3 = 'Other priv insurance'                                             
      4 = 'Medicare'                                                         
      5 = 'Medicaid (GREEN CRD)'                                             
      6 = 'MORE THN ONE OF ABOV'                                             
      7 = 'OTHER (SPECIFY)'                                                  
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOSPITAA /* Hospitalized for serious illness, injury */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HOSPNUMA /* Time since most recent hospitalization */               
      1 = ''                                                                 
      70 = ''                                                                
      71 = '71 or more'                                                      
      96 = 'LESS THAN ONE WK AGO'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOSPDENA /* Days, wks, mnths, yrs since last hosptl */              
      1 = 'Days ago'                                                         
      2 = 'Weeks ago'                                                        
      3 = 'Months ago'                                                       
      4 = 'Years ago'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DOCTORA /* Times seen, talked to MD past 12 months */               
      1 = 'Time'                                                             
      94 = 'Times'                                                           
      95 = '95 or more times'                                                
      96 = 'NEVER PAST 12 MONTHS'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value DXHEARTA /* Diagnosed by MD have heart disease */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXHIGHA /* Diagnosed by MD have high blood pressure */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXLUNGA /* Diagnosed by MD have lung disease */                     
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXCANCEA /* Diagnosed by MD have any type of cancer */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXBREASA /* Diagnosed by MD have breast cancer */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = 'MALE R'                                                           
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXDIABEA /* Diagnosed by MD have diabetes */                        
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXARTHA /* Diagnosd by MD hav arthritis, rheumatism */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXOSTEOA /* Diagnosed by MD have osteoporosis */                    
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXALLERA /* Diagnosed by MD have allergies, asthma */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DXDIGESA /* Diagnosed by MD have ulcers, colitis */                 
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEDICINA /* Taking prescribed meds for any hlth prob */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MEDSNOWA /* Number of different prescribed medicatns */             
      1 = '1 pres medication'                                                
      10 = '10 pres medications'                                             
      11 = '11 or more pres meds'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HEADACHA /* Days during past 7 had headaches */                     
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BACKACHA /* Days during past 7 had backaches */                     
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value PAINSA /* Days durng past 7 had other aches, pains */               
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SLEEPA /* Days durng past 7 had trouble sleeping */                 
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EFFORTA /* Days during past 7 everything an effort */               
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value GETGOA /* Days during past 7 could not get going */                 
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MINDA /* Days during past 7 trouble keep focused */                 
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SADA /* Days during past 7 felt sad */                              
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value LONELYA /* Days during past 7 felt lonely */                        
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BLUESA /* Days during past 7 could not shake blues */               
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENJOYA /* Days during past 7 enjoyed life */                        
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HOPEFULA /* Days durng past 7 felt hopeful of future */             
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HAPPYA /* Days during past 7 felt happy */                          
      0 = 'None'                                                             
      1 = 'Day'                                                              
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENERGYA /* Days during past 7 had lots of energy */                 
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value FITA /* Days during past 7 felt physically fit */                   
      0 = 'None'                                                             
      1 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMPA /* Current employment / education status */                    
      1 = 'Employed full-time'                                               
      2 = 'Employed part-time'                                               
      3 = 'Keep house full-time'                                             
      4 = 'Retired'                                                          
      5 = 'Unable wrk disabilty'                                             
      6 = 'Temp unempl laid off'                                             
      7 = 'Going to school'                                                  
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMPNUMA /* How long current employ / educatn status */              
      1 = ''                                                                 
      95 = ''                                                                
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EMPDENA /* Employ / ed status days, wks, mnths, yrs */              
      1 = 'Days'                                                             
      2 = 'Weeks'                                                            
      3 = 'Months'                                                           
      4 = 'Years'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EMPREPA /* Main job title or occupation */                          
      1 = 'TO ENTER R JOB TITLE'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INDA /* Type of business or industry */                             
      1 = 'Manufacturing'                                                    
      2 = 'Wholesale trade'                                                  
      3 = 'Retail trade'                                                     
      4 = 'Service, incl medicl'                                             
      5 = 'Government'                                                       
      6 = 'Public Service'                                                   
      7 = 'Somethng else (SPEC)'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DO NOT KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value JOBCHGA /* Job title changed */                                     
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPCHGA /* Major job responsibilities changed */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value TASKA /* Kind of work, tasks, or activities done */                 
      1 = 'HOUSEWORK'                                                        
      2 = 'CHILDCARE'                                                        
      3 = 'CARES FOR ELDERLY'                                                
      4 = 'GARDENING HOME MAINT'                                             
      5 = 'INDOOR ACTIVITIES'                                                
      6 = 'OUTDOOR ACTIVITIES'                                               
      7 = 'SCHOOLWORK OR CLASS'                                              
      8 = 'VOLUNTEER WORK'                                                   
      9 = 'UNPAID FAMLY BUSINES'                                             
      10 = 'JOB SEARCHING'                                                   
      11 = 'REHABILITATION ACTVS'                                            
      96 = 'SOMETHING ELSE'                                                  
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WKROUTWA /* What work usually involves */                           
      1 = 'Same thing repeatdly'                                             
      2 = 'Same thing diff ways'                                             
      3 = 'Number diffrt things'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKENJOWA /* Work gives chance to do enjoyable things */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKLEARWA /* Work gives chance to develop and learn */               
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSOLVWA /* Have to figure out how to solve problems */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKINTEWA /* Work gives chance to interact w/ people */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKRECOWA /* Advice to friend about doing what R does */             
      1 = 'Strongly recommend'                                               
      2 = 'Have doubts recommnd'                                             
      3 = 'Advise against it'                                                
      6 = 'DEPENDS ON THE PERSN'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSUPWA /* Person supervises work, to whom report */                
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKDISAWA /* Freedom to disagree with supervisor */                  
      1 = 'Not at all free'                                                  
      2 = 'Somewhat free'                                                    
      3 = 'Largly not completly'                                             
      4 = 'Completely free'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKHOWWA /* Who decides how Rs work will be done */                  
      1 = 'You'                                                              
      2 = 'Someone else'                                                     
      3 = 'R and other equally'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKWHATWA /* Who decides what will be done in Rs work */             
      1 = 'You'                                                              
      2 = 'Someone else'                                                     
      3 = 'R and other equally'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKROUW2A /* What daily activities usually involve */                
      1 = 'Same thing repeatdly'                                             
      2 = 'Same thing diff ways'                                             
      3 = 'Number diffrt things'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKENJW2A /* Daily activs chance do enjoyable things */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKLEAW2A /* Daily activs chance to develop and learn */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSOLW2A /* Daily activs figure how to solve problms */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKINTW2A /* Daily activs giv chnc interact w/ people */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKRECW2A /* Advice to friend about doing what R does */             
      1 = 'Strongly recommend'                                               
      2 = 'Have doubts recommnd'                                             
      3 = 'Advise against it'                                                
      6 = 'DEPENDS ON THE PERSN'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKSUPW2A /* Person who supervises daily activities */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKDISW2A /* Freedom disagree w/ spvr of daily activs */             
      1 = 'Not at all free'                                                  
      2 = 'Somewhat free'                                                    
      3 = 'Largly not completly'                                             
      4 = 'Completely free'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKHOWW2A /* Who decides how daily actvs will be done */             
      1 = 'You'                                                              
      2 = 'Someone else'                                                     
      3 = 'R and other equally'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKWHAW2A /* Who decids what will be done daily actvs */             
      1 = 'You'                                                              
      2 = 'Someone else'                                                     
      3 = 'R and other equally'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MANAGEWA /* In a management position */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MANLEVWA /* Level of management in which involved */                
      1 = 'Lower management'                                                 
      2 = 'Middle management'                                                
      3 = 'Upper management'                                                 
      4 = 'Top management'                                                   
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EVERFULA /* Ever employed full-time */                              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EMP2REPA /* Title of most recent full-time job, occ */              
      1 = 'TO ENTER R JOB TITLE'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value IND2A /* Type of business, industry was job w/in */                 
      1 = 'Manufacturing'                                                    
      2 = 'Wholesale trade'                                                  
      3 = 'Retail trade'                                                     
      4 = 'Service, incl medicl'                                             
      5 = 'Government'                                                       
      6 = 'Public Service'                                                   
      7 = 'Somethng else (SPEC)'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DO NOT KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value WORKHISA /* Description full-time employment history */             
      1 = 'F-t all, mst of life'                                             
      2 = 'F-t for some periods'                                             
      3 = 'F-t for while, stopd'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WORKLEFA /* Reason why left last full-time job */                   
      1 = 'Resign'                                                           
      2 = 'Retire'                                                           
      3 = 'Laid off or fired'                                                
      4 = 'Business closed/Job terminated'                                   
      5 = 'SERIOUS ILL, DISBLTY'                                             
      6 = 'NO PREVIOUS F-T JOBS'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WKRESIGA /* Reason why resigned */                                  
      1 = 'CONFLICT SUPERVISOR'                                              
      2 = 'JOB WAS BAD'                                                      
      3 = 'GOT A BETTER JOB'                                                 
      4 = 'PREGNANCY'                                                        
      5 = 'MARRIAGE'                                                         
      6 = 'CARE SICK FAMLY MEM'                                              
      7 = 'SCHOOL'                                                           
      8 = 'BECAME SELF EMPLOYED'                                             
      9 = 'JOB ENDED'                                                        
      10 = 'JOB TEMPRARY, SEASNL'                                            
      11 = 'SPOUS, PRTNR NEW JOB'                                            
      12 = 'RESPONDENT MOVED'                                                
      13 = 'RETIRED'                                                         
      14 = 'PERSONAL INJURY/ILLNESS'                                         
      15 = 'TAKE CARE OF FAMILY/ RAISE KIDS'                                 
      16 = 'SWITCHED TO PART-TIME'                                           
      96 = 'OTHER REASON RESIGN'                                             
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value FATGOODA /* No sense planning, good will happen */                  
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATLUCKA /* Really good things that happen are luck */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPSUCA /* Responsible for own successes */                        
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPANYA /* Can do just about anything set mind to */               
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATPROBA /* Most of problems are due to bad breaks */               
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FATBADA /* Little contrl ovr bad things that happen */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPMISA /* Misfortunes are result of mistakes made */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RESPFAIA /* Responsible for failures */                             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VICTIMA /* Often a victim of things cannot control */               
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SURVIVEA /* Can survive and overcome most bad things */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value BADGREEA /* Problems caused by othrs selfish, greedy */             
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPTURA /* Have someone for support, understanding */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPTALA /* Have someone can really talk to */                      
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPHELA /* Have someone who would help with things */              
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SUPPSICA /* Have someone to provide care if sick */                 
      1 = 'Strongly agree'                                                   
      2 = 'Agree'                                                            
      3 = 'Disagree'                                                         
      4 = 'Strongly disagree'                                                
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VISITNUA /* How often visit in person friends, rels */              
      1 = ''                                                                 
      20 = ''                                                                
      21 = '21 or more times'                                                
      96 = 'NVR VSTS FRNDS, RELS'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value VISITDEA /* Visit day, week, month, year */                         
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VOLUNTEA /* Volunteer church, hosp, library, scouts */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value VOLNUMA /* How often volunteer */                                   
      1 = 'Times'                                                            
      20 = 'Times(s)'                                                        
      21 = '21 or more times'                                                
      96 = 'LESS THAN ONCE YEAR'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value VOLDENA /* Volunteer day, week, month, year */                      
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COMMSERA /* Participate in community service, orgs */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COMMNUMA /* How often participate in comm serv, orgs */             
      1 = 'Time'                                                             
      20 = 'Times'                                                           
      21 = '21 or more times'                                                
      96 = 'LESS THAN ONCE YEAR'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value COMMDENA /* Participate day, week, month, year */                   
      1 = 'Day'                                                              
      2 = 'Week'                                                             
      3 = 'Month'                                                            
      4 = 'Year'                                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MIDAGEA /* Total number adults 18 to 59 live in HH */               
      0 = 'Adults'                                                           
      20 = 'Adults'                                                          
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SENIORSA /* Total number adults 60 or older live HH */              
      0 = 'Adults'                                                           
      20 = 'Adults'                                                          
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELAT1A /* Relationship to oldest adult in HH */                    
      1 = 'Spouse'                                                           
      2 = 'Partner'                                                          
      3 = 'Roommate (non-rel)'                                               
      4 = 'Child'                                                            
      5 = 'Parent'                                                           
      6 = 'Grandparent'                                                      
      7 = 'Sibling'                                                          
      8 = 'Other relative'                                                   
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELAT2A /* Relationship to next oldest adult in HH */               
      1 = 'Spouse'                                                           
      2 = 'Partner'                                                          
      3 = 'Roommate (non-relative)'                                          
      4 = 'Child'                                                            
      5 = 'Parent'                                                           
      6 = 'Grandparent'                                                      
      7 = 'Sibling'                                                          
      8 = 'Something else'                                                   
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RELAT3A /* Relationship to next oldest adult in HH */               
      1 = 'Spouse'                                                           
      2 = 'Partner'                                                          
      3 = 'Roommate (non-relative)'                                          
      4 = 'Child'                                                            
      5 = 'Parent'                                                           
      6 = 'Grandparent'                                                      
      7 = 'Sibling'                                                          
      8 = 'Other relative'                                                   
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value KIDSA /* Children under age 18 live in HH */                        
      0 = 'NO CHILDREN UNDER 18'                                             
      1 = 'Children'                                                         
      20 = 'Children'                                                        
      21 = '21 or more children'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGEYNGA /* Age of youngest child in HH */                           
      1 = 'Years old'                                                        
      17 = 'Years old'                                                       
      96 = 'LESS THAN ONE YR OLD'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARSTATA /* Current marital status */                               
      1 = 'Married'                                                          
      2 = 'Living as married'                                                
      3 = 'Widowed'                                                          
      4 = 'Divorced'                                                         
      5 = 'Separated'                                                        
      6 = 'Never been married'                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARMANYA /* Number of times R has been married */                   
      1 = 'Times'                                                            
      4 = 'Times'                                                            
      5 = '5 times or more'                                                  
      6 = 'NEVER BEEN MARRIED'                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARAGEA /* Age when first married */                                
      12 = 'Years old'                                                       
      60 = 'Years old'                                                       
      61 = '61 or older'                                                     
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARYEARA /* Number years ago */                                     
      1 = 'years ago'                                                        
      60 = 'years ago'                                                       
      61 = '61 or more years ago'                                            
      96 = 'LESS THAN ONE YEAR'                                              
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MARAGAIA /* How much would like to remarry someday */               
      1 = 'Not at all'                                                       
      2 = 'Somewhat'                                                         
      3 = 'Very much'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value PARTNERA /* Person consider sig other, intmt partner */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MARHAPPA /* How happy R is with significant other */                
      1 = 'Very happy'                                                       
      2 = 'Somewhat happy'                                                   
      3 = 'Somewhat unhappy'                                                 
      4 = 'Very Unhappy'                                                     
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DIVTHOTA /* Past 12 months thought leaving sig other */             
      1 = 'Never'                                                            
      2 = 'Rarely'                                                           
      3 = 'Sometimes'                                                        
      4 = 'Often'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DECHOMEA /* Person w/ most influence major decisions */             
      1 = 'You'                                                              
      2 = 'Your'                                                             
      3 = 'Both of you equally'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SPEMPA /* Employment status of significant other */                 
      1 = 'Employed full-time'                                               
      2 = 'Employed part-time'                                               
      3 = 'Keep house full-time'                                             
      4 = 'Retired'                                                          
      5 = 'Unable to wrk dsblty'                                             
      6 = 'Temporary unemployed'                                             
      7 = 'Going to school'                                                  
      8 = 'OTHER'                                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SPEDUCA /* Highest grade, year in school sig other */               
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      10 = 'Some high school'                                                
      11 = 'Some high school'                                                
      12 = 'H.S. grad or GED'                                                
      13 = 'Some college'                                                    
      14 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree'                                                  
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree'                                            
      19 = 'Doctoral degree'                                                 
      20 = 'Professional degree'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWORKA /* Percentage involvement in HH tasks */                    
      0 = 'Percent'                                                          
      100 = 'Percent'                                                        
      997 = 'NO CODED RSP APPLIES'                                           
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value HSWKWEEA /* Hours spent per day during week HH tasks */             
      1 = 'Hours'                                                            
      24 = 'Hours'                                                           
      96 = 'LESS THN 1 HR PR DAY'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWKENDA /* Hrs spent pr day during weekend HH tasks */             
      1 = 'Hours'                                                            
      24 = 'Hours'                                                           
      96 = 'LESS THN 1 HR PR DAY'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HSWKFAIA /* Fairness of overall share of housework */               
      1 = 'Very fair'                                                        
      2 = 'Somewhat fair'                                                    
      3 = 'Somewhat unfair'                                                  
      4 = 'Very unfair'                                                      
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNFOOA /* Past 12 months not enough money HH needs */             
      1 = 'Very often'                                                       
      2 = 'Fairly often'                                                     
      3 = 'Not very often'                                                   
      4 = 'Never'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNMEDA /* Past 12 months not enough money med care */             
      1 = 'Very often'                                                       
      2 = 'Fairly often'                                                     
      3 = 'Not very often'                                                   
      4 = 'Never'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNBILA /* Past 12 months have trouble paying bills */             
      1 = 'Very often'                                                       
      2 = 'Fairly often'                                                     
      3 = 'Not very often'                                                   
      4 = 'Never'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value WORRYA /* Pst 7 days worried lot abt little things */               
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value TENSEA /* Past 7 days felt tense or anxious */                      
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value RESTLESA /* Past 7 days felt restless */                            
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value FEARA /* Past 7 days feared being robbed, attackd */                
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value HMSAFEA /* Past 7 days worried abt home broken into */              
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MADA /* Past 7 days flt annoyd w/ things, people */                 
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value YELLA /* Past 7 days yelled at someone */                           
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ANGRYA /* Past 7 days felt angry */                                 
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value TRUSTA /* Past 7 days flt it safer to trust no one */               
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value SUSPA /* Past 7 days felt suspicious */                             
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGAINSTA /* Past 7 days felt sure everyone against R */             
      0 = 'Days'                                                             
      7 = 'Days'                                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value BREAKINA /* Anyone ever break into home or apartment */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value ASSAULTA /* Someone ever attack or assault R */                     
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DISASTEA /* Ever in major disaster like flood, fire */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value UNEMPLOA /* Unemplyd 6 mnths more when want emplymnt */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value UNEMPNUA /* When unemplyd 6 mnths when want emplymnt */             
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      96 = 'UNEMPLYD OVR 6 MNTHS'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value UNEMPDEA /* Unemployed months ago, years ago */                     
      1 = 'Months ago'                                                       
      2 = 'Years ago'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNEVEA /* Ever time not enough money for HH needs */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value STRNNUMA /* When not enough money for HH needs */                   
      1 = ''                                                                 
      60 = ''                                                                
      61 = '61 or more'                                                      
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value STRNDENA /* Not enough money HH needs mnths, yrs ago */             
      1 = 'Months ago'                                                       
      2 = 'Years ago'                                                        
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value B4WELFA /* Before 18 someone in HH on public assist */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value B4POVA /* Before 18 ever time that HH was poor */                   
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value PMARSTAA /* Parents divorced before R 18 years old */               
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = 'MOTHR DIED BEFORE 18'                                             
      4 = 'FATHR DIED BEFORE 18'                                             
      5 = 'BOTH DIED BEFORE 18'                                              
      6 = 'R PRNTS NEVR MARRIED'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MOMALIVA /* Mother alive now */                                     
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MDAGEA /* Mothers age when she passed away */                       
      10 = 'years old'                                                       
      95 = 'years old'                                                       
      96 = '96 years old or oldr'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value MDAGERA /* Rs age when mother passed away */                        
      1 = 'year old'                                                         
      94 = 'years old'                                                       
      95 = '95 years old or oldr'                                            
      96 = 'LESS THAN ONE YR OLD'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value DADALIVA /* Father alive now */                                     
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value DDAGEA /* Fathers age when he passed away */                        
      10 = 'years old'                                                       
      95 = 'years old'                                                       
      96 = '96 years old or oldr'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value DDAGERA /* Rs age when father passed away */                        
      1 = 'year old'                                                         
      94 = 'years old'                                                       
      95 = '95 years old or oldr'                                            
      96 = 'LESS THAN ONE YR OLD'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value LIFEEXPA /* Age to which R expects  to live */                      
      18 = 'Years old'                                                       
      199 = 'Years old'                                                      
      996 = '200 Years or more'                                              
      997 = 'NO CODED RSP APPLIES'                                           
      998 = 'DON''T KNOW'                                                    
      999 = 'REFUSED' ;                                                      
   value NUMKIDSA /* Number of children R has had in total */                
      0 = 'No children'                                                      
      1 = 'Child'                                                            
      25 = 'Children'                                                        
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value AGEFIRSA /* Age when first child was born */                        
      1 = 'Years old'                                                        
      60 = 'Years old'                                                       
      96 = '60 years old or oldr'                                            
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value OWNHOMEA /* Residence ownership: R, rent, other ownr */             
      1 = 'Own'                                                              
      2 = 'Rent'                                                             
      3 = 'Other'                                                            
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EDA /* Highest year, grade of school completed */                   
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some High school'                                                 
      10 = 'Some High school'                                                
      11 = 'Some High school'                                                
      12 = 'H.S. grad or GED'                                                
      13 = 'Some college'                                                    
      14 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree'                                                  
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree'                                            
      19 = 'Doctoral degree'                                                 
      20 = 'Professional degree'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value COLLREPA /* College or university get highest degree */             
      1 = 'ENTER COLLEGE, UNIV'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value COLLTREA /* City and state where college is located */              
      1 = 'ENTER CITY, STATE'                                                
      2 = 'ENTER FOREIGN CNTRY'                                              
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value MAJORREA /* Major or discipline of highest degree */                
      1 = 'ENTER HIGHEST DEGREE'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EDYEARA /* Year completed ed, last attended school */               
      1900 = ''                                                              
      1994 = ''                                                              
      9996 = 'R CURRENTLY STUDENT'                                           
      9997 = 'NO CODED RSP APPLIES'                                          
      9998 = 'DON''T KNOW'                                                   
      9999 = 'REFUSED' ;                                                     
   value EDMOMA /* Highest year, grade mother completed */                   
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      10 = 'Some high school'                                                
      11 = 'Some high school'                                                
      12 = 'H.S. grad or GED'                                                
      13 = 'Some college'                                                    
      14 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree'                                                  
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree'                                            
      19 = 'Doctoral degree'                                                 
      20 = 'Professional degree'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value EDFATHEA /* Highest year, grade father completed */                 
      0 = 'None'                                                             
      1 = 'Elementary'                                                       
      8 = 'Elementary'                                                       
      9 = 'Some high school'                                                 
      10 = 'Some high school'                                                
      11 = 'Some high school'                                                
      12 = 'H.S. grad or GED'                                                
      13 = 'Some college'                                                    
      14 = 'Some college'                                                    
      15 = 'Some college'                                                    
      16 = 'College degree'                                                  
      17 = 'Some graduate school'                                            
      18 = 'Masters level degree'                                            
      19 = 'Doctoral degree'                                                 
      20 = 'Professional degree'                                             
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value YEARBORA /* Year of birth */                                        
      1876 = ''                                                              
      1977 = ''                                                              
      9997 = 'NO CODED RSP APPLIES'                                          
      9998 = 'DON''T KNOW'                                                   
      9999 = 'REFUSED' ;                                                     
   value USBORNA /* Born in the United States */                             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value AGEIMMIA /* Age when came to the United States */                   
      1 = 'Years old'                                                        
      96 = 'Years old'                                                       
      97 = 'NO CODED RSP APPLIES'                                            
      98 = 'DON''T KNOW'                                                     
      99 = 'REFUSED' ;                                                       
   value ENGLISHA /* English is native language */                           
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value HISPANIA /* Hispanic or Spanish origin */                           
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value RACEA /* Racial background */                                       
      1 = 'White'                                                            
      2 = 'Black, Afrcn Americn'                                             
      3 = 'Asian, Pacifc Islndr'                                             
      4 = 'Native Amercn, Alskn'                                             
      5 = 'Something else'                                                   
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARNREPA /* Annual personal income in 1996 */                       
      1 = 'TO ENTER R''S INCOME'                                             
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN1B /* Dollars annual personal income in 1996 */                 
      0 = 'Dollars'                                                          
      500000 = 'Dollars'                                                     
      500001 = '$500,001 or more'                                            
      999997 = 'NO CODED RSP APPLIES'                                        
      999998 = 'DON''T KNOW'                                                 
      999999 = 'REFUSED' ;                                                   
   value EARN30A /* Personal income 96: < $30K, > $30K, $30K */              
      1 = 'Less than $30,000'                                                
      2 = 'More than $30,000'                                                
      3 = '$30,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN20A /* Personal income 1996: < $20K, $20K exact */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$20,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPIES'                                              
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN10B /* Personal income 1996: < $10K, $10K exact */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$10,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN40A /* Personal income 1996: > $40K, $40K exact */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$40,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN50A /* Personal income 1996: > $50K, $50K exact */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$50,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN75A /* Personal income 1996: > $75K, $75K exact */              
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$75,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value EARN100A /* Personal income 96: > $100K, $100K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$100,000 EXACTLY'                                                 
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value INCREPA /* Total HH income all sources in 1996 */                   
      1 = 'HOUSEHOLD INCOME'                                                 
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN1A /* Dollars total annual HH income in 1996 */                
      0 = 'Dollars'                                                          
      800000 = 'Dollars'                                                     
      800001 = '$800,001 or more'                                            
      999997 = 'NO CODED RSP APPLIES'                                        
      999998 = 'DON''T KNOW'                                                 
      999999 = 'REFUSED' ;                                                   
   value FAMIN30A /* HH total income 96: < $30K, > $30K, $30K */             
      1 = 'Less than $30,000'                                                
      2 = 'More than $30,000'                                                
      3 = '$30,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN20A /* HH total income 1996: < $20K, $20K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$20,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN10B /* HH total income 1996: < $10K, $10K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$10,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN40A /* HH total income 1996: > $40K, $40K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$40,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN50A /* HH total income 1996: > $50K, $50K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$50,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMIN75A /* HH total income 1996: > $75K, $75K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$75,000 EXACTLY'                                                  
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value FAMI100A /* HH total income 96: > $100K, $100K exact */             
      1 = 'Yes'                                                              
      2 = 'No'                                                               
      3 = '$100,000 EXACTLY'                                                 
      7 = 'NO CODED RSP APPLIES'                                             
      8 = 'DON''T KNOW'                                                      
      9 = 'REFUSED' ;                                                        
   value SEXA /* Rs gender */                                                
      1 = 'MALE'                                                             
      2 = 'FEMALE'                                                           
      8 = 'DON''T KNOW' ;                                                    
   value RESGNREA                                                            
      -99 = 'refused'                                                        
      1 = 'negative job characteristics'                                     
      2 = 'conflict with superviser'                                         
      3 = 'got better job'                                                   
      4 = 'job ended'                                                        
      5 = 'job was temporary'                                                
      6 = 'self-employment/family bus'                                       
      7 = 'retired'                                                          
      8 = 'return to school or job training'                                 
      9 = 'got married/spouse doesn''t want r to have job'                   
      10 = 'pregnant/kids/full-time homemaker'                               
      11 = 'care for sick relative'                                          
      12 = 'health problems'                                                 
      13 = 'moved'                                                           
      14 = 'spouse moved for job'                                            
      15 = 'other'                                                           
      16 = 'switched to part-time(new in w2)' ;                              
   value EDSELECA /* Comparative Guide to American Colleges 1991 Selectivity 
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      0 = 'Unranked'                                                         
      1 = 'Selective'                                                        
      2 = 'Selective +'                                                      
      3 = 'Very Selective'                                                   
      4 = 'Very Selective +'                                                 
      5 = 'Highly Selective'                                                 
      6 = 'Highly Selective +'                                               
      7 = 'Most selective' ;                                                 
   value EDTYPEA /* Comparative Guide to American Colleges 1991 College Types
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      1 = 'Public'                                                           
      2 = 'Independent (Private)'                                            
      3 = 'Church-Affiliated' ;                                              
   value EDCARNEA /* Carnegie Foundation Classifications 1994 */             
      -98 = 'Unidentifiable Institution'                                     
      -97 = 'International'                                                  
      -96 = 'Grad/Prof School Only'                                          
      1 = 'Professional Schools and Specialized Institutions'                
      2 = 'Associate of Arts Colleges'                                       
      3 = 'Baccalaureate Colleges II'                                        
      4 = 'Baccalaureate Colleges I'                                         
      5 = 'Masters Universities and Colleges II'                             
      6 = 'Masters Universities and Colleges I'                              
      7 = 'Doctoral University II'                                           
      8 = 'Doctoral University I'                                            
      9 = 'Research University II'                                           
      10 = 'Research University I' ;                                         
                                                                             
                                                                             
DATA;                                                                        
INFILE 'da3334'  LRECL=1513;                                                 
INPUT                                                                        
   ID  1-6                  FINDISP2  7-8            SEX  9              
   INTYEAR  10-11           HEALTH  12               WALKNUM  13-14          
   WALKDEN  15              WALKFAR  16-17           WALKMEAS  18            
   STREXNUM  19-20          STREXDEN  21             MODEXNUM  22-23         
   MODEXDEN  24             HGHTREP  25              HGHTFEET  26-27         
   HGHTINCH  28-29          WEIGHT  30-32            SMOKENOW  33            
   SMOKEVER  34             SMOKQNUM  35-36          SMOKQDEN  37            
   EATMNUM  38-39           EATMDEN  40              EATFNUM  41-42          
   EATFDEN  43              EATCHNUM  44-45          EATCHDEN  46            
   EATCKNUM  47-48          EATCKDEN  49             MILKNUM  50-51          
   MILKDEN  52              ALCOHNUM  53-54          ALCOHDEN  55            
   ALCOHAVG  56-57          STAIRS  58               KNEELING  59            
   CARRYING  60             MEALS  61                SHOPPING  62            
   SEEING  63               HEARING  64              HEARAID  65             
   INSURANC  66             INSTYPE  67-68           HOSPITAL  69            
   HOSPNUM  70-71           HOSPDEN  72              DOCTOR  73-74           
   DXHEART  75              DXHIGHPR  76             DXLUNG  77              
   DXBREAST  78             DXCANCER  79             DXDIABET  80            
   DXARTH  81               DXOSTEO  82              DXALLERG  83            
   DXDIGEST  84             MEDICINE  85             MEDSNOW  86-87          
   HEADACHE  88-89          BACKACHE  90-91          PAINS  92-93            
   SLEEP  94-95             EFFORT  96-97            GETGO  98-99            
   MIND  100-101            SAD  102-103             LONELY  104-105         
   BLUES  106-107           ENJOY  108-109           HOPEFUL  110-111        
   HAPPY  112-113           ENERGY  114-115          FIT  116-117            
   EMP  118-119             EMPNUM  120-121          EMPDEN  122             
   EMPREP  123              OCC1  124-126            TASKREP  127            
   WKROUT  128              WKENJOY  129             WKLEARN  130            
   WKSOLVE  131             WKINTER  132             WKRECOM  133            
   WKSUP  134               WKDISAG  135             WKHOW  136              
   WKWHAT  137              WKROUT2  138             WKENJOY2  139           
   WKLEARN2  140            WKSOLVE2  141            WKINTER2  142           
   WKRECOM2  143            WKSUP2  144              WKDISAG2  145           
   WKHOW2  146              WKWHAT2  147             MANAG  148              
   MANAGLEV  149            EVERFULL  150            EMP2REP  151            
   OCC2  152-154            WORKHIST  155            WORKLEFT  156           
   LEFTREP  157             FATGOOD  158             FATLUCK  159            
   RESPSUC  160             RESPANY  161             FATPROB  162            
   FATBAD  163              RESPMIS  164             RESPFAIL  165           
   VICTIM  166              SURVIVE  167             BADGREED  168           
   SUPPTURN  169            SUPPTALK  170            SUPPHELP  171           
   SUPPSICK  172            VISITNUM  173-174        VISITDEN  175           
   VOLUNTEE  176            VOLNUM  177-178          VOLDEN  179             
   COMMSERV  180            COMMNUM  181-182         COMMDEN  183            
   MIDAGE  184-185          SENIORS  186-187         ADULTS  188-190         
   RELAT1  191-192          RELAT2  193-194          RELAT3  195-196         
   KIDS  197-198            AGEYNG  199-200          MARSTAT  201            
   MARMANY  202             MARAGE  203-204          MARYEARS  205-206       
   MARAGAIN  207            PARTNER  208             MARHAPPY  209           
   DIVTHOT  210             DECHOME  211             SPEMP  212-213          
   SPEDUC  214-215          HSWORK  216-218          HSWKWEEK  219-220       
   HSWKEND  221-222         HSWKFAIR  223            STRNFOOD  224           
   STRNMED  225             STRNBILL  226            WORRY  227-228          
   TENSE  229-230           RESTLESS  231-232        FEAR  233-234           
   HMSAFE  235-236          MAD  237-238             YELL  239-240           
   ANGRY  241-242           TRUST  243-244           SUSP  245-246           
   AGAINST  247-248         BREAKIN  249             ASSAULT  250            
   DISASTER  251            UNEMPLOY  252            UNEMPNUM  253-254       
   UNEMPDEN  255            STRNEVER  256            STRNNUM  257-258        
   STRNDEN  259             PMARSTAT  260            MOMALIVE  261           
   MDEADAGE  262-263        DADALIVE  264            FDEADAGE  265-266       
   LIFEEXPT  267-269        NUMKIDS  270-271         AGEFIRST  272-273       
   OWNHOME  274             ED  275-276              COLLREP  277            
   COLLTREP  278            MAJORREP  279            EDMOM  280-281          
   EDFATHER  282-283        YEARBORN  284-287        USBORN  288             
   AGEIMMIG  289-290        ENGLISH  291             HISPANIC  292           
   RACE  293                EARNREP  294             EARN1  295-300          
   EARN30  301              EARN20  302              EARN10  303             
   EARN40  304              EARN50  305              EARN75  306             
   EARN100  307             INCREP  308              FAMINC1  309-314        
   FAMINC30  315            FAMINC20  316            FAMINC10  317           
   FAMINC40  318            FAMINC50  319            FAMINC75  320           
   FAMIN100  321            EDSELEC  322-324         EDTYPE  325-327         
   EDCARNEG  328-330        WKRESIGN  331-332        TASK  333-334           
   EDMAJOR $ 335-381        EDSPEC  382-383          EDDISC  384-385         
   EDYEAR  386-389          EDTERMDG  390            EDBADEG  391-396        
   EDBAFEM  397-402         EDBAPERC  403-420        EDMADEG  421-425        
   EDMAFEM  426-430         EDMAPERC  431-448        EDDOCDEG  449-453       
   EDDOCFEM  454-458        EDDOCPER  459-476        EDPERCF  477-494        
   INTMONTH  495-496        INTDAY  497-498          STRATAID  499           
   PREFIX  500-502          NUMCALLS  503-504        STATE $ 505-506         
   OCC801  507-509          OCC802  510-512          WKDATA1  513-521        
   WKPEOP1  522-530         WKTHING1  531-538        WKCOLD1  539-550        
   WKENVIR1  551-561        WKHAZAR1  562-572        WKHEAT1  573-583        
   WKNOISE1  584-593        WKOUT1  594-604          WKPHYS1  605-622        
   WKSTRGT1  623-630        WKTRAIN1  631-638        WKWET1  639-656         
   WKDATA2  657-665         WKPEOP2  666-673         WKTHING2  674-681       
   WKCOLD2  682-693         WKENVIR2  694-704        WKHAZAR2  705-715       
   WKHEAT2  716-726         WKNOISE2  727-736        WKOUT2  737-757         
   WKPHYS2  758-767         WKSTRGT2  768-775        WKTRAIN2  776-783       
   WKWET2  784-801          PCTF901  802-806         PCTF902  807-811        
   OCCPRES1  812-814        OCCPRES2  815-817        STRATAI2  818           
   INTDAT2  819-824         NUMCALL2  825-826        HEALTH2  827            
   WALKNUM2  828-829        WALKDEN2  830-831        WALKFAR2  832-833       
   WALKMEA2  834-835        STREXNU2  836-837        STREXDE2  838-839       
   MODEXNU2  840-841        MODEXDE2  842-843        HGHTREP2  844           
   HGHTFEE2  845-846        HGHTINC2  847-848        WEIGHT2  849-851        
   SMOKENO2  852            SMOKEVE2  853-854        SMOKQNU2  855-856       
   SMOKQDE2  857-858        EATMNUM2  859-860        EATMDEN2  861-862       
   EATFNUM2  863-864        EATFDEN2  865-866        EATCHNU2  867-868       
   EATCHDE2  869-870        EATCKNU2  871-872        EATCKDE2  873-874       
   MILKNUM2  875-876        MILKDEN2  877-878        ALCOHNU2  879-880       
   ALCOHDE2  881-882        ALCOHAV2  883-884        STAIRS2  885            
   KNEELIN2  886            CARRYIN2  887            MEALS2  888             
   SHOPPIN2  889            SEEING2  890             HEARING2  891           
   HEARAID2  892-893        INSURAN2  894            INSTYPE2  895-896       
   HOSPITA2  897            HOSPNUM2  898-899        HOSPDEN2  900-901       
   DOCTOR2  902-903         DXHEART2  904            DXHIGH2  905            
   DXLUNG2  906             DXCANCE2  907            DXBREAS2  908-909       
   DXDIABE2  910            DXARTH2  911             DXOSTEO2  912           
   DXALLER2  913            DXDIGES2  914            MEDICIN2  915           
   MEDSNOW2  916-917        HEADACH2  918-919        BACKACH2  920-921       
   PAINS2  922-923          SLEEP2  924-925          EFFORT2  926-927        
   GETGO2  928-929          MIND2  930-931           SAD2  932-933           
   LONELY2  934-935         BLUES2  936-937          ENJOY2  938-939         
   HOPEFUL2  940-941        HAPPY2  942-943          ENERGY2  944-945        
   FIT2  946-947            EMP2  948-949            EMPNUM2  950-951        
   EMPDEN2  952-953         EMPREP2  954-955         IND2  956-957           
   JOBCHG2  958-959         RESPCHG2  960-961        TASK2  962-963          
   WKROUTW2  964-965        WKENJOW2  966-967        WKLEARW2  968-969       
   WKSOLVW2  970-971        WKINTEW2  972-973        WKRECOW2  974-975       
   WKSUPW2  976-977         WKDISAW2  978-979        WKHOWW2  980-981        
   WKWHATW2  982-983        WKROUW22  984-985        WKENJW22  986-987       
   WKLEAW22  988-989        WKSOLW22  990-991        WKINTW22  992-993       
   WKRECW22  994-995        WKSUPW22  996-997        WKDISW22  998-999       
   WKHOWW22  1000-1001      WKWHAW22  1002-1003      MANAGEW2  1004-1005     
   MANLEVW2  1006-1007      EVERFUL2  1008-1009      EMP2REP2  1010-1011     
   IND22  1012-1013         WORKHIS2  1014-1015      WORKLEF2  1016-1017     
   WKRESIG2  1018-1019      FATGOOD2  1020           FATLUCK2  1021          
   RESPSUC2  1022           RESPANY2  1023           FATPROB2  1024          
   FATBAD2  1025            RESPMIS2  1026           RESPFAI2  1027          
   VICTIM2  1028            SURVIVE2  1029           BADGREE2  1030          
   SUPPTUR2  1031           SUPPTAL2  1032           SUPPHEL2  1033          
   SUPPSIC2  1034           VISITNU2  1035-1036      VISITDE2  1037-1038     
   VOLUNTE2  1039           VOLNUM2  1040-1041       VOLDEN2  1042-1043      
   COMMSER2  1044           COMMNUM2  1045-1046      COMMDEN2  1047-1048     
   MIDAGE2  1049-1050       SENIORS2  1051-1052      ADULTS2  1053-1055      
   RELAT12  1056-1057       RELAT22  1058-1059       RELAT32  1060-1061      
   KIDS2  1062-1063         AGEYNG2  1064-1065       MARSTAT2  1066          
   MARMANY2  1067-1068      MARAGE2  1069-1070       MARYEAR2  1071-1072     
   MARAGAI2  1073-1074      PARTNER2  1075-1076      MARHAPP2  1077-1078     
   DIVTHOT2  1079-1080      DECHOME2  1081-1082      SPEMP2  1083-1084       
   SPEDUC2  1085-1086       HSWORK2  1087-1089       HSWKWEE2  1090-1091     
   HSWKEND2  1092-1093      HSWKFAI2  1094-1095      STRNFOO2  1096          
   STRNMED2  1097           STRNBIL2  1098           WORRY2  1099-1100       
   TENSE2  1101-1102        RESTLES2  1103-1104      FEAR2  1105-1106        
   HMSAFE2  1107-1108       MAD2  1109-1110          YELL2  1111-1112        
   ANGRY2  1113-1114        TRUST2  1115-1116        SUSP2  1117-1118        
   AGAINST2  1119-1120      BREAKIN2  1121           ASSAULT2  1122          
   DISASTE2  1123           UNEMPLO2  1124           UNEMPNU2  1125-1126     
   UNEMPDE2  1127-1128      STRNEVE2  1129           STRNNUM2  1130-1131     
   STRNDEN2  1132-1133      B4WELF2  1134            B4POV2  1135-1136       
   PMARSTA2  1137           MOMALIV2  1138-1139      MDAGE2  1140-1141       
   MDAGER2  1142-1143       DADALIV2  1144-1145      DDAGE2  1146-1147       
   DDAGER2  1148-1149       LIFEEXP2  1150-1152      NUMKIDS2  1153-1154     
   AGEFIRS2  1155-1156      OWNHOME2  1157           ED2  1158-1159          
   COLLREP2  1160-1161      COLLTRE2  1162-1163      MAJORRE2  1164-1165     
   EDYEAR2  1166-1169       EDMOM2  1170-1171        EDFATHE2  1172-1173     
   YEARBOR2  1174-1177      USBORN2  1178            AGEIMMI2  1179-1180     
   ENGLISH2  1181           HISPANI2  1182           RACE2  1183             
   EARNREP2  1184           EARN12  1185-1190        EARN302  1191-1192      
   EARN202  1193-1194       EARN102  1195-1196       EARN402  1197-1198      
   EARN502  1199-1200       EARN752  1201-1202       EARN1002  1203-1204     
   INCREP2  1205-1206       FAMIN12  1207-1212       FAMIN302  1213-1214     
   FAMIN202  1215-1216      FAMIN102  1217-1218      FAMIN402  1219-1220     
   FAMIN502  1221-1222      FAMIN752  1223-1224      FAMI1002  1225-1226     
   STATE2 $ 1227-1228       SEX2  1229               OCCW2R  1230-1232       
   INTMON2  1233-1234       INTDAY2  1235-1236       INTYR2  1237-1239       
   OCC80W2  1240-1242       WKDATAW2  1243-1251      WKPEOPW2  1252-1260     
   WKTHINW2  1261-1268      WKCOLDW2  1269-1280      WKENVIW2  1281-1291     
   WKHAZAW2  1292-1302      WKHEATW2  1303-1313      WKNOISW2  1314-1323     
   WKOUTW2  1324-1334       WKPHYSW2  1335-1352      WKSTRGW2  1353-1360     
   WKTRAIW2  1361-1368      WKWETW2  1369-1386       OCCPREW2  1387-1389     
   PCTF90W2  1390-1394      RESGNRE2  1395-1397      EDSELEC2  1398-1400     
   EDTYPE2  1401-1403       EDCARNE2  1404-1406      EDSPEC2  1407-1408      
   EDDISC2  1409-1410       EDTERMD2  1411           EDBADEG2  1412-1417     
   EDBAFEM2  1418-1423      EDBAPER2  1424-1441      EDMADEG2  1442-1446     
   EDMAFEM2  1447-1451      EDMAPER2  1452-1469      EDDOCDE2  1470-1473     
   EDDOCFE2  1474-1477      EDDOCPE2  1478-1495      EDPERCF2  1496-1513 ;   
                                                                             
LABEL                                                                        
   ID = "Case identification number"                                  
   FINDISP2 = "Final disposition code"                                       
   INTYEAR = "Todays year"                                                   
   HEALTH = "In general, Rs health is"                                       
   WALKNUM = "How often R takes a walk"                                      
   WALKDEN = "Day / Week / Month / Year"                                     
   WALKFAR = "How far R walks when walking"                                  
   WALKMEAS = "Blocks / Miles"                                               
   STREXNUM = "How often R does strenuous exercise"                          
   STREXDEN = "Day / Week / Month / Year"                                    
   MODEXNUM = "How often R does moderate exercise"                           
   MODEXDEN = "Day / Week / Month / Year"                                    
   HGHTREP = "Rs height without shoes"                                       
   HGHTFEET = "Number of feet"                                               
   HGHTINCH = "Number of inches"                                             
   WEIGHT = "Rs weight without clothing"                                     
   SMOKENOW = "Does R smoke 7 or more cigarettes a week"                     
   SMOKEVER = "Have ever smoked 7 or more cigs a week"                       
   SMOKQNUM = "How long ago R quit"                                          
   SMOKQDEN = "Weeks / Months / Years"                                       
   EATMNUM = "How often eat red meat"                                        
   EATMDEN = "Day / Week / Month / Year"                                     
   EATFNUM = "How often eat fruits or vegetables"                            
   EATFDEN = "Day / Week / Month / Year"                                     
   EATCHNUM = "How often eat fries, potato chips"                            
   EATCHDEN = "Day / Week / Month / Year"                                    
   EATCKNUM = "How oft eat cookies/candy/doughnuts/cake"                     
   EATCKDEN = "Day / Week / Month / Year"                                    
   MILKNUM = "How oft drink skim or low fat milk"                            
   MILKDEN = "Day / Week / Month / Year"                                     
   ALCOHNUM = "How often R drinks alcoholic beverages"                       
   ALCOHDEN = "Day / Week / Month / Year"                                    
   ALCOHAVG = "Average drinks on days U drink?"                              
   STAIRS = "Difficulty climbing staris"                                     
   KNEELING = "Difficulty kneeling or stooping"                              
   CARRYING = "Difficulty lifting/carrying less 10 lbs"                      
   MEALS = "Difficulty R has doing household work"                           
   SHOPPING = "Difficulty R has shopping/getting around"                     
   SEEING = "Difficulty seeing, even with glasses"                           
   HEARING = "How much does R have difficulty hearing"                       
   HEARAID = "Difficulty hearing with hearing aid"                           
   INSURANC = "R currently covered by health insurance"                      
   INSTYPE = "R insured through"                                             
   HOSPITAL = "Ever been hospitalized for an illness"                        
   HOSPNUM = "How long ago was the most recent time"                         
   HOSPDEN = "Days / Weeks / Months / Years"                                 
   DOCTOR = "Pst yr times R saw/talked med doctor"                           
   DXHEART = "Ever diagnosed with a heart disease"                           
   DXHIGHPR = "Ever diagnosed with high blood pressure"                      
   DXLUNG = "Ever diagnosed with lung disease"                               
   DXBREAST = "Ever diagnosed with breast cancer"                            
   DXCANCER = "Ever diagnosed with any type of cancer"                       
   DXDIABET = "Ever been diagnosed with diabetes"                            
   DXARTH = "Ever diagnosed with arthritis/rheumatism"                       
   DXOSTEO = "Ever been diagnosed with osteoporosis"                         
   DXALLERG = "Ever diagnosed with allergies/asthma"                         
   DXDIGEST = "Ever diagnosed with digestive problems"                       
   MEDICINE = "Taking prescribed medications hlth probl"                     
   MEDSNOW = "Take different prescribed medications"                         
   HEADACHE = "Past week days R had headaches"                               
   BACKACHE = "Past week days R had backaches"                               
   PAINS = "Past week days had other aches and pain"                         
   SLEEP = "Pst wk days trouble going/staying sleep"                         
   EFFORT = "Pst wk days felt that evrythng an effort"                       
   GETGO = "Pst wk days felt R could not get going"                          
   MIND = "Past wk days had trouble keeping mind"                            
   SAD = "Past week days R felt sad"                                         
   LONELY = "Past week days R felt lonely"                                   
   BLUES = "Pst wk days felt could not shake blues"                          
   ENJOY = "Past week days R enjoyed life"                                   
   HOPEFUL = "Pst wk days felt hopeful about future"                         
   HAPPY = "Past week days R felt happy"                                     
   ENERGY = "Past week days R had lots of energy"                            
   FIT = "Past week days R felt physically fit"                              
   EMP = "How spent time on daily basis"                                     
   EMPNUM = "How long have been"                                             
   EMPDEN = "Days / Weeks / Months / Years"                                  
   EMPREP = "Main job title / occupation"                                    
   OCC1 = "R's Current Job"                                                  
   TASKREP = "Work/tasks/activities done during day"                         
   WKROUT = "Does your work usually involve doing"                           
   WKENJOY = "Work gives a chance to do things I enjoy"                      
   WKLEARN = "Work gives R to develop/learn new things"                      
   WKSOLVE = "Work to figure out how to solve problems"                      
   WKINTER = "Work chance interact with people R like"                       
   WKRECOM = "If frnd told intrstd same job R would"                         
   WKSUP = "Anyone supervises work or R report to"                           
   WKDISAG = "How free feel disagree with supervisor"                        
   WKHOW = "Who decides how R will do work"                                  
   WKWHAT = "Decides what R will do in work"                                 
   WKROUT2 = "Daily activities usually involve doing"                        
   WKENJOY2 = "Daily acts give chanc to do things enjoy"                     
   WKLEARN2 = "Daily acts give chanc dev/lrn new things"                     
   WKSOLVE2 = "In daily acts have fig out solve probs"                       
   WKINTER2 = "Daily acts give chanc interact w/ people"                     
   WKRECOM2 = "If frnd told intrstd be hmkr like R"                          
   WKSUP2 = "Anyone who supervises Rs daily activity"                        
   WKDISAG2 = "How free feel disagree w/spvr daily acts"                     
   WKHOW2 = "Decides how R will do daily activities"                         
   WKWHAT2 = "Person usu decides what daily activities"                      
   MANAG = "R in a management position"                                      
   MANAGLEV = "Would R say in"                                               
   EVERFULL = "Were ever employed full-time"                                 
   EMP2REP = "Kind of work R did in full-time job"                           
   OCC2 = "Rs Last Fulltime Job"                                             
   WORKHIST = "Best describes history full-time emplymt"                     
   WORKLEFT = "Reason R left last full-time job"                             
   LEFTREP = "Reason R resigned"                                             
   FATGOOD = "If something good is to happen, it will"                       
   FATLUCK = "Good things that happen are mostly luck"                       
   RESPSUC = "Am responsible for my own successes"                           
   RESPANY = "Can do just about anything I set mind to"                      
   FATPROB = "Most of my problems are due to bad break"                      
   FATBAD = "Have little control over the bad things"                        
   RESPMIS = "My misfortunes are result of my mistakes"                      
   RESPFAIL = "Am responsible for my failures"                               
   VICTIM = "Often a victim of things cant control"                          
   SURVIVE = "Can survive and overcome most bad things"                      
   BADGREED = "A lot of my problems caused by others"                        
   SUPPTURN = "Have someone can turn to for support"                         
   SUPPTALK = "Have someone can really talk to"                              
   SUPPHELP = "Have someone who wld hlp me out w/things"                     
   SUPPSICK = "Have someone who wld hlp if I were sick"                      
   VISITNUM = "How oft visit with friends or relatives"                      
   VISITDEN = "Day / Week / Month / Year"                                    
   VOLUNTEE = "Do volunteer work for church, hospital"                       
   VOLNUM = "How often volunteer"                                            
   VOLDEN = "Day / Week / Month / Year"                                      
   COMMSERV = "Ever participate in community service"                        
   COMMNUM = "How often participate"                                         
   COMMDEN = "Day / Week / Month / Year"                                     
   MIDAGE = "Total number of adults age 18-59 in HH"                         
   SENIORS = "Total number of adults 60/older in HH"                         
   ADULTS = "Total Number of Adults in HH"                                   
   RELAT1 = "Relationship to the oldest adult in HH"                         
   RELAT2 = "Relationship to next oldest adult in HH"                        
   RELAT3 = "Relationship to next oldest adult in HH"                        
   KIDS = "Number children under age 18 live in HH"                          
   AGEYNG = "Age of youngest child in household"                             
   MARSTAT = "R is currently"                                                
   MARMANY = "Number of times been married"                                  
   MARAGE = "Age when first married"                                         
   MARYEARS = "Number of years ago R was"                                    
   MARAGAIN = "Hw much would like get remarried someday"                     
   PARTNER = "Have one person would consider sig othr"                       
   MARHAPPY = "How happy would say with other person"                        
   DIVTHOT = "In pst 12 mos, how oft thought leaving"                        
   DECHOME = "Has most influence in major decisions"                         
   SPEMP = "Is significant other currently"                                  
   SPEDUC = "Highest grade in sch sig oth completed"                         
   HSWORK = "Percentage of household tasks R does"                           
   HSWKWEEK = "Time spent per day on HH tasks dur wk"                        
   HSWKEND = "Time spent per day on HH tasks on wknd"                        
   HSWKFAIR = "How fair think overall share of housewrk"                     
   STRNFOOD = "Pst 12 mos, how oft enough buy HH necess"                     
   STRNMED = "Pst 12 mo, how oft enough pay med care"                        
   STRNBILL = "Pst 12 mos, how oft trouble paying bills"                     
   WORRY = "Pst wk, number days worried small things"                        
   TENSE = "Pst wk days have felt tense or anxious"                          
   RESTLESS = "Pst wk how many days have felt restless"                      
   FEAR = "Past wk days have feared being attacked"                          
   HMSAFE = "Pst wk days worried home maybe broken in"                       
   MAD = "Pst week how many days have felt annoyed"                          
   YELL = "Past week days have yelled at someone"                            
   ANGRY = "Past week how many days have felt angry"                         
   TRUST = "Pst wk felt safer to trust no one."                              
   SUSP = "Past week days have felt suspicious"                              
   AGAINST = "Past week days felt everyone against R"                        
   BREAKIN = "In past anyone break in home/apartment"                        
   ASSAULT = "Someone ever attack or assault R"                              
   DISASTER = "Were ever in a major disaster"                                
   UNEMPLOY = "Unemplyed 6 mos or more R wanted emplymt"                     
   UNEMPNUM = "Months / Years end of recent episode"                         
   UNEMPDEN = "Number of months or years ago"                                
   STRNEVER = "Time R did not have enough money for nec"                     
   STRNNUM = "Months / Years of last time"                                   
   STRNDEN = "Number of months or years ago"                                 
   PMARSTAT = "Parents divorced before 18 yrs old"                           
   MOMALIVE = "Is Rs mother alive now"                                       
   MDEADAGE = "Age R was when she passed away"                               
   DADALIVE = "Is Rs father alive now"                                       
   FDEADAGE = "Age R was when he passed away"                                
   LIFEEXPT = "What age expect to live"                                      
   NUMKIDS = "Number of children have had in total"                          
   AGEFIRST = "Age when first child was born"                                
   OWNHOME = "Own / Rent / Live with relative"                               
   ED = "Highest grade/year of school completed"                             
   COLLREP = "College/University recvd highest degree"                       
   COLLTREP = "City / State / Country of college"                            
   MAJORREP = "Major/Discipline of highest degree"                           
   EDMOM = "Highest grd/yr of ed completed by mother"                        
   EDFATHER = "Highest grd/yr of ed completed by father"                     
   YEARBORN = "In what year R was born"                                      
   USBORN = "Born in the United States"                                      
   AGEIMMIG = "Age when R came to the United States"                         
   ENGLISH = "Is English your native language"                               
   HISPANIC = "Hispanic or Spanish origin"                                   
   RACE = "Is R"                                                             
   EARNREP = "1993 Annual Personal Income before taxes"                      
   EARN1 = "Dollar amount"                                                   
   EARN30 = "Was it"                                                         
   EARN20 = "Was it less than $20,000"                                       
   EARN10 = "Was it less than $10,000"                                       
   EARN40 = "Was it more than $40,000"                                       
   EARN50 = "Was it more than $50,000"                                       
   EARN75 = "Was it more than $75,000"                                       
   EARN100 = "Was it more than $100,000"                                     
   INCREP = "1993 Total Annual HH Income before taxes"                       
   FAMINC1 = "Dollar amount"                                                 
   FAMINC30 = "Was it"                                                       
   FAMINC20 = "Was it less than $20,000"                                     
   FAMINC10 = "Was it less than $10,000"                                     
   FAMINC40 = "Was it more than $40,000"                                     
   FAMINC50 = "Was it more than $50,000"                                     
   FAMINC75 = "Was it more than $75,000"                                     
   FAMIN100 = "Was it more than $100,000"                                    
   EDSELEC = "Comparative Guide to American Colleges 1991 Selectivity Scores 
   EDTYPE = "Comparative Guide to American Colleges 1991 College Types"      
   EDCARNEG = "Carnegie Foundation Classifications 1994"                     
   WKRESIGN = "WKRESIGN-Why resigned last job?"                              
   TASK = "What R Does During Day"                                           
   INTMONTH = "Month Interview was completed"                                
   INTDAY = "Day Interview was Conducted"                                    
   STRATAID = "Strata ID"                                                    
   PREFIX = "Prefix of phone number"                                         
   NUMCALLS = "Total # of call attempts"                                     
   STATE = "State"                                                           
   OCCPRES1 = "1989 NORC/GSS Occ Prestige Codes"                             
   OCCPRES2 = "1989 NORC/GSS Occ Prestige Codes"                             
   STRATAI2 = "Final disposition code"                                       
   INTDAT2 = "Date of final disposition"                                     
   NUMCALL2 = "Total number of contact attempts"                             
   HEALTH2 = "General status of health"                                      
   WALKNUM2 = "How often take a walk"                                        
   WALKDEN2 = "Day, week, month, year"                                       
   WALKFAR2 = "Distance walked during typical walk"                          
   WALKMEA2 = "Blocks, miles"                                                
   STREXNU2 = "How often do strenuous exercise"                              
   STREXDE2 = "Day, week, month, year"                                       
   MODEXNU2 = "How often do moderate exercise"                               
   MODEXDE2 = "Day, week, month, year"                                       
   HGHTREP2 = "Height without shoes"                                         
   HGHTFEE2 = "Number of feet"                                               
   HGHTINC2 = "Number of inches"                                             
   WEIGHT2 = "Weight without clothing"                                       
   SMOKENO2 = "Currently smoke 7 or more cigs a week"                        
   SMOKEVE2 = "Ever smoked 7 or more cigs a week"                            
   SMOKQNU2 = "How long ago quit smoking"                                    
   SMOKQDE2 = "Quit smoking weeks, months, years ago"                        
   EATMNUM2 = "How often eat red meat"                                       
   EATMDEN2 = "Red meat per day, week, month, year"                          
   EATFNUM2 = "How often eat fruits or vegetables"                           
   EATFDEN2 = "Fruits, vegetables per day, wk, mnth, yr"                     
   EATCHNU2 = "How often eat french fries or chips"                          
   EATCHDE2 = "French fries, chps per day, wk, mnth, yr"                     
   EATCKNU2 = "How often eat cookies, doughnuts, cake"                       
   EATCKDE2 = "Cookies, doughnuts per day, wk, mnth, yr"                     
   MILKNUM2 = "How often drink skim or low fat milk"                         
   MILKDEN2 = "Skim, low fat milk per day, wk, mnth, yr"                     
   ALCOHNU2 = "How often drink alcohlic beverages"                           
   ALCOHDE2 = "Alcoholc beverages per day, wk, mnth, yr"                     
   ALCOHAV2 = "Number of alcoholic beverages consumed"                       
   STAIRS2 = "Difficulty climbing stairs"                                    
   KNEELIN2 = "Difficulty kneeling or stooping"                              
   CARRYIN2 = "Difficulty lift, carry objects < 10 lbs."                     
   MEALS2 = "Difficulty preparing meals, clean house"                        
   SHOPPIN2 = "Difficulty shopping, getting around town"                     
   SEEING2 = "Difficulty seeing, even with glasses"                          
   HEARING2 = "Difficulty hearing"                                           
   HEARAID2 = "Difficulty hearing with hearing aid"                          
   INSURAN2 = "Currently covered by health insurance"                        
   INSTYPE2 = "Health insurance coverage is provided by"                     
   HOSPITA2 = "Hospitalized for serious illness, injury"                     
   HOSPNUM2 = "Time since most recent hospitalization"                       
   HOSPDEN2 = "Days, wks, mnths, yrs since last hosptl"                      
   DOCTOR2 = "Times seen, talked to MD past 12 months"                       
   DXHEART2 = "Diagnosed by MD have heart disease"                           
   DXHIGH2 = "Diagnosed by MD have high blood pressure"                      
   DXLUNG2 = "Diagnosed by MD have lung disease"                             
   DXCANCE2 = "Diagnosed by MD have any type of cancer"                      
   DXBREAS2 = "Diagnosed by MD have breast cancer"                           
   DXDIABE2 = "Diagnosed by MD have diabetes"                                
   DXARTH2 = "Diagnosd by MD hav arthritis, rheumatism"                      
   DXOSTEO2 = "Diagnosed by MD have osteoporosis"                            
   DXALLER2 = "Diagnosed by MD have allergies, asthma"                       
   DXDIGES2 = "Diagnosed by MD have ulcers, colitis"                         
   MEDICIN2 = "Taking prescribed meds for any hlth prob"                     
   MEDSNOW2 = "Number of different prescribed medicatns"                     
   HEADACH2 = "Days during past 7 had headaches"                             
   BACKACH2 = "Days during past 7 had backaches"                             
   PAINS2 = "Days durng past 7 had other aches, pains"                       
   SLEEP2 = "Days durng past 7 had trouble sleeping"                         
   EFFORT2 = "Days during past 7 everything an effort"                       
   GETGO2 = "Days during past 7 could not get going"                         
   MIND2 = "Days during past 7 trouble keep focused"                         
   SAD2 = "Days during past 7 felt sad"                                      
   LONELY2 = "Days during past 7 felt lonely"                                
   BLUES2 = "Days during past 7 could not shake blues"                       
   ENJOY2 = "Days during past 7 enjoyed life"                                
   HOPEFUL2 = "Days durng past 7 felt hopeful of future"                     
   HAPPY2 = "Days during past 7 felt happy"                                  
   ENERGY2 = "Days during past 7 had lots of energy"                         
   FIT2 = "Days during past 7 felt physically fit"                           
   EMP2 = "Current employment / education status"                            
   EMPNUM2 = "How long current employ / educatn status"                      
   EMPDEN2 = "Employ / ed status days, wks, mnths, yrs"                      
   EMPREP2 = "Main job title or occupation"                                  
   IND2 = "Type of business or industry"                                     
   JOBCHG2 = "Job title changed"                                             
   RESPCHG2 = "Major job responsibilities changed"                           
   TASK2 = "Kind of work, tasks, or activities done"                         
   WKROUTW2 = "What work usually involves"                                   
   WKENJOW2 = "Work gives chance to do enjoyable things"                     
   WKLEARW2 = "Work gives chance to develop and learn"                       
   WKSOLVW2 = "Have to figure out how to solve problems"                     
   WKINTEW2 = "Work gives chance to interact w/ people"                      
   WKRECOW2 = "Advice to friend about doing what R does"                     
   WKSUPW2 = "Person supervises work, to whom report"                        
   WKDISAW2 = "Freedom to disagree with supervisor"                          
   WKHOWW2 = "Who decides how Rs work will be done"                          
   WKWHATW2 = "Who decides what will be done in Rs work"                     
   WKROUW22 = "What daily activities usually involve"                        
   WKENJW22 = "Daily activs chance do enjoyable things"                      
   WKLEAW22 = "Daily activs chance to develop and learn"                     
   WKSOLW22 = "Daily activs figure how to solve problms"                     
   WKINTW22 = "Daily activs giv chnc interact w/ people"                     
   WKRECW22 = "Advice to friend about doing what R does"                     
   WKSUPW22 = "Person who supervises daily activities"                       
   WKDISW22 = "Freedom disagree w/ spvr of daily activs"                     
   WKHOWW22 = "Who decides how daily actvs will be done"                     
   WKWHAW22 = "Who decids what will be done daily actvs"                     
   MANAGEW2 = "In a management position"                                     
   MANLEVW2 = "Level of management in which involved"                        
   EVERFUL2 = "Ever employed full-time"                                      
   EMP2REP2 = "Title of most recent full-time job, occ"                      
   IND22 = "Type of business, industry was job w/in"                         
   WORKHIS2 = "Description full-time employment history"                     
   WORKLEF2 = "Reason why left last full-time job"                           
   WKRESIG2 = "Reason why resigned"                                          
   FATGOOD2 = "No sense planning, good will happen"                          
   FATLUCK2 = "Really good things that happen are luck"                      
   RESPSUC2 = "Responsible for own successes"                                
   RESPANY2 = "Can do just about anything set mind to"                       
   FATPROB2 = "Most of problems are due to bad breaks"                       
   FATBAD2 = "Little contrl ovr bad things that happen"                      
   RESPMIS2 = "Misfortunes are result of mistakes made"                      
   RESPFAI2 = "Responsible for failures"                                     
   VICTIM2 = "Often a victim of things cannot control"                       
   SURVIVE2 = "Can survive and overcome most bad things"                     
   BADGREE2 = "Problems caused by othrs selfish, greedy"                     
   SUPPTUR2 = "Have someone for support, understanding"                      
   SUPPTAL2 = "Have someone can really talk to"                              
   SUPPHEL2 = "Have someone who would help with things"                      
   SUPPSIC2 = "Have someone to provide care if sick"                         
   VISITNU2 = "How often visit in person friends, rels"                      
   VISITDE2 = "Visit day, week, month, year"                                 
   VOLUNTE2 = "Volunteer church, hosp, library, scouts"                      
   VOLNUM2 = "How often volunteer"                                           
   VOLDEN2 = "Volunteer day, week, month, year"                              
   COMMSER2 = "Participate in community service, orgs"                       
   COMMNUM2 = "How often participate in comm serv, orgs"                     
   COMMDEN2 = "Participate day, week, month, year"                           
   MIDAGE2 = "Total number adults 18 to 59 live in HH"                       
   SENIORS2 = "Total number adults 60 or older live HH"                      
   ADULTS2 = "Total number of adults in the HH"                              
   RELAT12 = "Relationship to oldest adult in HH"                            
   RELAT22 = "Relationship to next oldest adult in HH"                       
   RELAT32 = "Relationship to next oldest adult in HH"                       
   KIDS2 = "Children under age 18 live in HH"                                
   AGEYNG2 = "Age of youngest child in HH"                                   
   MARSTAT2 = "Current marital status"                                       
   MARMANY2 = "Number of times R has been married"                           
   MARAGE2 = "Age when first married"                                        
   MARYEAR2 = "Number years ago"                                             
   MARAGAI2 = "How much would like to remarry someday"                       
   PARTNER2 = "Person consider sig other, intmt partner"                     
   MARHAPP2 = "How happy R is with significant other"                        
   DIVTHOT2 = "Past 12 months thought leaving sig other"                     
   DECHOME2 = "Person w/ most influence major decisions"                     
   SPEMP2 = "Employment status of significant other"                         
   SPEDUC2 = "Highest grade, year in school sig other"                       
   HSWORK2 = "Percentage involvement in HH tasks"                            
   HSWKWEE2 = "Hours spent per day during week HH tasks"                     
   HSWKEND2 = "Hrs spent pr day during weekend HH tasks"                     
   HSWKFAI2 = "Fairness of overall share of housework"                       
   STRNFOO2 = "Past 12 months not enough money HH needs"                     
   STRNMED2 = "Past 12 months not enough money med care"                     
   STRNBIL2 = "Past 12 months have trouble paying bills"                     
   WORRY2 = "Pst 7 days worried lot abt little things"                       
   TENSE2 = "Past 7 days felt tense or anxious"                              
   RESTLES2 = "Past 7 days felt restless"                                    
   FEAR2 = "Past 7 days feared being robbed, attackd"                        
   HMSAFE2 = "Past 7 days worried abt home broken into"                      
   MAD2 = "Past 7 days flt annoyd w/ things, people"                         
   YELL2 = "Past 7 days yelled at someone"                                   
   ANGRY2 = "Past 7 days felt angry"                                         
   TRUST2 = "Past 7 days flt it safer to trust no one"                       
   SUSP2 = "Past 7 days felt suspicious"                                     
   AGAINST2 = "Past 7 days felt sure everyone against R"                     
   BREAKIN2 = "Anyone ever break into home or apartment"                     
   ASSAULT2 = "Someone ever attack or assault R"                             
   DISASTE2 = "Ever in major disaster like flood, fire"                      
   UNEMPLO2 = "Unemplyd 6 mnths more when want emplymnt"                     
   UNEMPNU2 = "When unemplyd 6 mnths when want emplymnt"                     
   UNEMPDE2 = "Unemployed months ago, years ago"                             
   STRNEVE2 = "Ever time not enough money for HH needs"                      
   STRNNUM2 = "When not enough money for HH needs"                           
   STRNDEN2 = "Not enough money HH needs mnths, yrs ago"                     
   B4WELF2 = "Before 18 someone in HH on public assist"                      
   B4POV2 = "Before 18 ever time that HH was poor"                           
   PMARSTA2 = "Parents divorced before R 18 years old"                       
   MOMALIV2 = "Mother alive now"                                             
   MDAGE2 = "Mothers age when she passed away"                               
   MDAGER2 = "Rs age when mother passed away"                                
   DADALIV2 = "Father alive now"                                             
   DDAGE2 = "Fathers age when he passed away"                                
   DDAGER2 = "Rs age when father passed away"                                
   LIFEEXP2 = "Age to which R expects  to live"                              
   NUMKIDS2 = "Number of children R has had in total"                        
   AGEFIRS2 = "Age when first child was born"                                
   OWNHOME2 = "Residence ownership: R, rent, other ownr"                     
   ED2 = "Highest year, grade of school completed"                           
   COLLREP2 = "College or university get highest degree"                     
   COLLTRE2 = "City and state where college is located"                      
   MAJORRE2 = "Major or discipline of highest degree"                        
   EDYEAR2 = "Year completed ed, last attended school"                       
   EDMOM2 = "Highest year, grade mother completed"                           
   EDFATHE2 = "Highest year, grade father completed"                         
   YEARBOR2 = "Year of birth"                                                
   USBORN2 = "Born in the United States"                                     
   AGEIMMI2 = "Age when came to the United States"                           
   ENGLISH2 = "English is native language"                                   
   HISPANI2 = "Hispanic or Spanish origin"                                   
   RACE2 = "Racial background"                                               
   EARNREP2 = "Annual personal income in 1996"                               
   EARN12 = "Dollars annual personal income in 1996"                         
   EARN302 = "Personal income 96: < $30K, > $30K, $30K"                      
   EARN202 = "Personal income 1996: < $20K, $20K exact"                      
   EARN102 = "Personal income 1996: < $10K, $10K exact"                      
   EARN402 = "Personal income 1996: > $40K, $40K exact"                      
   EARN502 = "Personal income 1996: > $50K, $50K exact"                      
   EARN752 = "Personal income 1996: > $75K, $75K exact"                      
   EARN1002 = "Personal income 96: > $100K, $100K exact"                     
   INCREP2 = "Total HH income all sources in 1996"                           
   FAMIN12 = "Dollars total annual HH income in 1996"                        
   FAMIN302 = "HH total income 96: < $30K, > $30K, $30K"                     
   FAMIN202 = "HH total income 1996: < $20K, $20K exact"                     
   FAMIN102 = "HH total income 1996: < $10K, $10K exact"                     
   FAMIN402 = "HH total income 1996: > $40K, $40K exact"                     
   FAMIN502 = "HH total income 1996: > $50K, $50K exact"                     
   FAMIN752 = "HH total income 1996: > $75K, $75K exact"                     
   FAMI1002 = "HH total income 96: > $100K, $100K exact"                     
   STATE2 = "2-letter state abbreviation"                                    
   SEX2 = "Rs gender"                                                        
   OCCW2R = "Occupation code"                                                
   INTMON2 = "month of interview wave 2"                                     
   INTDAY2 = "day of interview wave 2"                                       
   INTYR2 = "year of interview wave 2"                                       
   OCCPREW2 = "1989 NORC/GSS Occ Prestige Codes"                             
   EDSELEC2 = "Comparative Guide to American Colleges 1991 Selectivity Scores
   EDTYPE2 = "Comparative Guide to American Colleges 1991 College Types"     
   EDCARNE2 = "Carnegie Foundation Classifications 1994"                     
;                                                                            
                                                                             
 /* User Missing Value Specifications */                                     
  IF EDBADEG = -98 THEN EDBADEG =. ;                                         
  IF EDBAFEM = -98 THEN EDBAFEM =. ;                                         
  IF EDMADEG = -98 THEN EDMADEG =. ;                                         
  IF EDMAFEM = -98 THEN EDMAFEM =. ;                                         
  IF EDDOCDEG = -98 THEN EDDOCDEG =. ;                                       
  IF EDDOCFEM = -98 THEN EDDOCFEM =. ;                                       
  IF OCC801 = -9 THEN OCC801 =. ;                                            
  IF OCC802 = -9 THEN OCC802 =. ;                                            
  IF WKDATA1 = -99 THEN WKDATA1 =. ;                                         
  IF WKPEOP1 = -99 THEN WKPEOP1 =. ;                                         
  IF WKTHING1 = -99 THEN WKTHING1 =. ;                                       
  IF WKCOLD1 = -99 THEN WKCOLD1 =. ;                                         
  IF WKENVIR1 = -99 THEN WKENVIR1 =. ;                                       
  IF WKHAZAR1 = -99 THEN WKHAZAR1 =. ;                                       
  IF WKHEAT1 = -99 THEN WKHEAT1 =. ;                                         
  IF WKNOISE1 = -99 THEN WKNOISE1 =. ;                                       
  IF WKOUT1 = -99 THEN WKOUT1 =. ;                                           
  IF WKPHYS1 = -99 THEN WKPHYS1 =. ;                                         
  IF WKSTRGT1 = -99 THEN WKSTRGT1 =. ;                                       
  IF WKTRAIN1 = -99 THEN WKTRAIN1 =. ;                                       
  IF WKWET1 = -99 THEN WKWET1 =. ;                                           
  IF WKDATA2 = -99 THEN WKDATA2 =. ;                                         
  IF WKPEOP2 = -99 THEN WKPEOP2 =. ;                                         
  IF WKTHING2 = -99 THEN WKTHING2 =. ;                                       
  IF WKCOLD2 = -99 THEN WKCOLD2 =. ;                                         
  IF WKENVIR2 = -99 THEN WKENVIR2 =. ;                                       
  IF WKHAZAR2 = -99 THEN WKHAZAR2 =. ;                                       
  IF WKHEAT2 = -99 THEN WKHEAT2 =. ;                                         
  IF WKNOISE2 = -99 THEN WKNOISE2 =. ;                                       
  IF WKOUT2 = -99 THEN WKOUT2 =. ;                                           
  IF WKPHYS2 = -99 THEN WKPHYS2 =. ;                                         
  IF WKSTRGT2 = -99 THEN WKSTRGT2 =. ;                                       
  IF WKTRAIN2 = -99 THEN WKTRAIN2 =. ;                                       
  IF WKWET2 = -99 THEN WKWET2 =. ;                                           
  IF PCTF901 = -99 THEN PCTF901 =. ;                                         
  IF PCTF902 = -99 THEN PCTF902 =. ;                                         
  IF OCCPRES1 = -99 THEN OCCPRES1 =. ;                                       
  IF OCCPRES2 = -99 THEN OCCPRES2 =. ;                                       
  IF INTMON2 = -9 THEN INTMON2 =. ;                                          
  IF INTDAY2 = -9 THEN INTDAY2 =. ;                                          
  IF INTYR2 = -99 THEN INTYR2 =. ;                                           
  IF OCC80W2 = -9 THEN OCC80W2 =. ;                                          
  IF WKDATAW2 = -99 THEN WKDATAW2 =. ;                                       
  IF WKPEOPW2 = -99 THEN WKPEOPW2 =. ;                                       
  IF WKTHINW2 = -99 THEN WKTHINW2 =. ;                                       
  IF WKCOLDW2 = -99 THEN WKCOLDW2 =. ;                                       
  IF WKENVIW2 = -99 THEN WKENVIW2 =. ;                                       
  IF WKHAZAW2 = -99 THEN WKHAZAW2 =. ;                                       
  IF WKHEATW2 = -99 THEN WKHEATW2 =. ;                                       
  IF WKNOISW2 = -99 THEN WKNOISW2 =. ;                                       
  IF WKOUTW2 = -99 THEN WKOUTW2 =. ;                                         
  IF WKPHYSW2 = -99 THEN WKPHYSW2 =. ;                                       
  IF WKSTRGW2 = -99 THEN WKSTRGW2 =. ;                                       
  IF WKTRAIW2 = -99 THEN WKTRAIW2 =. ;                                       
  IF WKWETW2 = -99 THEN WKWETW2 =. ;                                         
  IF OCCPREW2 = -99 THEN OCCPREW2 =. ;                                       
  IF PCTF90W2 = -99 THEN PCTF90W2 =. ;                                       
                                                                             
FORMAT                                                                       
   FINDISP2 FINDISPA.       HEALTH HEALTH.           WALKNUM WALKNUM.        
   WALKDEN WALKDEN.         WALKFAR WALKFAR.         WALKMEAS WALKMEAS.      
   STREXNUM STREXNUM.       STREXDEN STREXDEN.       MODEXNUM MODEXNUM.      
   MODEXDEN MODEXDEN.       HGHTREP HGHTREP.         HGHTFEET HGHTFEET.      
   HGHTINCH HGHTINCH.       WEIGHT WEIGHT.           SMOKENOW SMOKENOW.      
   SMOKEVER SMOKEVER.       SMOKQNUM SMOKQNUM.       SMOKQDEN SMOKQDEN.      
   EATMNUM EATMNUM.         EATMDEN EATMDEN.         EATFNUM EATFNUM.        
   EATFDEN EATFDEN.         EATCHNUM EATCHNUM.       EATCHDEN EATCHDEN.      
   EATCKNUM EATCKNUM.       EATCKDEN EATCKDEN.       MILKNUM MILKNUM.        
   MILKDEN MILKDEN.         ALCOHNUM ALCOHNUM.       ALCOHDEN ALCOHDEN.      
   ALCOHAVG ALCOHAVG.       STAIRS STAIRS.           KNEELING KNEELING.      
   CARRYING CARRYING.       MEALS MEALS.             SHOPPING SHOPPING.      
   SEEING SEEING.           HEARING HEARING.         HEARAID HEARAID.        
   INSURANC INSURANC.       INSTYPE INSTYPE.         HOSPITAL HOSPITAL.      
   HOSPNUM HOSPNUM.         HOSPDEN HOSPDEN.         DOCTOR DOCTOR.          
   DXHEART DXHEART.         DXHIGHPR DXHIGHPR.       DXLUNG DXLUNG.          
   DXBREAST DXBREAST.       DXCANCER DXCANCER.       DXDIABET DXDIABET.      
   DXARTH DXARTH.           DXOSTEO DXOSTEO.         DXALLERG DXALLERG.      
   DXDIGEST DXDIGEST.       MEDICINE MEDICINE.       MEDSNOW MEDSNOW.        
   HEADACHE HEADACHE.       BACKACHE BACKACHE.       PAINS PAINS.            
   SLEEP SLEEP.             EFFORT EFFORT.           GETGO GETGO.            
   MIND MIND.               SAD SAD.                 LONELY LONELY.          
   BLUES BLUES.             ENJOY ENJOY.             HOPEFUL HOPEFUL.        
   HAPPY HAPPY.             ENERGY ENERGY.           FIT FIT.                
   EMP EMP.                 EMPNUM EMPNUM.           EMPDEN EMPDEN.          
   EMPREP EMPREP.           TASKREP TASKREP.         WKROUT WKROUT.          
   WKENJOY WKENJOY.         WKLEARN WKLEARN.         WKSOLVE WKSOLVE.        
   WKINTER WKINTER.         WKRECOM WKRECOM.         WKSUP WKSUP.            
   WKDISAG WKDISAG.         WKHOW WKHOW.             WKWHAT WKWHAT.          
   WKROUT2 WKROUTA.         WKENJOY2 WKENJOYA.       WKLEARN2 WKLEARNA.      
   WKSOLVE2 WKSOLVEA.       WKINTER2 WKINTERA.       WKRECOM2 WKRECOMA.      
   WKSUP2 WKSUPA.           WKDISAG2 WKDISAGA.       WKHOW2 WKHOWA.          
   WKWHAT2 WKWHATA.         MANAG MANAG.             MANAGLEV MANAGLEV.      
   EVERFULL EVERFULL.       EMP2REP EMP2REP.         WORKHIST WORKHIST.      
   WORKLEFT WORKLEFT.       LEFTREP LEFTREP.         FATGOOD FATGOOD.        
   FATLUCK FATLUCK.         RESPSUC RESPSUC.         RESPANY RESPANY.        
   FATPROB FATPROB.         FATBAD FATBAD.           RESPMIS RESPMIS.        
   RESPFAIL RESPFAIL.       VICTIM VICTIM.           SURVIVE SURVIVE.        
   BADGREED BADGREED.       SUPPTURN SUPPTURN.       SUPPTALK SUPPTALK.      
   SUPPHELP SUPPHELP.       SUPPSICK SUPPSICK.       VISITNUM VISITNUM.      
   VISITDEN VISITDEN.       VOLUNTEE VOLUNTEE.       VOLNUM VOLNUM.          
   VOLDEN VOLDEN.           COMMSERV COMMSERV.       COMMNUM COMMNUM.        
   COMMDEN COMMDEN.         MIDAGE MIDAGE.           SENIORS SENIORS.        
   RELAT1 RELATA.           RELAT2 RELATB.           RELAT3 RELATC.          
   KIDS KIDS.               AGEYNG AGEYNG.           MARSTAT MARSTAT.        
   MARMANY MARMANY.         MARAGE MARAGE.           MARYEARS MARYEARS.      
   MARAGAIN MARAGAIN.       PARTNER PARTNER.         MARHAPPY MARHAPPY.      
   DIVTHOT DIVTHOT.         DECHOME DECHOME.         SPEMP SPEMP.            
   SPEDUC SPEDUC.           HSWORK HSWORK.           HSWKWEEK HSWKWEEK.      
   HSWKEND HSWKEND.         HSWKFAIR HSWKFAIR.       STRNFOOD STRNFOOD.      
   STRNMED STRNMED.         STRNBILL STRNBILL.       WORRY WORRY.            
   TENSE TENSE.             RESTLESS RESTLESS.       FEAR FEAR.              
   HMSAFE HMSAFE.           MAD MAD.                 YELL YELL.              
   ANGRY ANGRY.             TRUST TRUST.             SUSP SUSP.              
   AGAINST AGAINST.         BREAKIN BREAKIN.         ASSAULT ASSAULT.        
   DISASTER DISASTER.       UNEMPLOY UNEMPLOY.       UNEMPNUM UNEMPNUM.      
   UNEMPDEN UNEMPDEN.       STRNEVER STRNEVER.       STRNNUM STRNNUM.        
   STRNDEN STRNDEN.         PMARSTAT PMARSTAT.       MOMALIVE MOMALIVE.      
   MDEADAGE MDEADAGE.       DADALIVE DADALIVE.       FDEADAGE FDEADAGE.      
   LIFEEXPT LIFEEXPT.       NUMKIDS NUMKIDS.         AGEFIRST AGEFIRST.      
   OWNHOME OWNHOME.         ED ED.                   COLLREP COLLREP.        
   COLLTREP COLLTREP.       MAJORREP MAJORREP.       EDMOM EDMOM.            
   EDFATHER EDFATHER.       YEARBORN YEARBORN.       USBORN USBORN.          
   AGEIMMIG AGEIMMIG.       ENGLISH ENGLISH.         HISPANIC HISPANIC.      
   RACE RACE.               EARNREP EARNREP.         EARN1 EARNA.            
   EARN30 EARN3A.           EARN20 EARN2A.           EARN10 EARN1A.          
   EARN40 EARN4A.           EARN50 EARN5A.           EARN75 EARN7A.          
   EARN100 EARN10A.         INCREP INCREP.           FAMINC1 FAMINCA.        
   FAMINC30 FAMINC3A.       FAMINC20 FAMINC2A.       FAMINC10 FAMINC1A.      
   FAMINC40 FAMINC4A.       FAMINC50 FAMINC5A.       FAMINC75 FAMINC7A.      
   FAMIN100 FAMIN10A.       EDSELEC EDSELEC.         EDTYPE EDTYPE.          
   EDCARNEG EDCARNEG.       WKRESIGN WKRESIGN.       TASK TASK.              
   INTMONTH INTMONTH.       STRATAID STRATAID.       STRATAI2 STRATAIA.      
   HEALTH2 HEALTHA.         WALKNUM2 WALKNUMA.       WALKDEN2 WALKDENA.      
   WALKFAR2 WALKFARA.       WALKMEA2 WALKMEAA.       STREXNU2 STREXNUA.      
   STREXDE2 STREXDEA.       MODEXNU2 MODEXNUA.       MODEXDE2 MODEXDEA.      
   HGHTREP2 HGHTREPA.       HGHTFEE2 HGHTFEEA.       HGHTINC2 HGHTINCA.      
   WEIGHT2 WEIGHTA.         SMOKENO2 SMOKENOA.       SMOKEVE2 SMOKEVEA.      
   SMOKQNU2 SMOKQNUA.       SMOKQDE2 SMOKQDEA.       EATMNUM2 EATMNUMA.      
   EATMDEN2 EATMDENA.       EATFNUM2 EATFNUMA.       EATFDEN2 EATFDENA.      
   EATCHNU2 EATCHNUA.       EATCHDE2 EATCHDEA.       EATCKNU2 EATCKNUA.      
   EATCKDE2 EATCKDEA.       MILKNUM2 MILKNUMA.       MILKDEN2 MILKDENA.      
   ALCOHNU2 ALCOHNUA.       ALCOHDE2 ALCOHDEA.       ALCOHAV2 ALCOHAVA.      
   STAIRS2 STAIRSA.         KNEELIN2 KNEELINA.       CARRYIN2 CARRYINA.      
   MEALS2 MEALSA.           SHOPPIN2 SHOPPINA.       SEEING2 SEEINGA.        
   HEARING2 HEARINGA.       HEARAID2 HEARAIDA.       INSURAN2 INSURANA.      
   INSTYPE2 INSTYPEA.       HOSPITA2 HOSPITAA.       HOSPNUM2 HOSPNUMA.      
   HOSPDEN2 HOSPDENA.       DOCTOR2 DOCTORA.         DXHEART2 DXHEARTA.      
   DXHIGH2 DXHIGHA.         DXLUNG2 DXLUNGA.         DXCANCE2 DXCANCEA.      
   DXBREAS2 DXBREASA.       DXDIABE2 DXDIABEA.       DXARTH2 DXARTHA.        
   DXOSTEO2 DXOSTEOA.       DXALLER2 DXALLERA.       DXDIGES2 DXDIGESA.      
   MEDICIN2 MEDICINA.       MEDSNOW2 MEDSNOWA.       HEADACH2 HEADACHA.      
   BACKACH2 BACKACHA.       PAINS2 PAINSA.           SLEEP2 SLEEPA.          
   EFFORT2 EFFORTA.         GETGO2 GETGOA.           MIND2 MINDA.            
   SAD2 SADA.               LONELY2 LONELYA.         BLUES2 BLUESA.          
   ENJOY2 ENJOYA.           HOPEFUL2 HOPEFULA.       HAPPY2 HAPPYA.          
   ENERGY2 ENERGYA.         FIT2 FITA.               EMP2 EMPA.              
   EMPNUM2 EMPNUMA.         EMPDEN2 EMPDENA.         EMPREP2 EMPREPA.        
   IND2 INDA.               JOBCHG2 JOBCHGA.         RESPCHG2 RESPCHGA.      
   TASK2 TASKA.             WKROUTW2 WKROUTWA.       WKENJOW2 WKENJOWA.      
   WKLEARW2 WKLEARWA.       WKSOLVW2 WKSOLVWA.       WKINTEW2 WKINTEWA.      
   WKRECOW2 WKRECOWA.       WKSUPW2 WKSUPWA.         WKDISAW2 WKDISAWA.      
   WKHOWW2 WKHOWWA.         WKWHATW2 WKWHATWA.       WKROUW22 WKROUW2A.      
   WKENJW22 WKENJW2A.       WKLEAW22 WKLEAW2A.       WKSOLW22 WKSOLW2A.      
   WKINTW22 WKINTW2A.       WKRECW22 WKRECW2A.       WKSUPW22 WKSUPW2A.      
   WKDISW22 WKDISW2A.       WKHOWW22 WKHOWW2A.       WKWHAW22 WKWHAW2A.      
   MANAGEW2 MANAGEWA.       MANLEVW2 MANLEVWA.       EVERFUL2 EVERFULA.      
   EMP2REP2 EMP2REPA.       IND22 IND2A.             WORKHIS2 WORKHISA.      
   WORKLEF2 WORKLEFA.       WKRESIG2 WKRESIGA.       FATGOOD2 FATGOODA.      
   FATLUCK2 FATLUCKA.       RESPSUC2 RESPSUCA.       RESPANY2 RESPANYA.      
   FATPROB2 FATPROBA.       FATBAD2 FATBADA.         RESPMIS2 RESPMISA.      
   RESPFAI2 RESPFAIA.       VICTIM2 VICTIMA.         SURVIVE2 SURVIVEA.      
   BADGREE2 BADGREEA.       SUPPTUR2 SUPPTURA.       SUPPTAL2 SUPPTALA.      
   SUPPHEL2 SUPPHELA.       SUPPSIC2 SUPPSICA.       VISITNU2 VISITNUA.      
   VISITDE2 VISITDEA.       VOLUNTE2 VOLUNTEA.       VOLNUM2 VOLNUMA.        
   VOLDEN2 VOLDENA.         COMMSER2 COMMSERA.       COMMNUM2 COMMNUMA.      
   COMMDEN2 COMMDENA.       MIDAGE2 MIDAGEA.         SENIORS2 SENIORSA.      
   RELAT12 RELAT1A.         RELAT22 RELAT2A.         RELAT32 RELAT3A.        
   KIDS2 KIDSA.             AGEYNG2 AGEYNGA.         MARSTAT2 MARSTATA.      
   MARMANY2 MARMANYA.       MARAGE2 MARAGEA.         MARYEAR2 MARYEARA.      
   MARAGAI2 MARAGAIA.       PARTNER2 PARTNERA.       MARHAPP2 MARHAPPA.      
   DIVTHOT2 DIVTHOTA.       DECHOME2 DECHOMEA.       SPEMP2 SPEMPA.          
   SPEDUC2 SPEDUCA.         HSWORK2 HSWORKA.         HSWKWEE2 HSWKWEEA.      
   HSWKEND2 HSWKENDA.       HSWKFAI2 HSWKFAIA.       STRNFOO2 STRNFOOA.      
   STRNMED2 STRNMEDA.       STRNBIL2 STRNBILA.       WORRY2 WORRYA.          
   TENSE2 TENSEA.           RESTLES2 RESTLESA.       FEAR2 FEARA.            
   HMSAFE2 HMSAFEA.         MAD2 MADA.               YELL2 YELLA.            
   ANGRY2 ANGRYA.           TRUST2 TRUSTA.           SUSP2 SUSPA.            
   AGAINST2 AGAINSTA.       BREAKIN2 BREAKINA.       ASSAULT2 ASSAULTA.      
   DISASTE2 DISASTEA.       UNEMPLO2 UNEMPLOA.       UNEMPNU2 UNEMPNUA.      
   UNEMPDE2 UNEMPDEA.       STRNEVE2 STRNEVEA.       STRNNUM2 STRNNUMA.      
   STRNDEN2 STRNDENA.       B4WELF2 B4WELFA.         B4POV2 B4POVA.          
   PMARSTA2 PMARSTAA.       MOMALIV2 MOMALIVA.       MDAGE2 MDAGEA.          
   MDAGER2 MDAGERA.         DADALIV2 DADALIVA.       DDAGE2 DDAGEA.          
   DDAGER2 DDAGERA.         LIFEEXP2 LIFEEXPA.       NUMKIDS2 NUMKIDSA.      
   AGEFIRS2 AGEFIRSA.       OWNHOME2 OWNHOMEA.       ED2 EDA.                
   COLLREP2 COLLREPA.       COLLTRE2 COLLTREA.       MAJORRE2 MAJORREA.      
   EDYEAR2 EDYEARA.         EDMOM2 EDMOMA.           EDFATHE2 EDFATHEA.      
   YEARBOR2 YEARBORA.       USBORN2 USBORNA.         AGEIMMI2 AGEIMMIA.      
   ENGLISH2 ENGLISHA.       HISPANI2 HISPANIA.       RACE2 RACEA.            
   EARNREP2 EARNREPA.       EARN12 EARN1B.           EARN302 EARN30A.        
   EARN202 EARN20A.         EARN102 EARN10B.         EARN402 EARN40A.        
   EARN502 EARN50A.         EARN752 EARN75A.         EARN1002 EARN100A.      
   INCREP2 INCREPA.         FAMIN12 FAMIN1A.         FAMIN302 FAMIN30A.      
   FAMIN202 FAMIN20A.       FAMIN102 FAMIN10B.       FAMIN402 FAMIN40A.      
   FAMIN502 FAMIN50A.       FAMIN752 FAMIN75A.       FAMI1002 FAMI100A.      
   SEX2 SEXA.               RESGNRE2 RESGNREA.       EDSELEC2 EDSELECA.      
   EDTYPE2 EDTYPEA.         EDCARNE2 EDCARNEA.     ;                         
                                                                             
                                                                             
LENGTH                                                                       
   ID 6                     FINDISP2 3               SEX 3                   
   INTYEAR 3                HEALTH 3                 WALKNUM 3               
   WALKDEN 3                WALKFAR 3                WALKMEAS 3              
   STREXNUM 3               STREXDEN 3               MODEXNUM 3              
   MODEXDEN 3               HGHTREP 3                HGHTFEET 3              
   HGHTINCH 3               WEIGHT 4                 SMOKENOW 3              
   SMOKEVER 3               SMOKQNUM 3               SMOKQDEN 3              
   EATMNUM 3                EATMDEN 3                EATFNUM 3               
   EATFDEN 3                EATCHNUM 3               EATCHDEN 3              
   EATCKNUM 3               EATCKDEN 3               MILKNUM 3               
   MILKDEN 3                ALCOHNUM 3               ALCOHDEN 3              
   ALCOHAVG 3               STAIRS 3                 KNEELING 3              
   CARRYING 3               MEALS 3                  SHOPPING 3              
   SEEING 3                 HEARING 3                HEARAID 3               
   INSURANC 3               INSTYPE 3                HOSPITAL 3              
   HOSPNUM 3                HOSPDEN 3                DOCTOR 3                
   DXHEART 3                DXHIGHPR 3               DXLUNG 3                
   DXBREAST 3               DXCANCER 3               DXDIABET 3              
   DXARTH 3                 DXOSTEO 3                DXALLERG 3              
   DXDIGEST 3               MEDICINE 3               MEDSNOW 3               
   HEADACHE 3               BACKACHE 3               PAINS 3                 
   SLEEP 3                  EFFORT 3                 GETGO 3                 
   MIND 3                   SAD 3                    LONELY 3                
   BLUES 3                  ENJOY 3                  HOPEFUL 3               
   HAPPY 3                  ENERGY 3                 FIT 3                   
   EMP 3                    EMPNUM 3                 EMPDEN 3                
   EMPREP 3                 OCC1 4                   TASKREP 3               
   WKROUT 3                 WKENJOY 3                WKLEARN 3               
   WKSOLVE 3                WKINTER 3                WKRECOM 3               
   WKSUP 3                  WKDISAG 3                WKHOW 3                 
   WKWHAT 3                 WKROUT2 3                WKENJOY2 3              
   WKLEARN2 3               WKSOLVE2 3               WKINTER2 3              
   WKRECOM2 3               WKSUP2 3                 WKDISAG2 3              
   WKHOW2 3                 WKWHAT2 3                MANAG 3                 
   MANAGLEV 3               EVERFULL 3               EMP2REP 3               
   OCC2 4                   WORKHIST 3               WORKLEFT 3              
   LEFTREP 3                FATGOOD 3                FATLUCK 3               
   RESPSUC 3                RESPANY 3                FATPROB 3               
   FATBAD 3                 RESPMIS 3                RESPFAIL 3              
   VICTIM 3                 SURVIVE 3                BADGREED 3              
   SUPPTURN 3               SUPPTALK 3               SUPPHELP 3              
   SUPPSICK 3               VISITNUM 3               VISITDEN 3              
   VOLUNTEE 3               VOLNUM 3                 VOLDEN 3                
   COMMSERV 3               COMMNUM 3                COMMDEN 3               
   MIDAGE 3                 SENIORS 3                ADULTS 4                
   RELAT1 3                 RELAT2 3                 RELAT3 3                
   KIDS 3                   AGEYNG 3                 MARSTAT 3               
   MARMANY 3                MARAGE 3                 MARYEARS 3              
   MARAGAIN 3               PARTNER 3                MARHAPPY 3              
   DIVTHOT 3                DECHOME 3                SPEMP 3                 
   SPEDUC 3                 HSWORK 4                 HSWKWEEK 3              
   HSWKEND 3                HSWKFAIR 3               STRNFOOD 3              
   STRNMED 3                STRNBILL 3               WORRY 3                 
   TENSE 3                  RESTLESS 3               FEAR 3                  
   HMSAFE 3                 MAD 3                    YELL 3                  
   ANGRY 3                  TRUST 3                  SUSP 3                  
   AGAINST 3                BREAKIN 3                ASSAULT 3               
   DISASTER 3               UNEMPLOY 3               UNEMPNUM 3              
   UNEMPDEN 3               STRNEVER 3               STRNNUM 3               
   STRNDEN 3                PMARSTAT 3               MOMALIVE 3              
   MDEADAGE 3               DADALIVE 3               FDEADAGE 3              
   LIFEEXPT 4               NUMKIDS 3                AGEFIRST 3              
   OWNHOME 3                ED 3                     COLLREP 3               
   COLLTREP 3               MAJORREP 3               EDMOM 3                 
   EDFATHER 3               YEARBORN 4               USBORN 3                
   AGEIMMIG 3               ENGLISH 3                HISPANIC 3              
   RACE 3                   EARNREP 3                EARN1 6                 
   EARN30 3                 EARN20 3                 EARN10 3                
   EARN40 3                 EARN50 3                 EARN75 3                
   EARN100 3                INCREP 3                 FAMINC1 6               
   FAMINC30 3               FAMINC20 3               FAMINC10 3              
   FAMINC40 3               FAMINC50 3               FAMINC75 3              
   FAMIN100 3               EDSELEC 3                EDTYPE 3                
   EDCARNEG 3               WKRESIGN 3               TASK 3                  
   EDSPEC 3                 EDDISC 3                 EDYEAR 4                
   EDTERMDG 3               EDBADEG 6                EDBAFEM 6               
   EDMADEG 6                EDMAFEM 6                EDDOCDEG 6              
   EDDOCFEM 4               INTMONTH 3               INTDAY 3                
   STRATAID 3               PREFIX 4                 NUMCALLS 3              
   OCC801 4                 OCC802 4                 OCCPRES1 3              
   OCCPRES2 3               STRATAI2 3               INTDAT2 6               
   NUMCALL2 3               HEALTH2 3                WALKNUM2 3              
   WALKDEN2 3               WALKFAR2 3               WALKMEA2 3              
   STREXNU2 3               STREXDE2 3               MODEXNU2 3              
   MODEXDE2 3               HGHTREP2 3               HGHTFEE2 3              
   HGHTINC2 3               WEIGHT2 4                SMOKENO2 3              
   SMOKEVE2 3               SMOKQNU2 3               SMOKQDE2 3              
   EATMNUM2 3               EATMDEN2 3               EATFNUM2 3              
   EATFDEN2 3               EATCHNU2 3               EATCHDE2 3              
   EATCKNU2 3               EATCKDE2 3               MILKNUM2 3              
   MILKDEN2 3               ALCOHNU2 3               ALCOHDE2 3              
   ALCOHAV2 3               STAIRS2 3                KNEELIN2 3              
   CARRYIN2 3               MEALS2 3                 SHOPPIN2 3              
   SEEING2 3                HEARING2 3               HEARAID2 3              
   INSURAN2 3               INSTYPE2 3               HOSPITA2 3              
   HOSPNUM2 3               HOSPDEN2 3               DOCTOR2 3               
   DXHEART2 3               DXHIGH2 3                DXLUNG2 3               
   DXCANCE2 3               DXBREAS2 3               DXDIABE2 3              
   DXARTH2 3                DXOSTEO2 3               DXALLER2 3              
   DXDIGES2 3               MEDICIN2 3               MEDSNOW2 3              
   HEADACH2 3               BACKACH2 3               PAINS2 3                
   SLEEP2 3                 EFFORT2 3                GETGO2 3                
   MIND2 3                  SAD2 3                   LONELY2 3               
   BLUES2 3                 ENJOY2 3                 HOPEFUL2 3              
   HAPPY2 3                 ENERGY2 3                FIT2 3                  
   EMP2 3                   EMPNUM2 3                EMPDEN2 3               
   EMPREP2 3                IND2 3                   JOBCHG2 3               
   RESPCHG2 3               TASK2 3                  WKROUTW2 3              
   WKENJOW2 3               WKLEARW2 3               WKSOLVW2 3              
   WKINTEW2 3               WKRECOW2 3               WKSUPW2 3               
   WKDISAW2 3               WKHOWW2 3                WKWHATW2 3              
   WKROUW22 3               WKENJW22 3               WKLEAW22 3              
   WKSOLW22 3               WKINTW22 3               WKRECW22 3              
   WKSUPW22 3               WKDISW22 3               WKHOWW22 3              
   WKWHAW22 3               MANAGEW2 3               MANLEVW2 3              
   EVERFUL2 3               EMP2REP2 3               IND22 3                 
   WORKHIS2 3               WORKLEF2 3               WKRESIG2 3              
   FATGOOD2 3               FATLUCK2 3               RESPSUC2 3              
   RESPANY2 3               FATPROB2 3               FATBAD2 3               
   RESPMIS2 3               RESPFAI2 3               VICTIM2 3               
   SURVIVE2 3               BADGREE2 3               SUPPTUR2 3              
   SUPPTAL2 3               SUPPHEL2 3               SUPPSIC2 3              
   VISITNU2 3               VISITDE2 3               VOLUNTE2 3              
   VOLNUM2 3                VOLDEN2 3                COMMSER2 3              
   COMMNUM2 3               COMMDEN2 3               MIDAGE2 3               
   SENIORS2 3               ADULTS2 4                RELAT12 3               
   RELAT22 3                RELAT32 3                KIDS2 3                 
   AGEYNG2 3                MARSTAT2 3               MARMANY2 3              
   MARAGE2 3                MARYEAR2 3               MARAGAI2 3              
   PARTNER2 3               MARHAPP2 3               DIVTHOT2 3              
   DECHOME2 3               SPEMP2 3                 SPEDUC2 3               
   HSWORK2 4                HSWKWEE2 3               HSWKEND2 3              
   HSWKFAI2 3               STRNFOO2 3               STRNMED2 3              
   STRNBIL2 3               WORRY2 3                 TENSE2 3                
   RESTLES2 3               FEAR2 3                  HMSAFE2 3               
   MAD2 3                   YELL2 3                  ANGRY2 3                
   TRUST2 3                 SUSP2 3                  AGAINST2 3              
   BREAKIN2 3               ASSAULT2 3               DISASTE2 3              
   UNEMPLO2 3               UNEMPNU2 3               UNEMPDE2 3              
   STRNEVE2 3               STRNNUM2 3               STRNDEN2 3              
   B4WELF2 3                B4POV2 3                 PMARSTA2 3              
   MOMALIV2 3               MDAGE2 3                 MDAGER2 3               
   DADALIV2 3               DDAGE2 3                 DDAGER2 3               
   LIFEEXP2 4               NUMKIDS2 3               AGEFIRS2 3              
   OWNHOME2 3               ED2 3                    COLLREP2 3              
   COLLTRE2 3               MAJORRE2 3               EDYEAR2 4               
   EDMOM2 3                 EDFATHE2 3               YEARBOR2 4              
   USBORN2 3                AGEIMMI2 3               ENGLISH2 3              
   HISPANI2 3               RACE2 3                  EARNREP2 3              
   EARN12 6                 EARN302 3                EARN202 3               
   EARN102 3                EARN402 3                EARN502 3               
   EARN752 3                EARN1002 3               INCREP2 3               
   FAMIN12 6                FAMIN302 3               FAMIN202 3              
   FAMIN102 3               FAMIN402 3               FAMIN502 3              
   FAMIN752 3               FAMI1002 3               SEX2 3                  
   OCCW2R 4                 INTMON2 3                INTDAY2 3               
   INTYR2 3                 OCC80W2 4                OCCPREW2 3              
   RESGNRE2 3               EDSELEC2 3               EDTYPE2 3               
   EDCARNE2 3               EDSPEC2 3                EDDISC2 3               
   EDTERMD2 3               EDBADEG2 6               EDBAFEM2 6              
   EDMADEG2 6               EDMAFEM2 6               EDDOCDE2 4              
   EDDOCFE2 4 ;                                                              
                                                                             
                                                                             
                                                                             
RUN ;                                                                        
                                                                             
