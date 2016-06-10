{{ content() }}
<section id="survey">
		<a name="survey"></a>
		<header>
			<div class="logo">
				<a href="/">{{image('images/baywa-logo.png', "class":"logo")}}</a>
			</div>
			<div class="headerWrap">
				<h1>Quiz</h1>
<h2>Werden Sie zum Rapsexperten!</h2>
			</div>
			<div id="virtualKeyboard" class="virtualKeyboard"></div>
			<div class='clearfix'></div>

		</header>
		<div id="surveyForm" class="form">
			<div id="surveyFormWrapper" class="pt-wrapper">
				<div class="pt-page pt-page-1" id="surveystartpage" style="display:block;z-index: 2">
                                    <h3 style="margin-left: 30px;margin-top:30px;">Sind Sie bereit Ihr geballtes Raps-Wissen unter Beweis zu stellen?</strong></h3>
                                    <form id="contactForm" autocomplete="off" class="form" style="height:64%">
                                    <table class="formTable" style="min-height:90%;">
						<tr>
							
							<td style="text-align: left;padding-left: 30px;">
								<div class="alignLeft">
								<label>Name*</label><br>
								<input type="text" name="name"><br><br>
								</div>

							</td>
                                              
                                                
							<td style="text-align: left;padding-left: 30px;">
								<div class="alignLeft">
								<label>Email*</label><br>
								<input type="text" name="email"><br><br>
								</div>
							</td>
                                                </tr>	
						
						<tr>
							<td colspan="2" style="text-align: left; padding-left: 30px;">								
                                                            <input type="checkbox" name="terms" id="terms2"> <label for="terms" class="terms">Hiermit erkläre ich mich einverstanden, dass meine Daten ausschließlich zum Zweck der gezielten Kontaktaufnahme durch die BayWa AG<br> bzw. eine zu diesem Zweck beauftragte Drittfirma (Agentur) gespeichert und verarbeitet werden.<br> Ich habe die <a href="#" style="font-size: 1em;" data-toggle="modal" data-target="#dataprotection"> Hinweise zum Datenschutz</a> gelesen und bin mit der Speicherung meiner Daten einverstanden. </label>								
							</td>
						</tr>
						
						
					</table>
                                        		<input type="hidden" name="uniqueId" value="{{uniqueId}}" id="sesid">
                                        </form>
                                    <div class="trigger-buttons">
						<a href="" class="navButton pt-trigger"   data-animation="32" data-goto="2" id="quizTrigger"><span>Quiz starten</span></a>
					</div>
				</div>
                            
				
				
				<div class="pt-page pt-page-11" id="questionThankyou">
					<br>
					<div class="statusbar outer">
                                            <h3 style="margin-left">Herzlichen Glückwunsch,<br> Sie haben  <span id="result"></span>% der Fragen richtig beantwortet.<br>An der Theke erhalten Sie Ihren Gewinn.</h3>
                                        
					</div>
					<div class="trigger-buttons">
						
                                              
					</div>
					
					
				</div>
			</div>
		</div>
		<a href="/" class="navButton small backToTop"  ><span class="icon i_up_primary"></span><span class="btn_label">{{tr('backHome')}}</span></a>
	</section>

<div id="virtualKeyboardWrapper"></div>
 <div class="modal fade" id="dataprotection" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
             <div class="modal-dialog" role="document">
    <div class="modal-content">      
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
        
      </div>
      <div class="modal-body">
          <iframe src="{{baseurl}}public/dataprotection.html" style="width:100%;border:none;height:80vh;">
          </iframe>
      </div>
      
    </div>
  </div>
</div>   