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
package org.kuali.kra.irb.onlinereview;

import org.apache.commons.lang3.StringUtils;
import org.kuali.kra.irb.actions.IrbActionsKeyValuesBase;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * Assembles the Protocol Review Types to display in the drop-down menu when
 * submitting a protocol to the IRB office for review.
 */
public class ProtocolOnlineReviewStatusValuesFinder extends IrbActionsKeyValuesBase {
    
    @SuppressWarnings("unchecked")
    public List<KeyValue> getKeyValues() {
        Collection<ProtocolOnlineReviewStatus> reviewStatusCodes = this.getKeyValuesService().findAll(ProtocolOnlineReviewStatus.class);
        List<KeyValue> keyValues = new ArrayList<KeyValue>();
        keyValues.add(new ConcreteKeyValue("", "select"));
        for (ProtocolOnlineReviewStatus status : reviewStatusCodes) {
            //we do not want users to assign the cancelled code.
            if (!StringUtils.equals(ProtocolOnlineReviewStatus.REMOVED_CANCELLED_STATUS_CD, status.getStatusCode())) {
                keyValues.add(new ConcreteKeyValue(status.getStatusCode(), status.getDescription()));
            }
        }
        return keyValues;
    }
}
