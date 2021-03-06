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
package org.kuali.coeus.propdev.impl.budget.modular;

import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.sys.framework.keyvalue.KeyValueFinderService;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.common.budget.framework.rate.RateClass;
import org.kuali.rice.core.api.util.ConcreteKeyValue;
import org.kuali.rice.core.api.util.KeyValue;
import org.kuali.rice.krad.uif.control.UifKeyValuesFinderBase;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BudgetModularIDCRateTypeValuesFinder extends UifKeyValuesFinderBase {
    @Override
    public List<KeyValue> getKeyValues() {
        KeyValueFinderService keyValueFinderService= (KeyValueFinderService) KcServiceLocator.getService("keyValueFinderService");
        Map<String,String> queryMap = new HashMap<String,String>();
        queryMap.put("rateClassType", "O");
        List<KeyValue> keyValueList = keyValueFinderService.getKeyValues(RateClass.class, "code", "description", queryMap);
        KeyValue KeyValueSelect = new ConcreteKeyValue("", "select");
        for (KeyValue KeyValue : keyValueList) {
            if (StringUtils.isBlank(KeyValue.getKey().toString())) {
                KeyValueSelect = KeyValue;
            }            
        }
        keyValueList.remove(KeyValueSelect);
        return keyValueList;
        
    }
}
