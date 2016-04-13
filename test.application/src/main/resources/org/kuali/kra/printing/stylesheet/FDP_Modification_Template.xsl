<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2008 rel. 2 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:award="http://subcontractFdpReports.bean.xml.utils.coeus.mit.edu/award" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:subcontract="http://subcontractFdpReports.bean.xml.utils.coeus.mit.edu/subcontract" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
	<xsl:param name="SV_OutputFormat" select="'PDF'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.2in" margin-right="0.2in">
				<fo:region-body margin-top="0.5in" margin-bottom="0.79in"/>
				<fo:region-before extent="0.5in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
				<xsl:call-template name="headerall"/>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:block/>
						<xsl:for-each select="$XML">
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x2029;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:table font-family="Arial" table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="-1pt">
								<fo:table-column column-width="50%"/>
								<fo:table-column column-width="25%"/>
								<fo:table-column column-width="25%"/>
								<fo:table-body start-indent="0pt">
									<fo:table-row font-family="Arial" font-size="16pt">
										<fo:table-cell font-family="Arial" number-columns-spanned="3" border="solid 1pt gray" padding="0" height="32" text-align="center" display-align="center">
											<fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:block margin-left="(100% - 100%) div 2" margin-right="(100% - 100%) div 2" text-align="center" margin="0pt">
													<fo:block>
														<fo:inline>
															<xsl:text>Research Subaward Agreement</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:block text-align="center" margin="0pt">
													<fo:block>
														<fo:inline>
															<xsl:text>Amendment</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row font-family="Arial" font-size="16pt">
										<fo:table-cell border="solid 1pt gray" padding="0" text-align="center" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Prime Recipient</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="2" border="solid 1pt gray" padding="0" text-align="center" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Subrecipient</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:table font-family="Arial" font-size="9pt" table-layout="fixed" width="100%" border-spacing="2pt">
													<fo:table-column column-width="100%"/>
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Institution/Organization (&quot;Prime Recipient&quot;)</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row font-family="Arial" font-size="9pt">
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Name: </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:PrimeRecipientContacts">
																			<xsl:for-each select="subcontract:RequisitionerOrgDetails">
																				<xsl:for-each select="subcontract:OrganizationName">
																					<xsl:variable name="value-of-template">
																						<xsl:apply-templates/>
																					</xsl:variable>
																					<xsl:choose>
																						<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																							<fo:block>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:block>
																						</xsl:when>
																						<xsl:otherwise>
																							<fo:inline>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:inline>
																						</xsl:otherwise>
																					</xsl:choose>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Address: </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:PrimeRecipientContacts">
																			<xsl:for-each select="subcontract:OrgRolodexDetails">
																				<xsl:for-each select="subcontract:Address1">
																					<xsl:variable name="value-of-template">
																						<xsl:apply-templates/>
																					</xsl:variable>
																					<xsl:choose>
																						<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																							<fo:block>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:block>
																						</xsl:when>
																						<xsl:otherwise>
																							<fo:inline>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:inline>
																						</xsl:otherwise>
																					</xsl:choose>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																	<fo:block/>
																	<fo:inline>
																		<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:PrimeRecipientContacts">
																			<xsl:for-each select="subcontract:OrgRolodexDetails">
																				<xsl:for-each select="subcontract:Address2">
																					<xsl:variable name="value-of-template">
																						<xsl:apply-templates/>
																					</xsl:variable>
																					<xsl:choose>
																						<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																							<fo:block>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:block>
																						</xsl:when>
																						<xsl:otherwise>
																							<fo:inline>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:inline>
																						</xsl:otherwise>
																					</xsl:choose>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="2" border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:table font-family="Arial" font-size="9pt" table-layout="fixed" width="100%" border-spacing="2pt">
													<fo:table-column column-width="100%"/>
													<fo:table-body start-indent="0pt">
														<fo:table-row font-family="Arial" font-size="9pt">
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Institution/Organization (&quot;Subrecipient&quot;)</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Name: </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:SubcontractDetail">
																			<xsl:for-each select="subcontract:SubcontractorName">
																				<xsl:variable name="value-of-template">
																					<xsl:apply-templates/>
																				</xsl:variable>
																				<xsl:choose>
																					<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																						<fo:block>
																							<xsl:copy-of select="$value-of-template"/>
																						</fo:block>
																					</xsl:when>
																					<xsl:otherwise>
																						<fo:inline>
																							<xsl:copy-of select="$value-of-template"/>
																						</fo:inline>
																					</xsl:otherwise>
																				</xsl:choose>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Address: </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:SubcontractDetail">
																			<xsl:for-each select="subcontract:SubcontractorOrgRolodexDetails">
																				<xsl:for-each select="subcontract:Address1">
																					<xsl:variable name="value-of-template">
																						<xsl:apply-templates/>
																					</xsl:variable>
																					<xsl:choose>
																						<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																							<fo:block>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:block>
																						</xsl:when>
																						<xsl:otherwise>
																							<fo:inline>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:inline>
																						</xsl:otherwise>
																					</xsl:choose>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																	<fo:block/>
																	<fo:inline>
																		<xsl:text>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																	<xsl:for-each select="subcontract:SubContractData">
																		<xsl:for-each select="subcontract:SubcontractDetail">
																			<xsl:for-each select="subcontract:SubcontractorOrgRolodexDetails">
																				<xsl:for-each select="subcontract:Address2">
																					<xsl:variable name="value-of-template">
																						<xsl:apply-templates/>
																					</xsl:variable>
																					<xsl:choose>
																						<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																							<fo:block>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:block>
																						</xsl:when>
																						<xsl:otherwise>
																							<fo:inline>
																								<xsl:copy-of select="$value-of-template"/>
																							</fo:inline>
																						</xsl:otherwise>
																					</xsl:choose>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row font-family="Arial" font-size="9pt">
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Prime Award No.</xsl:text>
												</fo:inline>
												<fo:block/>
												<xsl:for-each select="subcontract:SubContractData">
													<xsl:for-each select="subcontract:Award">
														<xsl:for-each select="award:AwardDetails">
															<xsl:for-each select="award:AwardHeader">
																<xsl:for-each select="award:SponsorAwardNumber">
																	<xsl:variable name="value-of-template">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Subaward No.</xsl:text>
												</fo:inline>
												<fo:block/>
												<xsl:for-each select="subcontract:SubContractData">
													<xsl:for-each select="subcontract:SubcontractDetail">
														<xsl:for-each select="subcontract:SubContractCode">
															<xsl:variable name="value-of-template">
																<xsl:apply-templates/>
															</xsl:variable>
															<xsl:choose>
																<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																	<fo:block>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:block>
																</xsl:when>
																<xsl:otherwise>
																	<fo:inline>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:inline>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Principal Investigator </xsl:text>
												</fo:inline>
												<fo:block/>
												<xsl:for-each select="subcontract:SubContractData">
													<xsl:for-each select="subcontract:SubcontractDetail">
														<xsl:for-each select="subcontract:SiteInvestigator">
															<xsl:variable name="value-of-template">
																<xsl:apply-templates/>
															</xsl:variable>
															<xsl:choose>
																<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																	<fo:block>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:block>
																</xsl:when>
																<xsl:otherwise>
																	<fo:inline>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:inline>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row font-family="Arial" font-size="9pt">
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Effective Date of Amendment </xsl:text>
												</fo:inline>
												<xsl:for-each select="subcontract:SubContractData">
													<xsl:for-each select="subcontract:SubcontractAmountInfo">
														<xsl:for-each select="subcontract:ModificationEffectiveDate">
															<fo:inline>
																<xsl:value-of select="format-number(number(substring(string(string(.)), 6, 2)), '00')"/>
																<xsl:text>/</xsl:text>
																<xsl:value-of select="format-number(number(substring(string(string(.)), 9, 2)), '00')"/>
																<xsl:text>/</xsl:text>
																<xsl:value-of select="format-number(number(substring(string(string(string(.))), 1, 4)), '0000')"/>
															</fo:inline>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="2" border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline>
													<xsl:text>Amendment No. </xsl:text>
												</fo:inline>
												<xsl:for-each select="subcontract:SubContractData">
													<xsl:for-each select="subcontract:SubcontractAmountInfo">
														<xsl:for-each select="subcontract:ModificationNumber">
															<xsl:variable name="value-of-template">
																<xsl:apply-templates/>
															</xsl:variable>
															<xsl:choose>
																<xsl:when test="contains(string($value-of-template),'&#x2029;')">
																	<fo:block>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:block>
																</xsl:when>
																<xsl:otherwise>
																	<fo:inline>
																		<xsl:copy-of select="$value-of-template"/>
																	</fo:inline>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row font-family="Arial" font-size="9pt">
										<fo:table-cell number-columns-spanned="3" border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:block/>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:block text-align="center" margin="0pt">
													<fo:block>
														<fo:inline-container>
															<fo:block>
																<xsl:text>&#x2029;</xsl:text>
															</fo:block>
														</fo:inline-container>
														<fo:block font-size="medium" font-weight="bold" margin="0pt">
															<fo:block>
																<fo:inline>
																	<xsl:text>Amendment(s) to Original Terms and Conditions</xsl:text>
																</fo:inline>
															</fo:block>
														</fo:block>
													</fo:block>
												</fo:block>
												<fo:block/>
												<fo:block/>
												<fo:block/>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:table table-layout="fixed" width="100%" border-spacing="2pt">
													<fo:table-column column-width="proportional-column-width(1)"/>
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell padding="2pt" height="320pt" display-align="center">
																<fo:block>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																	<fo:block/>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
												<fo:block/>
												<fo:block/>
												<fo:inline>
													<xsl:text>All other terms and conditions of this Subaward Agreement remain in full force and effect.</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:table font-family="Arial" font-size="9pt" table-layout="fixed" width="100%" border-spacing="2pt">
													<fo:table-column column-width="75%"/>
													<fo:table-column column-width="25%"/>
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2" padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>By an Authorized Official of Prime Recipient:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>______________________________________________</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text> _______________</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Name&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Date&#160;&#160; </xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2" padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Title&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell number-columns-spanned="2" border="solid 1pt gray" padding="0" display-align="center">
											<fo:block>
												<fo:inline-container>
													<fo:block>
														<xsl:text>&#x2029;</xsl:text>
													</fo:block>
												</fo:inline-container>
												<fo:table font-family="Arial" font-size="9pt" table-layout="fixed" width="100%" border-spacing="2pt">
													<fo:table-column column-width="75%"/>
													<fo:table-column column-width="25%"/>
													<fo:table-body start-indent="0pt">
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2" padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>By an Authorized Official of Subrecipient:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>______________________________________________</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text> _______________</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Name&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Date&#160;&#160;&#160;&#160;&#160;&#160; </xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2" padding="2pt" display-align="center">
																<fo:block>
																	<fo:inline>
																		<xsl:text>Title</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:for-each>
					</fo:block>
					<fo:block id="SV_RefID_PageTotal"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="headerall">
		<fo:static-content flow-name="xsl-region-before">
			<fo:block/>
		</fo:static-content>
	</xsl:template>
	<xsl:template name="double-backslash">
		<xsl:param name="text"/>
		<xsl:param name="text-length"/>
		<xsl:variable name="text-after-bs" select="substring-after($text, '\')"/>
		<xsl:variable name="text-after-bs-length" select="string-length($text-after-bs)"/>
		<xsl:choose>
			<xsl:when test="$text-after-bs-length = 0">
				<xsl:choose>
					<xsl:when test="substring($text, $text-length) = '\'">
						<xsl:value-of select="concat(substring($text,1,$text-length - 1), '\\')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$text"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(substring($text,1,$text-length - $text-after-bs-length - 1), '\\')"/>
				<xsl:call-template name="double-backslash">
					<xsl:with-param name="text" select="$text-after-bs"/>
					<xsl:with-param name="text-length" select="$text-after-bs-length"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
