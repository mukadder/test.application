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
package org.kuali.kra.irb.actions.amendrenew;

import org.kuali.coeus.sys.framework.rule.KcBusinessRule;
import org.kuali.kra.irb.ProtocolDocument;
import org.kuali.kra.protocol.actions.amendrenew.CreateAmendmentEventBase;

/**
 * When an amendment is created, this event is generated.
 */
@SuppressWarnings("unchecked")
public class CreateAmendmentEvent extends CreateAmendmentEventBase {


    public CreateAmendmentEvent(ProtocolDocument document, String propertyName, ProtocolAmendmentBean amendmentBean) {
        super(document, propertyName, amendmentBean);
    }

    @Override
    public KcBusinessRule getRule() {
        return new CreateAmendmentRule();
    }
}
