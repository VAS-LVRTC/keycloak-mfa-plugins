<#import "template.ftl" as layout>

<@layout.registrationLayout displayInfo=false; section>
	<#if section = "header">
	<#elseif section = "form">

		<div class="kc-sorry-wrap">
			<div class="kc-sorry-card" role="alert" aria-live="polite">

				<#if message?has_content && message.summary?has_content>
					<div class="kc-sorry-title">
						${msg("sorryTitle")}
					</div>
				</#if>

				<div class="kc-sorry-text">
					${msg("sorryText")}
				</div>

				<div class="kc-sorry-back">
					<a class="kc-sorry-back-link"
					   href="${properties.sorryBackUrl!url.loginRestartFlowUrl}">
						${msg("sorryBackLinkText")}
					</a>
				</div>
			</div>
		</div>

	</#if>
</@layout.registrationLayout>
