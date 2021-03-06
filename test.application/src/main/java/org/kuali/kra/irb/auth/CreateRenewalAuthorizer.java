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
package org.kuali.kra.irb.auth;

import org.kuali.kra.infrastructure.PermissionConstants;
import org.kuali.kra.irb.actions.ProtocolActionType;

/**
 * Is the user allowed to create a renewal for the protocol?
 */
public class CreateRenewalAuthorizer extends ProtocolAuthorizer {

    @Override
    public boolean isAuthorized(String userId, ProtocolTask task) {
        
        return  !isAmendmentOrRenewal(task.getProtocol()) &&
                canExecuteAction(task.getProtocol(), ProtocolActionType.RENEWAL_CREATED) &&
                (hasPermission(userId, task.getProtocol(), PermissionConstants.CREATE_RENEWAL) 
                    || hasPermission(userId, task.getProtocol(), PermissionConstants.CREATE_ANY_RENEWAL)) &&
                !(isRequestForSuspension(task.getProtocol()) & !isIrbAdmin(userId));
    }
}
