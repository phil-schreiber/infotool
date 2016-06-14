	{{ content() }}
	<section id="start">
		<a name="start"></a>
		<div>
		<h1>{{tr("welcome")}}</h1>
		
		</div><br>
		<div id="startImgWrap" class="cbutton cbutton--effect-jagoda cbutton--click">
			<div  id="startTableWrap" class="cbutton cbutton--effect-jagoda2 cbutton--click">
				<table width="100%" >
					<tr>
						<td>
							<div class="flip-container">
								<div class="flipper">
									<div class="front tile1">
										<!-- front content -->
									</div>
									<div class="back tile1">
										<!-- back content -->
                                                                                <a href='{{language}}/survey'>
										
										<table style="width:100%;height:100%">
											<tr>											
												<td style="vertical-align:middle"><p>{{tr('button1')}}</p></td>											  
											</tr>
										  </table>										
										</a>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="flip-container">
								<div class="flipper">
									<div class="front tile2">
										<!-- front content -->
									</div>
									<div class="back tile2">
										<!-- back content -->
										<a href='#list'>
										<table style="width:100%;height:100%">
											<tr>											
												<td style="vertical-align:middle"><p>{{tr('button2')}}</p></td>											  
											</tr>
										  </table>	
										</a>
									</div>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="flip-container">
								<div class="flipper">
									<div class="front tile4">
										<!-- front content -->
									</div>
									<div class="back tile4">
										<!-- back content -->
										
                                                                                    <a href='#search' >
										<table style="width:100%;height:100%">
											<tr>											
												<td style="vertical-align:middle"><p style="font-size: 1.5vw;">{{tr('button3')}}</p></td>											  
											</tr>
										  </table>	
										</a>
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="flip-container">
								<div class="flipper">
									<div class="front tile3">
										<!-- front content -->
									</div>
									<div class="back tile3">
										<!-- back content -->
										<a href='{{language}}/baywa'>
										<table style="width:100%;height:100%">
											<tr>											
												<td style="vertical-align:middle"><p style="font-size: 1.5vw;">{{tr('button4')}}</p></td>											  
											</tr>
										  </table>	
										</a>
									</div>
								</div>
							</div>
							
						</td>
					</tr>
					
				</table>
				
			</div>			
		</div>
		<h2>{{tr("welcomeInfo")}}</h2>
		{{image('images/icon-touch-sm.png',"id":"touchIcon")}}
	</section>
	<section id="list">
		<a name="list"></a>
		<header>
			<div class="logo">
				<a href="#start" class="navLink">{{image('images/baywa-logo.png', "class":"logo")}}</a>
			</div>
			<div class="headerWrap">
				<h1>Sorteninformationen</h1>
				<h2>Überblick über unsere Sorten.</h2>
			</div>
			
			<div class='clearfix'></div>
			
		</header>
                <div class="form">
                <div  class="pt-wrapper" id="sortenPage">
                <div class="pt-page pt-page-1"  style="display:block;">
                    <table class="maintable">
                        
                            
                                  <tr><td><span style="font-size: 3vw;color: #01994e;font-weight:bold;">ARCHIPEL</span><br><span style="font-size: 1em;color:#4d4d4d">Der Herbstmeister</span></td>
                                      <td rowspan="3">
                                    <table>
                                        <tr>
                                            <td>
                                                <a href="{{baseurl}}public/media/archipel_1.jpg" data-toggle="lightbox" class="lightbox" data-gallery="galleryname"> <img src="{{baseurl}}public/media/archipel_1.jpg" style="height:20vh"></a>
                                            </td>
                                            <td>
                                                <a href="{{baseurl}}public/media/archipel_2.jpg" data-toggle="lightbox" class="lightbox" data-gallery="galleryname"> <img src="{{baseurl}}public/media/archipel_2.jpg" style="height:20vh"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="{{baseurl}}public/media/archipel_3.jpg" data-toggle="lightbox" class="lightbox" data-gallery="galleryname"> <img src="{{baseurl}}public/media/archipel_3.jpg" style="height:20vh"></a>
                                            </td>
                                            <td>
                                                <a href="{{baseurl}}public/media/archipel_4.jpg" data-toggle="lightbox" class="lightbox" data-gallery="galleryname"> <img src="{{baseurl}}public/media/archipel_4.jpg" style="height:20vh"></a>
                                            </td>
                                        </tr>                                                                                                            
                                    </table>
                                </td>
                                  </tr>
                                  <tr>                                  
                                <td>
                                    <p>                                        
Stärken:                                    </p>
                                    <ul>
                                        <li>Spitzen-Marktleistung durch hervorragenden Ölgehalt</li>
                                        <li>Sehr flexible Saatzeit, ideal auch für Spätsaaten</li>
                                        <li>Breite Standorteignung auf Grund hoher Vitalität</li>
                                        <li>Gesunde Abreite durch Phoma-Doppelresistenz (RLM7-Gen)</li>

                                    </ul>
                                   <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#archipel-Modal">
  Zur Feldkamera
</button>
                                    
                                </td>
                                
                            </tr>						
                            <tr>
                                <td style="vertical-align:bottom;">
                                    <a data-animation="32" data-goto="2" class="pt-trigger">MÜLLER 24*</a>
                                    <a data-animation="32" data-goto="3" class="pt-trigger">NAIAD</a><br>
                                    <span style="font-size:0.5vw;font-weight:normal">*MÜLLER 24 ist eine beim Deutschen und Europäischen Patent- und Markenamt eingetragene Wortmarke, die Sorte wurde offiziell unter dem Namen PR46W24 zugelassen.</span>
                                </td>
                            </tr>
                        
			</table>
                </div>
                <div class="pt-page pt-page-2"  style="display:block;">
                    <table class="maintable">                        
                        <tr><td ><span style="font-size: 3vw;color: #01994e;font-weight:bold;">MÜLLER 24*</span><br><span style="font-size: 1em;color:#4d4d4d">Der Ölmeister</span></td>
                        <td rowspan="3">
                                    <table>
                                        <tr>
                                            <td>
                                                <a href="{{baseurl}}public/media/mueller24_1.jpg" data-toggle="lightbox" class="lightbox" data-gallery="mueller"> <img src="{{baseurl}}public/media/mueller24_1.jpg" style="height:20vh"></a>
                                            </td>
                                            <td>
                                                <a href="{{baseurl}}public/media/mueller24_2.jpg" data-toggle="lightbox" class="lightbox" data-gallery="mueller"> <img src="{{baseurl}}public/media/mueller24_2.jpg" style="height:20vh"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <a href="{{baseurl}}public/media/mueller24_3.jpg" data-toggle="lightbox" class="lightbox" data-gallery="mueller"> <img src="{{baseurl}}public/media/mueller24_3.jpg" style="height:20vh"></a>
                                            </td>
                                            
                                        </tr>                                                                                                            
                                    </table>
                                </td>
                        </tr>
                            <tr>
                                <td>
                                    <p>                                        
Stärken:                                    </p>
                                    <ul>
                                        <li>Ertragsstarke Hybride mit sehr hohem Ölgehalt (BSA-Note 8)</li>
                                        <li>Langer Pflanzentyp mit hoher Standfestigkeit</li>
                                        <li>Gute Winterhärte durch geringe Neigung zum Überwachsen</li>
                                        <li>Zügige und gleichmäßig Stängel-Abreife</li>
                                        <li>Sehr gute Druschfähigkeit</li>

                                    </ul>
                                    <p><span style="font-size:0.8em">*MÜLLER 24* ist eine beim Deutschen und Europäischen Patent- und Markenamt eingetragene Wortmarke,<br> die Sorte wurde offiziell unter dem Namen PR46W24 zugelassen.</span></p>
                                   
                                    
                                </td>
                                
                            </tr>						
                            <tr>
                                <td  style="vertical-align:bottom">
                                    <a class="pt-trigger" data-animation="33" data-goto="-2">ARCHIPEL</a>
                                    <a data-animation="32" data-goto="3" class="pt-trigger">NAIAD</a>
                                </td>
                            </tr>
                        
			</table>
                </div>
                    <div class="pt-page pt-page-3"  style="display:block;">
                    <table class="maintable">
                        
                            <tr><td><span style="font-size: 3vw;color: #01994e;font-weight:bold">NAIAD</span><br><span style="font-size: 1em;color:#4d4d4d">Der leistungsstarke Hybride</span></td>
                            <td rowspan="3">
                                    <table>
                                        <tr>
                                            <td>
                                                <a href="{{baseurl}}public/media/naiad_1.jpg" data-toggle="lightbox" class="lightbox" data-gallery="naiad"> <img src="{{baseurl}}public/media/naiad_1.jpg" style="height:30vh"></a>
                                            </td>
                                            
                                        </tr>
                                        
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>                                        
Stärken:                                    </p>
                                    <ul>
                                        <li>Frohwüchsige Hybride</li>
                                        <li>Ideal für Spätsaaten</li>
                                        <li>Ausnutzung der Winterfeuchtigkeit durch zügige Entwicklung im Frühjahr</li>
                                        <li>Gute Eignung für Trockenlagen und Frühdruschgebiete</li>
                                        

                                    </ul>                                    
                                   
                                    
                                </td>
                                
                            </tr>						
                            <tr>
                                <td  style="vertical-align:bottom">
                                    <a class="pt-trigger" data-animation="33" data-goto="-2">MÜLLER24</a>
                                    <a data-animation="32" data-goto="1" class="pt-trigger">ARCHIPEL</a><br>
                                    <span style="font-size:0.5vw;font-weight:normal">*MÜLLER 24 ist eine beim Deutschen und Europäischen Patent- und Markenamt eingetragene Wortmarke, die Sorte wurde offiziell unter dem Namen PR46W24 zugelassen.</span>
                                </td>
                            </tr>
                        
			</table>
                </div>
                    </div>
		</div>
		<br>
		<div class="clearfix">
		
			<a href="#start" class="navButton small"><span class="icon i_up_primary"></span><span class="btn_label"></span>{{tr('backHome')}}</a>
		</div>
		
	</section>
	<section id="contact">
		<a name="contact"></a>
		<header>
			<div class="logo">
				<a href="#start" class="navLink">{{image('images/baywa-logo.png', "class":"logo")}}</a>
			</div>
			<div class="headerWrap">
				<h1>{{tr('contactHeader')}}</h1>
				<h2>{{tr('contactHeaderInfo')}}</h2>
			</div>
			<div id="virtualKeyboard" class="virtualKeyboard"></div>
			
			<div class='clearfix'></div>
		</header>
		
		<form id="contactForm" autocomplete="off" class="form" style="height:64%">
		<div id="contactFormWrapper" class="pt-wrapper">
			
				
					<table class="formTable" style="display:none">
						<tr>
							<td>
								<label for="consultant">{{tr('consultant')}}</label><br>
								<select id="consultantSelect" name="consultant">
									<option>{{tr('pleaseSelect')}}</option>
								{% for user in feusers %}
									<option value="{{user.uid}}">{{user.fullname}}</option>					
                                                                        
								{% endfor %}
								</select>
							</td>
						</tr>
						<tr>
							<td>
								<a class="pt-trigger" data-animation="32" data-goto="2">Weiter</a>
							</td>
						</tr>
					</table>
					
				
				<div class="pt-page pt-page-1" id="formPage" style="display:block;">
					<a href="#search" class="navButton small" style="float:left">{{tr('messageTo')}}: <span class="choice"></span></a>
					<div class="legend" style="margin-top:0;">* {{tr('mandatory')}}</div>
					
					<table class="formTable" style="min-height:90%;">
						<tr>
							<td colspan="2" style="text-align:left;padding-left: 16.9vw">
								
								<h4 style="font-size:1.3vw;">{{tr('contactInfo')}}:</h4>
								
							</td>
							
						</tr>
						<tr>
							
							<td>
								<div class="alignLeft">
								<label for="firstname">{{tr('yourFirstname')}}*</label><br>
								<input type="text" name="firstname"><br><br>
								</div>

							</td>
							<td>
								<div class="alignLeft">
								<label for="lastname">{{tr('yourLastname')}}*</label><br>
								<input type="text" name="lastname"><br><br>
								</div>
							</td>
							
						</tr>
						<tr>							
							<td>
								<div class="alignLeft">
								<label for="phone">{{tr('phone')}}*</label><br>
								<input type="text" name="phone"><br><br>
								</div>
							</td>
							<td>
								<div class="alignLeft">
								<label for="zip">{{tr('yourzip')}}</label><br>
								<input type="text" name="zip"><br><br>
								</div>
							</td>

						</tr>
						<tr>
							<td>
								<div class="alignLeft">
								<label for="city">{{tr('yourcity')}}</label><br>
								<input type="text" name="city"><br><br>
								</div>
							</td>
							<td>
								<div class="alignLeft">
								<label for="farmer">{{tr('farmer')}}</label><br>
								<span style="padding:0.5em;width: 12.5vw; display:inline-block;">
								<input type="radio" name="farmer" value="1" checked>{{tr('yes')}} / 
								<input type="radio" name="farmer" value="0">{{tr('no')}}
								</span>
								</div>
							</td>										
						</tr>
						
						<tr>
							<td colspan="2" style="text-align: center;">
								<a class="pt-trigger" data-animation="32" data-goto="2" id="formTrigger">Weiter</a>
								<br><br>
							</td>
						</tr>
					</table>
				</div>				
				<div class="pt-page pt-page-2">
					<a href="#search" class="navButton small" style="float:left">{{tr('messageTo')}}: <span class="choice"></span></a>
					<table class="formTable">
						<tr>
							<td style="text-align: left;">
								<label style="display: block; margin-left: auto;margin-right: auto;width: 40vw;">{{tr('premessage')}}</label><br>					
								<ul id="smsTextsSelect">			
									
								</ul>
								
							</td>
							<td style="text-align: left;">
								<br><label for="message" style="display: block; width: 40vw;">{{tr('message')}}</label><br>					
								<textarea name="message" id="smsTexts"></textarea>
							</td>
						</tr>						
						<tr>
							<td colspan="2" style="text-align: left; padding-left:3.5vw;">								
								<input type="hidden" name="terms" id="terms" value="1" checked="checked"> <label for="terms" class="terms">{{tr('terms')}}</label>								
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<a class="pt-trigger" data-animation="32" data-goto="-2">Zurück</a>&nbsp;<a data-animation="32" data-goto="3" class="pt-trigger" id="formTrigger2">{{tr('submitSMS')}}</a>
							</td>
						</tr>
					</table>					
				</div>
				<div class="pt-page pt-page-3">
						<a href="#search" class="navButton small" style="float:left">{{tr('messageTo')}}: <span class="choice"></span></a>
						<table class="formTable">
							<tr>
								<td>
									<h3 style="margin-left">{{tr('messageSent')}}</h3>						
						<br><br>
						<a href="http://infotool.denkfabrik-entwicklung.de/" class="navButton"  id="consultantNotFound"><span class="icon i_right_primary"></span><span class="btn_label">{{tr('backHome')}}</span></a>
								</td>
							</tr>						
							
						</table>					
					</div>
				 
			
		</div>
		</form>
		<table style="width:100%;">
			<tr>
				<td>
					<a href="#search" class="navButton small" style="float:left;"><span class="icon i_right_primary"></span><span class="btn_label">{{tr('goToSearch')}}</span></a>
				</td>
				
				<td>
					<a href="#start" class="navButton small"><span class="icon i_up_primary"></span><span class="btn_label">{{tr('backHome')}}</span></a>
				</td>
			</tr>
		</table>
		
		  
	</section>
	<section id="search">
		<a name="search"></a>
		<header>
			<div class="logo">
				<a href="#start" class="navLink">{{image('images/baywa-logo.png', "class":"logo")}}</a>
			</div>
			<div class="headerWrap">
				<h1>Ihre Rapsexperten</h1>
				<h2>Berater wählen und direkt Kontakt per SMS aufnehmen.</h2>
			</div>
			<div id="virtualKeyboard2" class="virtualKeyboard"></div>
			
			<div class='clearfix'></div>
			
		</header>

		<form id="searchForm" autocomplete="off" class="form">
			<div class="pt-page" style="display:block;visibility: visible">
				
					<table class="formTable" style="height:100%;min-height:100%;width:100%;">
                                            <tr>
						{% for user in feusers %}
						
							<td  style="vertical-align: top;padding:1vw;" class="suggestion-item autocomplete-suggestion" data-index="{{user.uid}}">
                                                            
                                                                <h2>{{user.fullname}}</h2>
                                                                <img src="{{baseurl}}{{user.image}}" style="height:35vh;">
                                                                <h4>
                                                                    {{user.specialization}}
                                                                </h4>
                                                            
									
									
								
								
							</td>                                                        
						
                                                {% endfor %}
                                                </tr>
					</table>
																			
			</div>
		</form>
                     
		<a href="#start" class="navButton small backToTop"><span class="icon i_up_primary"></span><span class="btn_label">{{tr('backHome')}}</span></a>
	</section>

		<div id="virtualKeyboardWrapper" ></div>
		
		<div id="iframeOverlay" class="overlay">
			<iframe src="" style="height:100%;width:100%;overflow: scroll" scrolling="auto"></iframe>
		</div>
                
  <div class="modal fade" id="archipel-Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
             <div class="modal-dialog" role="document">
    <div class="modal-content">      
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        
      </div>
      <div class="modal-body">
        <iframe src="" id="archipelFieldeye" style="width:100%;height:915px;" frameborder="0" scrolling="auto" name="Fieldeye Feldkamera" style="padding-bottom:20px;">
			 </iframe>
      </div>
      
    </div>
  </div>
</div>   
        