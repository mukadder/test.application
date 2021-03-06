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

<c:set var="committeeAttributes" value="${DataDictionary.IacucCommittee.attributes}" />
<c:set var="batchCorrespondenceDetailAttributes" value="${DataDictionary.IacucBatchCorrespondenceDetail.attributes}" />
<c:set var="kraAttributeReferenceDummyAttributes" value="${DataDictionary.KraAttributeReferenceDummy.attributes}" />

<h3>
    <span class="subhead-left">Batch Correspondence History</span>
    <span class="subhead-right"><kul:help businessObjectClassName="org.kuali.kra.irb.correspondence.BatchCorrespondence" altText="help"/></span>
</h3>

<table cellpadding="0" cellspacing="0">
    <tr>
        <th width="20%">
            <div align="right">
                Committee ID:
            </div>
        </th> 
        <td width="30%">
            <div align="left">
                <kul:htmlControlAttribute property="document.committeeList[0].committeeId" 
                                          attributeEntry="${committeeAttributes.committeeId}" 
                                          readOnly="true" />
            </div>
        </td>
        
        <th width="20%">
            <div align="right">
                Committee Name:
            </div>
        </th> 
        <td width="30%">
            <div align="left">
                <kul:htmlControlAttribute property="document.committeeList[0].committeeName" 
                                          attributeEntry="${committeeAttributes.committeeName}" 
                                          readOnly="true" />
            </div>
        </td>
    </tr> 
    <tr>
        <th>
            <div align="right">
                *Batch Type:
            </div>
        </th> 
        <td>
            <div align="left">
                <kul:htmlControlAttribute property="committeeHelper.historyBatchCorrespondenceTypeCode" 
                                          attributeEntry="${batchCorrespondenceDetailAttributes.batchCorrespondenceTypeCode}" 
                                          readOnly="false" />
            </div>
        </td>
        
        <th>
            <div align="right">
                Run Date:
            </div>
        </th> 
        <td>
            <div align="left">
                from
                <kul:htmlControlAttribute property="committeeHelper.historyStartDate" 
                                          attributeEntry="${kraAttributeReferenceDummyAttributes.genericDate}"
                                          readOnly="false" />
                to
                <kul:htmlControlAttribute property="committeeHelper.historyEndDate" 
                                          attributeEntry="${kraAttributeReferenceDummyAttributes.genericDate}" 
                                          readOnly="false" />
            </div>
        </td>
    </tr>
    <tr>
        <td class="infoline" colspan="4">
            <div align="center">
                <html:image property="methodToCall.filterBatchCorrespondenceHistory"
                            src='${ConfigProperties.kra.externalizable.images.url}tinybutton-filter.gif' 
                            styleClass="tinybutton"/>
            </div>                         
        </td>
    </tr> 
</table>

<c:if test="${not empty KualiForm.committeeHelper.historyBatchCorrespondenceTypeCode}">
    <p>&nbsp;</p>
    
    <div align="left">
        <kul:errors keyMatch="committeeHelper.batchCorrespondenceHistory*" /> <br>
    </div>

    <h3>
        <span class="subhead-left">
            Batch Type:
            <kul:htmlControlAttribute property="committeeHelper.historyBatchCorrespondenceTypeCode" 
                                      attributeEntry="${batchCorrespondenceDetailAttributes.batchCorrespondenceTypeCode}" 
                                      readOnly="true" />
        </span>
        <span class="subhead-right"><kul:help businessObjectClassName="org.kuali.kra.committee.bo.CommitteeBatchCorrespondence" altText="help" /></span>
    </h3>
    
    <c:if test="${not empty KualiForm.committeeHelper.batchCorrespondenceHistory}">
        <div id="historyDetails">  
    
        <table cellpadding=0 cellspacing=0 border=0>
            <c:forEach items="${KualiForm.committeeHelper.batchCorrespondenceHistory}" var="batchCorrespondenceHistory" varStatus="status">
                <tr>
                    <td class="infoline" colspan="2">
                        <kra-committee:iacucCommitteeActionBatchCorrespondenceRun committeeBatchCorrespondence="${batchCorrespondenceHistory}" committeeBatchCorrespondenceProperty="committeeHelper.batchCorrespondenceHistory[${status.index}]" />
                    </td>
                </tr>
            </c:forEach>
                <tr>
                    <td class="neutral" width = "94%" style="background-color: #e4e4e4;">
                        &nbsp;
                    </td>
                    <td  style="background-color: #e4e4e4;" >
                        <div align="center">
                           <a id= "viewBatchCorrespondenceHistory" href="#"> <html:image property="methodToCall.viewBatchCorrespondenceHistory"
                                        src='${ConfigProperties.kra.externalizable.images.url}tinybutton-view.gif' 
                                        styleClass="tinybutton"
                                        onclick="excludeSubmitRestriction = true;" />
                           </a>
                        </div>                         
                    </td>
                </tr>
        </table>
        </div>
        
    </c:if>            
</c:if>            
