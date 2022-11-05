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
{extends file='page.tpl'}

{block name='page_title'}
    {$cms_category.name}
{/block}

{block name='page_content'}
    {block name='cms_sub_categories'}
        {if $sub_categories}
            <p>{l s='List of sub categories in %name%:' d='Shop.Theme.Global' sprintf=['%name%' => $cms_category.name]}</p>
            <ul>
                {foreach from=$sub_categories item=sub_category}
                    <li>
                        <a href="{$sub_category.link}">
                            {$sub_category.name}
                        </a>
                    </li>
                {/foreach}
            </ul>
        {/if}
    {/block}

    {block name='cms_sub_pages'}
        {if $cms_pages}
            <p>{l s='List of pages in %category_name%:' d='Shop.Theme.Global' sprintf=['%category_name%' => $cms_category.name]}</p>
            <p>{$cms_category.description}</p>
            <div class="cms-cardscontainer">
                {foreach from=$cms_pages item=cms_page}
                    <div class="cms-card">
                        <a
                            class="cms-cardimg"
                            href="{$cms_page.link}"
                            title="{$cms_page.meta_title}">
                            <img class="img-fluid" src="{$urls.img_ps_url}cms/recipes/{$cms_page.id_cms}.png" alt="">
                        </a>
                        <div class="cms-cardtitle">
                            <a
                                href="{$cms_page.link}">
                                {$cms_page.meta_title}
                            </a>
                        </div>
                    </div>
                {/foreach}
            </div>
        {/if}
    {/block}
{/block}
