<!-- Add New Customer tpl -->
<table width="100%"   border="0" cellpadding="20" cellspacing="5">
    <tr>
        <td>
            <!-- Begin page -->
            <table width="700" cellpadding="5" cellspacing="0" border="0" >
                <tr>
                    <td class="menuhead2" width="80%">{$translate_customer_add}</td>
                    <td class="menuhead2" width="20%" align="right" valign="middle">
                        <a><img src="images/icons/16x16/help.gif" alt="" border="0"
                                onMouseOver="ddrivetip('<b>{$translate_customer_add}</b><hr><p><i>Display Name:</i>This is the customers display name. It will show up on all pertaining pages. This can be a company name or the customers Fist name and last name.<br><br> <i>First Name:</i>This is the customers first name or if this is a bussiness this is the main contacts first name for the bussiness.<br></p>')"
                                onMouseOut="hideddrivetip()"
                                onClick="window.location"></a>
                    </td>
                </tr><tr>
                    <td class="menutd2" colspan="2">
					{if $error_msg != ""}
						{include file="core/error.tpl"}
					{/if}
					{include file="customer/new.js"}
                        <table class="olotable" width="100%" border="0" cellpadding="5" cellspacing="0">
                            <tr>
                                <td class="menutd">

                                    <table class="menutable" width="100%" border="0" cellpadding="2" cellspacing="2" >
                                        <tr>
                                            <td>
                                                <!-- New Customer Form -->
												{literal}
                                                <form  action="index.php?page=customer:new" method="POST" name="new_customer" id="new_customer" onsubmit="try { var myValidator = validate_new_customer; } catch(e) { return true; } return myValidator(this);">
												{/literal}
                                                    <table width="100%" cellpadding="3" cellspacing="0" border="0">
                                                        <tr>
                                                            <td colspan="2" align="left">
                                                                <table>
                                                                    <tbody align="left">
                                                                        <tr>
                                                                            <td align="right"><b>{$translate_display}</b></td>
                                                                            <td colspan="3"><input class="olotd5" size="60" name="displayName" type="text" /></td>
                                                                        </tr><tr>
                                                                            <td align="right"><b>{$translate_first}</b><span style="color: #ff0000">*</span></td>
                                                                            <td><input class="olotd5" name="firstName" type="text" /></td>
                                                                        </tr><tr>
                                                                            <td align="right"><b>{$translate_last}</b><span style="color: #ff0000">*</span></td>
                                                                            <td><input class="olotd5" name="lastName" type="text" /></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><b>{$translate_customer_type}</b><span style="color: #ff0000">*</span></td>
                                                                            <td>
                                                                                <select class="olotd5" name="customerType">
                                                                                    <option value="1">{$translate_customer_type_1}</option>
                                                                                    <option value="2">{$translate_customer_type_2}</option>
                                                                                    <option value="3">{$translate_customer_type_3}</option>
                                                                                    <option value="4">{$translate_customer_type_4}</option>
                                                                                    <option value="5">{$translate_customer_type_5}</option>
                                                                                    <option value="6">{$translate_customer_type_6}</option>
                                                                                    <option value="7">{$translate_customer_type_7}</option>
                                                                                    <option value="8">{$translate_customer_type_8}</option>
                                                                                    <option value="9">{$translate_customer_type_9}</option>
                                                                                    <option value="10">{$translate_customer_type_10}</option>

                                                                                </select>
                                                                                <input type="hidden" name="page" value="customer:new">
                                                                            </td>

                                                                        </tr><tr>
                                                                            <td align="right"><b>{$translate_customer_discount}</b></td>
                                                                            <td><a><input type="text" size="4" name="discount" value="" class="olotd5"><b>%</b></a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><span style="color: #ff0000"></span><b>{$translate_email}</b></td>
                                                                            <td><input class="olotd5" name="email" type="text" size="50"/></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </td>
                                                        </tr><tr>
                                                            <td class="menuhead" colspan="2">{$translate_phone}</td>
                                                        </tr><tr>
                                                            <td colspan="2">

                                                                <table>
                                                                    <tr>
                                                                        <td align="right"><b>{$translate_customer_home}</b><span style="color: #ff0000">*</span></td>
                                                                        <td><input class="olotd5" name="homePhone" type="text" /></td>
                                                                    </tr><tr>
                                                                        <td align="right"><b>{$translate_customer_work}</b></td>
                                                                        <td><input class="olotd5" name="workPhone" type="text" /></td>
                                                                    </tr><tr>
                                                                        <td align="right"><b>{$translate_customer_mobile}</b></td>
                                                                        <td><input class="olotd5" name="mobilePhone" type="text" /></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr><tr>
                                                            <td class="menuhead" colspan="2">{$translate_customer_address}</td>
                                                        </tr><tr>
                                                            <td colspan="2">

                                                                <table>
                                                                    <tbody align="left">
                                                                        <tr>
                                                                            <td align="right"><span style="color: #ff0000">*</span><b>{$translate_customer_address}</b></td>
                                                                            <td colspan="3"><input class="olotd5" size="80" name="address" type="text" value="405 Example Street" /></td>
                                                                        </tr><tr>
                                                                            <td align="right"><span style="color: #ff0000">*</span><b>{$translate_customer_city}</b></td>
                                                                            <td><input class="olotd5" name="city" type="text" value="{$company_city}"/></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="right"><span style="color: #ff0000">*</span><b>{$translate_customer_state}</b></td>
                                                                            <td><input class="olotd5" name="state" type="text" value="{$company_state}"/></td>
                                                                        </tr><tr>
                                                                            <td align="right"><span style="color: #ff0000">*</span><b>{$translate_customer_zip}</b></td>
                                                                            <td colspan="2"><input class="olotd5" name="zip" type="text" value="{$company_zip}"/></td>
                                                                        </tr>                                                                        

                                                                        <tr>
                                                                            <td colspan="2"><input class="olotd5" name="submit" value="Submit" type="submit" /></td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>	

                                                            </td>
                                                        </tr>
                                                    </table>

                                                </form>
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>



