/*
 * Kuali Coeus, a comprehensive research administration system for higher education.
 * 
 * Copyright 2005-2015 Kuali, Inc.
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.kuali.kra.irb.notification;

import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.common.notification.impl.bo.NotificationModuleRoleQualifier;
import org.kuali.kra.irb.Protocol;
import org.kuali.kra.irb.onlinereview.ProtocolOnlineReview;
import org.kuali.kra.kim.bo.KcKimAttributes;

/**
 * Implements the IRBNotificationRoleQualifierService.
 */
public class IRBNotificationRoleQualifierServiceImpl implements IRBNotificationRoleQualifierService {

    private Protocol protocol;
    private ProtocolOnlineReview protocolOnlineReview;
    
    @Override
    public String getRoleQualifierValue(NotificationModuleRoleQualifier qualifier) {
        String roleQualifierValue = null;
        
        String qName = qualifier.getQualifier();
        
        if (StringUtils.equalsIgnoreCase(qName, KcKimAttributes.UNIT_NUMBER) 
                || StringUtils.equalsIgnoreCase(qName, "protocolLeadUnitNumber")) {
            roleQualifierValue = getProtocol().getLeadUnitNumber();
        } else if (StringUtils.equalsIgnoreCase(qName, KcKimAttributes.PROTOCOL)) {
            roleQualifierValue = getProtocol().getProtocolNumber();
        } else if (StringUtils.equalsIgnoreCase(qName, KcKimAttributes.SUBUNITS)) {
            roleQualifierValue = "Y";
        } else if (StringUtils.equalsIgnoreCase(qName, "submissionId")) {
            if (getProtocol().getProtocolSubmission() != null) {
                roleQualifierValue = getProtocol().getProtocolSubmission().getSubmissionId().toString();
            }
        } else if (StringUtils.equals(qName, "protocolOnlineReviewId")) {
            if (protocolOnlineReview != null) {
                roleQualifierValue = protocolOnlineReview.getProtocolOnlineReviewId().toString();
            }
        }
        
        return roleQualifierValue;
    }

    public Protocol getProtocol() {
        return protocol;
    }

    public void setProtocol(Protocol protocol) {
        this.protocol = protocol;
    }

    public ProtocolOnlineReview getProtocolOnlineReview() {
        return protocolOnlineReview;
    }

    public void setProtocolOnlineReview(ProtocolOnlineReview protocolOnlineReview) {
        this.protocolOnlineReview = protocolOnlineReview;
    }

}
