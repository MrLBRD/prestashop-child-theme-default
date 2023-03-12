{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
{block name='header_banner'}
    <div class="header-banner" style='background-color: #698f5b; text-align: center;'>
        {* <div class="header-banner" style='background-color: #df4d42; text-align: center;'>
            <p style='color: #fff; font-size: 1.25rem; line-height: 1.75rem; font-weight: 500; margin: 0 1.25rem; padding: 0.75rem 0;'>Nous sommes fermés du 22 décembre au 2 janvier (inclus).</p>
        </div> *}
        {**
        * {hook h='displayBanner'}
        *}
        <p class='js-custom-header' style='color: #fff; font-size: 1.05rem; line-height: 2rem; font-weight: 500; margin: 0 1.25rem;'>Commander ici et retirer votre commande sur <a style='text-decoration: underline; color: #fff;' href="https://www.fermedesvallons40.fr/content/16-prochains-marches-evenement">un marché*</a>.</p>
    </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container">
      <div class="row">
        <div class="hidden-sm-down">
          <div class="col-md-5 col-xs-12">
            {hook h='displayNav1'}
          </div>
          <div class="col-md-7 right-nav">
              {hook h='displayNav2'}
          </div>
        </div>
        <div class="hidden-md-up text-sm-center mobile">
          <div class="float-xs-left" id="menu-icon">
            <i class="material-icons d-inline">&#xE5D2;</i>
          </div>
          <div class="float-xs-right" id="_mobile_cart"></div>
          <div class="float-xs-right" id="_mobile_user_info"></div>
          <div class="top-logo" id="_mobile_logo"></div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
       <div class="row">
        <div class="col-md-2 hidden-sm-down" id="_desktop_logo">
            {if $page.page_name == 'index'}
              <h1>
                <a href="{$urls.pages.index}">
                  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}" loading="lazy" width="100" height="28">
                </a>
              </h1>
            {else}
                <a href="{$urls.pages.index}">
                  <img class="logo img-responsive" src="{$shop.logo}" alt="{$shop.name}" loading="lazy" width="100" height="28">
                </a>
            {/if}
        </div>
        <div class="header-top-right col-md-10 col-sm-12 position-static">
          {hook h='displayTop'}
        </div>
      </div>
      <div id="mobile_top_menu_wrapper" class="row hidden-md-up" style="display:none;">
        <div class="js-top-menu mobile" id="_mobile_top_menu"></div>
        <div class="js-top-menu-bottom">
          <div id="_mobile_currency_selector"></div>
          <div id="_mobile_language_selector"></div>
          <div id="_mobile_contact_link"></div>
        </div>
      </div>
    </div>
  </div>
  {hook h='displayNavFullWidth'}
{/block}

{* <script>
  let superHeader = document.querySelector('p.js-custom-header')
  let contenus = [
    '🚚 La livraison en point relais est maintenant disponible. 🚚',
    'Commander ici et retirer votre commande sur un marché.',
  ]
  let i = 0

  const switchContent = function() {
    superHeader.innerText = contenus[i]
    i++
    if(i == contenus.length) {
      i = 0
    }
  }

  switchContent()

  var myVar;

  function myFunction() {
    myVar = setInterval(switchContent, 6000);
  }

  myFunction()
</script> *}