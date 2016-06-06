
function range(start, count) {
        return Array.apply(0, Array(count))
                    .map(function (element, index) { 
                             return index + start;  
                         });
    } 
function shuffle(a) {
    var j, x, i;
    for (i = a.length; i; i -= 1) {
        j = Math.floor(Math.random() * i);
        x = a[i - 1];
        a[i - 1] = a[j];
        a[j] = x;
    }
}
var viewportW = Math.max(document.documentElement.clientWidth, window.innerWidth || 0)
var viewportH = Math.max(document.documentElement.clientHeight, window.innerHeight || 0)
var baseurl;
var module='';
var runAnim=true;
var time=0;
var timerInterval;
function init(jQuery){
	
	if(typeof(requirePlugins) != 'undefined'){
		jQuery('#loadingimg').show();	
		requireControllerPlugins();
	}
	jQuery('a.lightbox').click( function(event) {
            event.preventDefault();
            jQuery(this).ekkoLightbox();
        }); 
        jQuery('#archipelFieldeye').attr('src','https://fieldeye.eu/?embedded=55f0372feae4a&amp;lang=en&amp;gallery_width=850&amp;color_main=009650');
	timerInterval=window.setInterval(function(){			
		
		if(time==180){
			window.location.href='http://infotool.denkfabrik-entwicklung.de/';
		}else{
			time++;
		}
		
	},1000);
	
	(function ($, smsTexte, undefined) {
		smsTexte.berater = function(uid,name){
			this.uid = uid;
			this.name = name;
		};
		
		smsTexte.kunde = function(firstname,lastname,phone){
			this.firstname = firstname;
			this.lastname = lastname;
			this.phone = phone;
		};
		
		var selectBox=jQuery('#smsTextsSelect');
		var marker=function(berater,kunde){
			this.replaceObj={
				"#Berater#" :berater.name,
				"#KundeVorname#":kunde.firstname,
				"#KundeNachname#":kunde.lastname,
				"#TelefonnummerKunde#":kunde.phone
			};
		};
		var texte={			
			0:"Hallo #Berater#, ich stehe gerade auf dem BayWa Stand auf den DLG Feldtagen. Sind Sie heute oder morgen auch hier anzutreffen? Über eine kurze Rückmeldung unter #TelefonnummerKunde# freut sich #KundeVorname# #KundeNachname#.",
			1:"Hallo #Berater#, ich stehe gerade auf dem BayWa Stand auf den DLG Feldtagen. Bitte melden Sie sich doch zeitnah nach den DLG Feldtagen bezüglich eines Termins bei mir. Über einen kurze Rückmeldung unter #TelefonnummerKunde# freut sich #KundeVorname# #KundeNachname#."			
		};
		
		var insertSelectbox = function(labels) {
			jQuery(selectBox).empty();
			for(var label in labels){				
				var entry = document.createElement('li');
				entry.appendChild(document.createTextNode(labels[label]));
				jQuery(selectBox).append(entry);
			}
		};
					
		smsTexte.create=function(){	
		};
		
		smsTexte.createBox = function(berater,kunde) {
			var finalTexts=[];
			var strings=new marker(berater,kunde);
			
			for(var text in texte){			
				var finalStrng=texte[text];
				for(var key in strings.replaceObj) {										
					finalStrng=finalStrng.replace(key,strings.replaceObj[key]);					
				}
				finalTexts.push(finalStrng);
			}
			insertSelectbox(finalTexts);
		};
		
	  }(jQuery, window.smsTexte = window.smsTexte || {}));
	  
	  
	  
   var virtualKeyboard;
	var goToContact=function(chosenRep){
		
			
			jQuery('html, body').animate({
				scrollTop:jQuery('#contact').offset().top
			},'slow');				
			
			jQuery('#consultantSelect option').each(function(index,element){
				jQuery(element).removeAttr('selected');	
                                
				if(jQuery(element).val()==chosenRep){
                                        jQuery(element).attr('selected','selected');
					jQuery(element).prop('selected','selected');
					jQuery('.choice').html(jQuery(element).html());
				}
                                
			});
                        
			
	};
	
	
	jQuery('#consultantSelect').change(function(e){				
		jQuery('.choice').html(jQuery("#consultantSelect option[selected='selected']").text());
	});
	jQuery('#smsTextsSelect').on('click','li',function(e){		
		jQuery('#smsTexts').html(jQuery(this).text());
		
	});
	/*var initAutocomplete=function(){
		jQuery('#searchName').devbridgeAutocomplete({
				serviceUrl: 'search/index/name/',
				type:'POST',
				minChars:3,
				noCache:true,
				deferRequestBy:10,
				appendTo:"#searchResults",				
				onSelect: function (suggestion) {
					goToContact(suggestion.data);
				}
			});
		
		jQuery('#searchCity').devbridgeAutocomplete({
					serviceUrl: 'search/index/city/',
					type:'POST',
					minChars:3,
					noCache:true,
					deferRequestBy:10,
					onSearchStart:function(){
						jQuery('#searchZip').val('');
						
					},
					onSelect: function (suggestion) {
				
						jQuery('#searchZip').val(suggestion.data);
						 jQuery('#searchZip').keyup();
					}
		});
		jQuery('#searchZip').devbridgeAutocomplete({
					serviceUrl: 'search/index/zip/',
					noCache:true,
					type:'POST',					
					deferRequestBy:10,
					appendTo:"#searchResults",		
					onSelect: function (suggestion) {
						
						goToContact(suggestion.data);
					}
		});
	};*/
	
	jQuery(function () {
		if(typeof(jsKeyboard)==='undefined'){
			window.setTimeout(
					function(){		
					virtualKeyboard=jQuery('#virtualKeyboardWrapper');										
					jsKeyboard.init("virtualKeyboardWrapper");
		 
			},
			1000);
		}else{
			virtualKeyboard=jQuery('#virtualKeyboardWrapper');										
			jsKeyboard.init("virtualKeyboardWrapper");
		 
		}
		/*if(typeof(devbridgeAutocomplete)==='undefined'){
			window.setTimeout(
				function(){
					initAutocomplete();					
				},1000);
		}else{
			initAutocomplete();
		}*/
         
         
     });
	
	jQuery('body').on('click',function(e){
		time=0;
	});
	
	baseurl=document.getElementById('baseurl').value;	
	module=document.getElementById('module') ? document.getElementById('module').value :'';
	jQuery('body').append('<div id="loadingimg"><h3>Einen Moment bitte</h3><div><img src="'+baseurl+'public/images/ajax-loader.gif"></div></<div>');
	/*jQuery('a[href^=#]').on('click', function(e){
		e.preventDefault();
		var href = jQuery(this).attr('href');		
		jQuery('html, body').animate({
			scrollTop:jQuery(href).offset().top
		},'slow');				
	});*/
	
	var removeTouchAnim=function(){
		runAnim=false;
		jQuery('#startImgWrap').removeClass('cbutton--effect-jagoda');		
		jQuery('#startTableWrap').removeClass('cbutton--effect-jagoda2');				
		jQuery("#touchIcon").addClass('hidden');
	};
	
	var addTouchAnim=function(){
		jQuery("#touchIcon").removeClass('hidden');
		runAnim=true;
		jQuery('#startImgWrap').addClass('cbutton--effect-jagoda');		
		jQuery('#startTableWrap').addClass('cbutton--effect-jagoda2');				
		animate_loop("-=100",0);
	};
	
	var i = 0;
	var animate_loop=function(dirChanger,delay){			
            jQuery('#touchIcon').animate({top:dirChanger
            }, 1500, function(){
					if(runAnim){
					if(dirChanger=="-=100"){
						dirChanger="+=100";						
						animate_loop(dirChanger,1000);
					}else if(dirChanger=="+=100"){
						dirChanger="-=100";					
						animate_loop(dirChanger,0);
						
					}
					}
            }).delay(delay);
    };
    animate_loop("-=100",0);
	
	
	
	
	
	jQuery('a[href^=#].navButton,a[href^=#].navLink').on('click', function(e){
			e.preventDefault();			
			var href = jQuery(this).attr('href');				
			
			jQuery('html, body').animate({
				scrollTop:jQuery(href).offset().top
			},'slow');				
			
			if(href==='#start'){
				resetContactForm();
                                resetSearchResults();
			}
		});
	
	
	
	var addFlipEvents=function(){
		jQuery('.flipper a[href^=#]').on('click', function(e){
			e.preventDefault();			
			var href = jQuery(this).attr('href');		
			jQuery('html, body').animate({
				scrollTop:jQuery(href).offset().top
			},'slow');				
			
		});
	};
	
	
	var addStartImgEvents=function(){
		jQuery("#start").on("click",function(e){				
			jQuery(this).off('click');
			addFlipEvents();
			removeTouchAnim();
			
			jQuery('#startImgWrap').animate({
				left:"-=60",
				top:"-=60"
			});
			jQuery('.flip-container').animate({
				margin:"+=30"
			},500,function(){
				jQuery('.flip-container').addClass('hover');
			});
			
		});
	};			
	
	addStartImgEvents();
	
	function resetContactForm(){
		jQuery('.pt-page').removeClass('pt-page-current');
		jQuery('#formPage').addClass('pt-page-current');
		jQuery('.pt-trigger').off('click');
		jQuery('#contactForm textarea').html('');
		jQuery('#contactForm')[0].reset();
                jQuery('#formPage input[name="firstname"], #formPage input[name="lastname"], #formPage input[name="phone"], #formTrigger').removeClass('mandatory');
		PageTransitions.init();
	}
	
        function resetSearchResults(){
            jQuery('#searchForm')[0].reset();
            jQuery('#searchResults').empty();
        }
	
	jQuery('.list-group-item.contactable').on('click',function(e){						
			e.preventDefault();
			resetContactForm();
                        resetSearchResults();
			var chosenRep=jQuery(this).find('input').val();
			goToContact(chosenRep);
	});
	jQuery('#searchForm').on('click','.autocomplete-suggestion',function(){
			resetContactForm();
                        resetSearchResults();
		var chosenRep=jQuery(this).attr('data-index');
                
			goToContact(chosenRep);
	});
	/*jQuery('#contactForm').submit(function(e){
		e.preventDefault();		
		var params=jQuery(this).serialize();
		console.log(params);
		if(termsAgreed()){
			ajaxIt("message","create",params,dummyEmpty);
		}else{
			alert("Sie müssen der Datenverarbeitung zustimmen.");
		}
	});*/
	
	jQuery('#searchForm').submit(function(e){
		e.preventDefault();
		var params=jQuery(this).serialize();
		ajaxIt("search","index",params,showResults);
	});
	jQuery('.survey').on('submit',function(e){
		e.preventDefault();
		var data=jQuery(this).serialize();
		ajaxIt("survey","create",data,dummyEmpty);
	});
	
	jQuery('a.pt-trigger').click(function(e){
		e.preventDefault();
	});
	jQuery(document).on('scroll',function(e){
		jQuery('.virtualKeyboard').each(function(index,el){
			if(jQuery(el).css('right')==='0px'){
			 jQuery(el).animate({
				right:"-50vw"
			 });
			}
		});
		
	});
	jQuery('input[type="text"], textarea').on('focus',function(e){
		jQuery(virtualKeyboard).show();
		if(jQuery(jQuery(this).context.form).attr('id') !=='searchForm'){
			jQuery('#virtualKeyboard').append(jQuery(virtualKeyboard));
			jQuery('#virtualKeyboard').animate({
				right:0
			});
		}else{
			jQuery('#virtualKeyboard2').append(virtualKeyboard);
			jQuery('#virtualKeyboard2').animate({
				right:0
			});
		}
	});
	jQuery(':input[type="radio"],:input[type="checkbox"],:input[type="reset"],:input[type="submit"]').on('focus',function(e){
		jQuery('.virtualKeyboard').animate({
			right:"-50vw"
		});
	});
	
	
	
	 
	 jQuery('.updateDate').change(function(e){
			
			var params='onspotdate='+jQuery(this).val()+'&checked='+this.checked;
			ajaxIt("feusers","update",params,dummyEmpty);
	 });
	 
	 
	 
	 /*var dd = new DropDown( jQuery('#searchResults') );*/
	 jQuery('#surveystartpage').css( "zIndex", 1 );
}

function smstextBox(){		
    
	var berater=new window.smsTexte.berater(jQuery("#consultantSelect option[selected='selected']").val(),jQuery("#consultantSelect option[selected='selected']").text());
	var kunde=new window.smsTexte.kunde(jQuery('input[name="firstname"]').val(),jQuery('input[name="lastname"]').val(),jQuery('input[name="phone"]').val());
	new smsTexte.createBox(berater,kunde);
	
}


(function ($, quiz, undefined) {
		
		var ptrigger;
                var thisuser;
                var session;
                
                var counter=0;
                var result=0;
                var sesid=0;
                quiz.session=function(session){
                    this.session = session;  
                };
		quiz.user = function(name,email){
                    this.name = name;			
                    this.email = email;
		};
                
                
                var sesidCallback=function(sesuid){
                  sesid=sesuid;
                };
		var randomQs=function(elCount){
                    var qsArr=range(0,elCount);                    
                    shuffle(qsArr);
                    return qsArr.slice(0,10);
                };
		var randomAs=function(){
                    var asArr=range(0,4);
                    shuffle(asArr);
                    return asArr;
                };
		
		var insertQ = function(question,index,qid) {
                        var aArr=randomAs();
                        var answers='';
                        
                        aArr.forEach(function(el,ind){
                            var truefalse=0;
                            
                            if(question.answers[el].truefalse===true){
                                truefalse=1;
                            }                            
                            if(ind===0 || ind===2){
                                answers+='<tr>';
                            }
                            answers+='<td><label class="label_'+ind+'"><input type="radio" name="answer" value="'+truefalse+'"> <span>'+question.answers[el].title+'</span></label></td>';
                            
                            if(ind===1 || ind===3){
                               answers+='</tr>';
                            }
                        });
                        
			var q='<div class="pt-page pt-page-'+(index+1)+'">\
                        <div class="statusbar outer">\
						<div class="statusbar inner" style="width:'+(index*10)+'%">\
						</div>\
					</div>\
					<form autocomplete="off" class="survey" name="question_'+index+'">\
<table class="formTable"><thead><tr><th colspan="2"><h3>'+question.title+'</h3></th></tr></thead><tbody>'+answers+'</tbody></table>\
						<div class="trigger-buttons">\
							<input type="submit" value="Weiter" data-animation="68" data-goto="'+(index+2)+'" class="pt-trigger navButton">\
						</div>\
						<input type="hidden" name="question" value="'+qid+'">\
                                                <input type="hidden" name="questionnumber" value="'+index+'">\
					</form>\
				</div>';
			$(q).insertBefore('#questionThankyou');
		};
		
                var goOn=function(e){
                  
                  var params=jQuery('form[name="question_'+counter+'"]').serialize();
                  var rightWrong=parseInt(jQuery('form[name="question_'+counter+'"] input:checked').val());
                  result+=rightWrong;
                  ajaxIt("survey","create",params+'&sesid='+sesid,dummyEmpty);
                  console.log(rightWrong);
                  console.log(jQuery(this));
                  if(rightWrong){
                      jQuery('form[name="question_'+counter+'"] input:checked').parent().addClass('green');
                  }else{
                      jQuery('form[name="question_'+counter+'"] input:checked').parent().addClass('red');
                  }
                  
                      jQuery('#result').html(result*10);
                  
                };
    
    
		var getQuestions=function(callback){
                    $.getJSON('/public/quiz.json',callback);
                };
                var writeQuestions=function(data){
                        
                    var rQs=randomQs(data.length);
                    
                    for(var i=0; i<rQs.length; i++){
                        insertQ(data[rQs[i]],i+1,rQs[i]+1);
                    }
                    jQuery('#surveystartpage').removeClass('pt-page-current');
                    PageTransitions.init();
                    PageTransitions.Animate(ptrigger);
                    jQuery('.pt-trigger').click(function(e){
                        counter++;
                        goOn(e);
                    });
                };
				
                var persistUser=function(){       
                    
                   var params='name='+thisuser.name+'&email='+thisuser.email+'&uniqueid='+session.session;
                   ajaxIt("survey","create",params,sesidCallback);
                   
                };
                
                
                
		quiz.init=function(sessiondata,pagetrigger){
                    thisuser=sessiondata.user;
                    session=sessiondata.session;
                    ptrigger=pagetrigger;
                    getQuestions(writeQuestions);
                    persistUser();
                    
                };
                
	  }(jQuery, window.quiz = window.quiz || {}));



function quiz(pagetrigger){
    var user=new window.quiz.user(jQuery('input[name="name"]').val(),jQuery('input[name="email"]').val());
    var session=new window.quiz.session(jQuery('input[name="uniqueId"').val());
    new quiz.init({user:user,session:session},pagetrigger);
}
function requireControllerPlugins(){
	
		for(var i=0; i<requirePlugins.length; i++){
			if(i==requirePlugins.length-1){
				require([requirePlugins[i]],letsRoll);
			}else{
				require([requirePlugins[i]]);
			}
			
		}	
	
	
};


function DropDown(el) {
				this.dd = el;
				this.initEvents();
			}
			DropDown.prototype = {
				initEvents : function() {
					var obj = this;

					obj.dd.on('click', function(event){
						jQuery(this).toggleClass('active');
						event.stopPropagation();
					});	
				}
			}

function showResults(data){
	jQuery('#searchResults').html('');
	var suggestions=jQuery.parseJSON(data).suggestions;
	var suggestionsStrng='';
	if(suggestions){
		for(var i=0; i<suggestions.length;i++){
			suggestionsStrng+='<div class="autocomplete-suggestion" data-index="' + suggestions[i].data + '">' + suggestions[i].html + '</div>';
			/*suggestionsStrng+=suggestions[i].html;*/

		}
	}else{
		suggestionsStrng+='<div><h3>Ihre Suche ergab leider keine Treffer</h3></div>';
	}
	jQuery('#searchResults').append('<div class="autocomplete-suggestions">'+suggestionsStrng+'</div>' );
	
	
	/*jQuery('#searchResults').html('<ul id="resultList" class="dropdown">'+suggestionsStrng+'</ul>');*/
}



var dummyEmpty=function(){	
};

var ajaxIt=function(controller,action,formdata,successhandler, parameters){
	 parameters = typeof parameters !== 'undefined' ? '/'+parameters : '';
	if(successhandler !== dummyEmpty){
	jQuery('#loadingimg').show();
	}

	jQuery.ajax({
		url: baseurl+module+controller+'/'+action+parameters,
		cache: false,
		async: true,
		data: formdata,   
		type: 'POST',
		success: function(data) {
			jQuery('#loadingimg').hide();	
			successhandler(data);
		},
		error: function(e){			
			jQuery('#loadingimg').hide();
			}
		});
		
};

$(document).ready(function(jQuery){
	
	init(jQuery);
	
});

function letsRoll(){
	if(typeof(pluginInit) !== 'undefined'){
		jQuery('#loadingimg').hide();	
		pluginInit();
		
	}else{	
		window.setTimeout(letsRoll,10);
	}
}

function formIsValid(fields){
	
	var fieldLength=fields.length;	
	for(var i=0;i<fieldLength;i++){
		
		var x = document.forms["contactForm"][fields[i]].value;
		if (x == null || x == "") {			
			return false;
		}
                if(fields[i]=='email' && (x.indexOf('@') == -1 || x.indexOf('.') == -1)){
                    return false;
                }
	}
	return true;
}

function termsAgreed(){
	var x = document.forms["contactForm"]["terms"].checked;
	if (!x) {			
			return false;
		}
	return true;
}