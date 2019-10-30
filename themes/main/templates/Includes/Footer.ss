<div class="ftr-frame">
	<div class="ftr-cntnr inlineBlock-parent">
		<div class="logo-hldr align-t">
			<a href="">
				<% loop $HeaderFooter %>
				<div class="ftr-logo" style="background-image: url('$Logo.URL');"></div>
				<% end_loop %>
			</a>
			<div class="ftr-link terms">
				<a href="terms-and-conditions">Terms & Conditions</a>
			</div>
			<div class="ftr-link">
				<a href="privacy-policy">Privacy Policy</a>
			</div>
		</div>
	</div>
	<div class="ftr-bottom">
		<p>$copyright</p>
	</div>
</div>