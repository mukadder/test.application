<%--
   - Kuali Coeus, a comprehensive research administration system for higher education.
   - 
   - Copyright 2005-2015 Kuali, Inc.
   - 
   - This program is free software: you can redistribute it and/or modify
   - it under the terms of the GNU Affero General Public License as
   - published by the Free Software Foundation, either version 3 of the
   - License, or (at your option) any later version.
   - 
   - This program is distributed in the hope that it will be useful,
   - but WITHOUT ANY WARRANTY; without even the implied warranty of
   - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   - GNU Affero General Public License for more details.
   - 
   - You should have received a copy of the GNU Affero General Public License
   - along with this program.  If not, see <http://www.gnu.org/licenses/>.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>


<c:set var="attributes" value="${DataDictionary.IacucProtocolApproveBean.attributes}" />
<c:set var="action" value="protocolProtocolActions" />
<c:set var="datesReadOnly" value="${KualiForm.actionHelper.protocol.amendment and not KualiForm.actionHelper.protocol.renewal}" />
<c:set var="bean" value="${KualiForm.actionHelper.protocolAdminApprovalBean}" />
<c:set var="property" value="actionHelper.protocolAdminApprovalBean" />
<c:set var="methodToCall" value="grantAdminApproval" />
<c:set var="taskName" value="adminApproveProtocol" />

<kra:permission value="${KualiForm.actionHelper.canAdministrativelyApprove}">
	<tr>
		<td class="tab-subhead" scope="row">
			<kul:innerTab tabTitle="Administratively Approve Protocol" parentTab="" defaultOpen="false" tabErrorKey="${property}*" overrideDivClass="inner-subhead" >
			   
			   <kra-protocol-action:padLeft>
			        <table class="tab" cellpadding="0" cellspacing="0" summary=""> 
			            <tbody>
			            
			                <tr>
			                    <th width="15%"> 
			                        <div align="right">
			                            <nobr>
			                                <kul:htmlAttributeLabel attributeEntry="${attributes.approvalDate}" />
			                            </nobr>
			                        </div>
			                    </th>
			                    <td>
			                    	<html:hidden styleId="defaultExpirationDateDifference" property="${property}.defaultExpirationDateDifference" />
			                        <nobr>
			                            <kul:htmlControlAttribute property="${property}.approvalDate" 
			                                                      attributeEntry="${attributes.approvalDate}" 
			                                                      readOnly="${datesReadOnly}"                                                      
			                                                      onchange="loadExpeditedDates('${property}.approvalDate', '${property}.expirationDate', 'defaultExpirationDateDifference');" />
			                                                      
			                        </nobr>
			                    </td>
			                </tr>
			                
			                <tr>
			                    <th width="15%"> 
			                        <div align="right">
			                            <nobr>
			                                <kul:htmlAttributeLabel attributeEntry="${attributes.expirationDate}" />
			                            </nobr>
			                        </div>
			                    </th>
			                    <td>
			                        <nobr>
			                            <kul:htmlControlAttribute property="${property}.expirationDate" 
			                                                      attributeEntry="${attributes.expirationDate}" 
			                                                      readOnly="${datesReadOnly}" />
			                        </nobr>
			                    </td>
			                </tr>
			                
			                <tr>
			                    <th width="15%"> 
			                        <div align="right">
			                            <nobr>
			                                <kul:htmlAttributeLabel attributeEntry="${attributes.comments}" />
			                            </nobr>
			                        </div>
			                    </th>
			                    <td>
			                        <nobr>
			                            <kul:htmlControlAttribute property="${property}.comments" 
			                                                      attributeEntry="${attributes.comments}" />
			                        </nobr>
			                    </td>
			                </tr>
			                
			                <tr>
			                    <th width="15%"> 
			                        <div align="right">
			                            <nobr>
			                                <kul:htmlAttributeLabel attributeEntry="${attributes.actionDate}" />
			                            </nobr>
			                        </div>
			                    </th>
			                    <td>
			                        <nobr>
			                            <kul:htmlControlAttribute property="${property}.actionDate" 
			                                                      attributeEntry="${attributes.actionDate}"  />
			                        </nobr>
			                    </td>
			                </tr>
			                
			                
			                <tr>
			                    <td colspan="2">
			                        <kra-iacuc-action:reviewComments bean="${bean.reviewCommentsBean}"
			                                                         property="${property}.reviewCommentsBean"
			                                                         action="${action}"
																     taskName="${taskName}" />
								</td> 
							</tr> 
			                
			                <tr>
			                    <td align="center" colspan="2">
			                        <div align="center">
			                            <html:image property="methodToCall.${methodToCall}.anchor${tabKey}"
			                                        src='${ConfigProperties.kra.externalizable.images.url}tinybutton-submit.gif' 
			                                        styleClass="tinybutton"/>
			                        </div>
			                    </td>
			                </tr>
			                
			                
			            </tbody>
			        </table>       
			   </kra-protocol-action:padLeft>
			    
			</kul:innerTab>
		</td>
	</tr>
</kra:permission>
