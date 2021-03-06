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
package org.kuali.kra.award.contacts;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.kuali.coeus.sys.framework.rule.KcDocumentEventBase;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.rules.rule.BusinessRule;

/**
 * This class is the event passed when a new projectPerson is being added
 */
public class AwardProjectPersonRuleAddEvent extends KcDocumentEventBase {
    private static final Log LOG = LogFactory.getLog(AwardProjectPersonRuleAddEvent.class);
    
    private AwardPerson newProjectPerson;
    
    protected AwardProjectPersonRuleAddEvent(String description, String errorPathPrefix, Document document, AwardPerson newProjectPerson) {
        super(description, errorPathPrefix, document);
        this.newProjectPerson = newProjectPerson;
    }

    /**
     * Gets the newProjectPerson attribute. 
     * @return Returns the newProjectPerson.
     */
    public AwardPerson getNewProjectPerson() {
        return newProjectPerson;
    }

    public Class<AwardProjectPersonAddRule> getRuleInterfaceClass() {
        return AwardProjectPersonAddRule.class;
    }

    public boolean invokeRuleMethod(BusinessRule rule) {
        return ((AwardProjectPersonAddRule) rule).processAddAwardProjectPersonBusinessRules(this);
    }

    @Override
    protected void logEvent() {
        LOG.info("Logging AddAwardProjectPersonRuleEvent");
    }

}
