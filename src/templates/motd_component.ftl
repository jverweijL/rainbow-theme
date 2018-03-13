<#--
     Display site level MOTD message
-->

<#if is_signed_in || site_display_public_motd>
    <div class="row">
        <div class="col-lg-12">
            <div class="esa-motd">
                <div class="alert alert-${site_motd_style}" role="alert">
                    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
                        <@liferay_ui["icon"] icon="times" markupView="lexicon"/>
                        <span class="sr-only">Close</span>
                    </button>
                    <strong class="lead">${site_motd_style?cap_first}!</strong> ${site_motd_message}
                </div>
            </div>
        </div>
    </div>
</#if>
