<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=false; section>
	<#if section = "header">
	<#elseif section = "form">

		<div class="kc-sorry-wrap">
			<div class="kc-sorry-card" role="alert" aria-live="polite">

				<#if message?has_content && message.summary?has_content>
					<div class="kc-sorry-title">
					</div>
				</#if>

				<div class="kc-sorry-back">
					<a class="kc-sorry-back-link"
					   href="${returnLinkTarget!url.loginRestartFlowUrl}">
						${returnLinkText!"Return to login"}
					</a>
				</div>
			</div>
		</div>

	</#if>
</@layout.registrationLayout>
