<div class="cntct_frame1">
	<div class="inlineBlock-parent">
		<div class="cntct_form-hldr align-t">
			<div class="cntct_form staggerfade_hldr">
				<form action="" id="contactForm" method="post">
					<div class="input-hldr">
						<input type="text" name="fullname" placeholder="Full Name" required>
					</div>
					<div class="input-hldr">
						<input type="text" name="email" placeholder="E-mail Address" required>
					</div>
					<div class="input-hldr">
						<input type="text" name="contact" placeholder="Contact Number" onkeydown="return ( event.ctrlKey || event.altKey 
				                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
				                    || (95<event.keyCode && event.keyCode<106)
				                    || (event.keyCode==8) || (event.keyCode==9) 
				                    || (event.keyCode>34 && event.keyCode<40) 
				                    || (event.keyCode==46) )" required>
					</div>
					<div class="input-hldr">
						<textarea type="text" name="messagedetails" placeholder="Message" required></textarea>
					</div>
					<div class="button-hldr">
						<button id="contactBtn">Send Us</button>
						<input type="hidden" name="postFlag" value="1">
					</div>
				</form>
			</div>
		</div
		><div class="map_hldr align-t">
			<div class="map-hldr l-margin-t">
				<div id="map" class="map"></div>
			</div>
		</div>
	</div>
</div>