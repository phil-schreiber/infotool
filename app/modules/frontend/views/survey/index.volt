{{ content() }}
<section id="survey">
		<a name="survey"></a>
		<header>
			<div class="logo">
				<a href="http://agritechnica2015.denkfabrik-group.com/">{{image('images/baywa-logo.png', "class":"logo")}}</a>
			</div>
			<div class="headerWrap">
				<h1>Quiz</h1>

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
							
							<td>
								<div class="alignLeft">
								<label>Name*</label><br>
								<input type="text" name="name"><br><br>
								</div>

							</td>
                                                </tr>
                                                <tr>
							<td>
								<div class="alignLeft">
								<label>Email*</label><br>
								<input type="text" name="email"><br><br>
								</div>
							</td>
							
						</tr>
						
						
						
					</table>
                                        </form>
                                    <div class="trigger-buttons">
						<a href="" class="navButton pt-trigger"   data-animation="32" data-goto="2" id="quizTrigger"><span>Quiz starten</span></a>
					</div>
				</div>
                            
				
				
				<div class="pt-page pt-page-11" id="questionThankyou">
					<br>
					<div class="statusbar outer">
					<h3 style="margin-left">{{tr('thankYou')}}</h3>
					</div>
					<div class="trigger-buttons">
						<a href="http://agritechnica2015.denkfabrik-group.com/" class="navButton small"  id="consultantNotFound" style="margin-left:30px;float:left;font-size:1.5vw;font-weight:normal">{{tr('backHome')}}</a>
					</div>
					
					
				</div>
			</div>
		</div>
		<a href="http://agritechnica2015.denkfabrik-group.com/" class="navButton small backToTop"  ><span class="icon i_up_primary"></span><span class="btn_label">{{tr('backHome')}}</span></a>
	</section>

<div id="virtualKeyboardWrapper"></div>