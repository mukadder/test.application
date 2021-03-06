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
package org.kuali.kra.negotiations.bo;

import java.io.Serializable;

/**
 * 
 * This class maintains the association type of a negotiation.
 */
public class NegotiationAssociationType  extends NegotiationsGroupingBase implements Serializable {
    
    public static final String NONE_ASSOCIATION = "NO";
    public static final String PROPOSAL_LOG_ASSOCIATION = "PL";
    public static final String INSTITUATIONAL_PROPOSAL_ASSOCIATION = "IP";
    public static final String AWARD_ASSOCIATION = "AWD";
    public static final String SUB_AWARD_ASSOCIATION = "SWD";


    private static final long serialVersionUID = 8163060629967261671L;
    

    public NegotiationAssociationType() {
        super();
    }
}
