﻿using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using SAMLAssertion.SAMLService;
using SAMLAssertion.HarrisStore;
using System.Xml.Serialization;
using System.IO;
using System.Data;
using System.Xml;
using Mobius.CoreLibrary;
using System.ComponentModel;
using C32Utility;
namespace SAMLAssertion
{
    public partial class SAMLAssertionForDocSubmit
    {
        //EntityXDR_Service objEntityXDR_Service = new EntityXDR_Service();
        public AssertionType CreateAssertion(string strReciever, string strUserName, string strEntityId, DateTime dtmRuleStartDate, DateTime dtmRuleEndDate, string strHomeCommunityId, DataSet dsUserInfo, string PurposeOfUse, string PatientId)
        {
            AssertionType objAssertionType = new AssertionType();
            SAMLService.SamlService1 obj = new SamlService1();
            SAMLService.Assertion objAssertion = new Assertion();
            objAssertion = obj.CreateAssertion(strReciever, strUserName, strEntityId, dtmRuleStartDate, dtmRuleEndDate, strHomeCommunityId);
            objAssertionType.address = new AddressType();
            objAssertionType.address.addressType = new CeType();
            objAssertionType.address.addressType.code = "Mobius";
            objAssertionType.address.addressType.codeSystem = "Mobius";
            objAssertionType.address.addressType.codeSystemName = "Mobius";
            objAssertionType.address.addressType.codeSystemVersion = "Mobius";
            objAssertionType.address.addressType.displayName = "Mobius";
            objAssertionType.address.addressType.originalText = "Mobius";
            objAssertionType.address.city = dsUserInfo.Tables[0].Rows[0][30].ToString();
            objAssertionType.address.country = dsUserInfo.Tables[0].Rows[0][28].ToString();
            objAssertionType.address.state = dsUserInfo.Tables[0].Rows[0][29].ToString();
            objAssertionType.address.streetAddress = dsUserInfo.Tables[0].Rows[0][25].ToString();
            objAssertionType.address.zipCode = dsUserInfo.Tables[0].Rows[0][26].ToString();
            objAssertionType.dateOfBirth = dsUserInfo.Tables[0].Rows[0][11].ToString();
            objAssertionType.explanationNonClaimantSignature = "Mobius";
            objAssertionType.homeCommunity = new HomeCommunityType();
            objAssertionType.homeCommunity.description = strHomeCommunityId;
            objAssertionType.homeCommunity.homeCommunityId = strHomeCommunityId;
            objAssertionType.homeCommunity.name = strHomeCommunityId;
            objAssertionType.personName = new PersonNameType();
            objAssertionType.personName.familyName = dsUserInfo.Tables[0].Rows[0][3].ToString();
            objAssertionType.personName.givenName = dsUserInfo.Tables[0].Rows[0][3].ToString();
            objAssertionType.personName.nameType = new CeType();
            objAssertionType.personName.nameType.code = "Mobius";
            objAssertionType.personName.nameType.codeSystem = "Mobius";
            objAssertionType.personName.nameType.codeSystemName = "Mobius";
            objAssertionType.personName.nameType.codeSystemVersion = "Mobius";
            objAssertionType.personName.nameType.displayName = "Mobius";
            objAssertionType.personName.nameType.originalText = "Mobius";
            objAssertionType.personName.secondNameOrInitials = Convert.ToString(dsUserInfo.Tables[0].Rows[0][13]);
            objAssertionType.personName.fullName = dsUserInfo.Tables[0].Rows[0][2].ToString() + " " + dsUserInfo.Tables[0].Rows[0][3].ToString();
            objAssertionType.phoneNumber = new PhoneType();
            objAssertionType.phoneNumber.areaCode = dsUserInfo.Tables[0].Rows[0][27].ToString().Substring(0, 2);
            objAssertionType.phoneNumber.countryCode = dsUserInfo.Tables[0].Rows[0][27].ToString().Substring(2, 2);
            objAssertionType.phoneNumber.extension = dsUserInfo.Tables[0].Rows[0][27].ToString().Substring(4, 3);
            objAssertionType.phoneNumber.localNumber = dsUserInfo.Tables[0].Rows[0][27].ToString().Substring(7, 4);
            objAssertionType.phoneNumber.phoneNumberType = new CeType();
            objAssertionType.phoneNumber.phoneNumberType.code = "Mobius";
            objAssertionType.phoneNumber.phoneNumberType.codeSystem = "Mobius";
            objAssertionType.phoneNumber.phoneNumberType.codeSystemName = "Mobius";
            objAssertionType.phoneNumber.phoneNumberType.codeSystemVersion = "Mobius";
            objAssertionType.phoneNumber.phoneNumberType.displayName = "Mobius";
            objAssertionType.phoneNumber.phoneNumberType.originalText = "Mobius";
            objAssertionType.secondWitnessAddress = new AddressType();
            objAssertionType.secondWitnessAddress.addressType = new CeType();
            objAssertionType.secondWitnessAddress.addressType.code = "Mobius";
            objAssertionType.secondWitnessAddress.addressType.codeSystem = "Mobius";
            objAssertionType.secondWitnessAddress.addressType.codeSystemName = "Mobius";
            objAssertionType.secondWitnessAddress.addressType.codeSystemVersion = "Mobius";
            objAssertionType.secondWitnessAddress.addressType.displayName = "Mobius";
            objAssertionType.secondWitnessAddress.addressType.originalText = "Mobius";
            objAssertionType.secondWitnessAddress.city = "Mobius";
            objAssertionType.secondWitnessAddress.country = "Mobius";
            objAssertionType.secondWitnessAddress.state = "Mobius";
            objAssertionType.secondWitnessAddress.streetAddress = "Mobius";
            objAssertionType.secondWitnessAddress.zipCode = "Mobius";
            objAssertionType.secondWitnessName = new PersonNameType();
            objAssertionType.secondWitnessName.familyName = "Mobius";
            objAssertionType.secondWitnessName.givenName = "Mobius";
            objAssertionType.secondWitnessName.nameType = new CeType();
            objAssertionType.secondWitnessName.nameType.code = "Mobius";
            objAssertionType.secondWitnessName.nameType.codeSystem = "Mobius";
            objAssertionType.secondWitnessName.nameType.codeSystemName = "Mobius";
            objAssertionType.secondWitnessName.nameType.codeSystemVersion = "Mobius";
            objAssertionType.secondWitnessName.nameType.displayName = "Mobius";
            objAssertionType.secondWitnessName.nameType.originalText = "Mobius";
            objAssertionType.secondWitnessName.secondNameOrInitials = "Mobius";
            objAssertionType.secondWitnessName.fullName = "Mobius";
            objAssertionType.secondWitnessPhone = new PhoneType();
            objAssertionType.secondWitnessPhone.areaCode = "Mobius";
            objAssertionType.secondWitnessPhone.countryCode = "Mobius";
            objAssertionType.secondWitnessPhone.extension = "Mobius";
            objAssertionType.secondWitnessPhone.localNumber = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType = new CeType();
            objAssertionType.secondWitnessPhone.phoneNumberType.code = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType.codeSystem = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType.codeSystemName = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType.codeSystemVersion = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType.displayName = "Mobius";
            objAssertionType.secondWitnessPhone.phoneNumberType.originalText = "Mobius";
            objAssertionType.SSN = dsUserInfo.Tables[0].Rows[0][6].ToString();
            string[] arrPatientId = new string[1];
            arrPatientId[0] = PatientId;
            objAssertionType.uniquePatientId = arrPatientId;
            objAssertionType.witnessAddress = new AddressType();
            objAssertionType.witnessAddress.addressType = new CeType();
            objAssertionType.witnessAddress.addressType.code = "Mobius";
            objAssertionType.witnessAddress.addressType.codeSystem = "Mobius";
            objAssertionType.witnessAddress.addressType.codeSystemName = "Mobius";
            objAssertionType.witnessAddress.addressType.codeSystemVersion = "Mobius";
            objAssertionType.witnessAddress.addressType.displayName = "Mobius";
            objAssertionType.witnessAddress.addressType.originalText = "Mobius";
            objAssertionType.witnessAddress.city = "Mobius";
            objAssertionType.witnessAddress.country = "Mobius";
            objAssertionType.witnessAddress.state = "Mobius";
            objAssertionType.witnessAddress.streetAddress = "Mobius";
            objAssertionType.witnessAddress.zipCode = "Mobius";
            objAssertionType.witnessName = new PersonNameType();
            objAssertionType.witnessName.familyName = "Mobius";
            objAssertionType.witnessName.givenName = "Mobius";
            objAssertionType.witnessName.nameType = new CeType();
            objAssertionType.witnessName.nameType.code = "Mobius";
            objAssertionType.witnessName.nameType.codeSystem = "Mobius";
            objAssertionType.witnessName.nameType.codeSystemName = "Mobius";
            objAssertionType.witnessName.nameType.codeSystemVersion = "Mobius";
            objAssertionType.witnessName.nameType.displayName = "Mobius";
            objAssertionType.witnessName.nameType.originalText = "Mobius";
            objAssertionType.witnessName.secondNameOrInitials = "Mobius";
            objAssertionType.witnessName.fullName = "Mobius";
            objAssertionType.witnessPhone = new PhoneType();
            objAssertionType.witnessPhone.areaCode = "Mobius";
            objAssertionType.witnessPhone.countryCode = "Mobius";
            objAssertionType.witnessPhone.extension = "Mobius";
            objAssertionType.witnessPhone.localNumber = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType = new CeType();
            objAssertionType.witnessPhone.phoneNumberType.code = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType.codeSystem = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType.codeSystemName = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType.codeSystemVersion = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType.displayName = "Mobius";
            objAssertionType.witnessPhone.phoneNumberType.originalText = "Mobius";
            objAssertionType.userInfo = new HarrisStore.UserType();
            objAssertionType.userInfo.personName = new PersonNameType();
            objAssertionType.userInfo.personName.familyName = "Mobius";
            objAssertionType.userInfo.personName.givenName = "Mobius";
            objAssertionType.userInfo.personName.nameType = new CeType();
            objAssertionType.userInfo.personName.nameType.code = "Mobius";
            objAssertionType.userInfo.personName.nameType.codeSystem = "Mobius";
            objAssertionType.userInfo.personName.nameType.codeSystemName = "Mobius";
            objAssertionType.userInfo.personName.nameType.codeSystemVersion = "Mobius";
            objAssertionType.userInfo.personName.nameType.displayName = "Mobius";
            objAssertionType.userInfo.personName.nameType.originalText = "Mobius";
            objAssertionType.userInfo.personName.secondNameOrInitials = "Mobius";
            objAssertionType.userInfo.personName.fullName = "Mobius";
            objAssertionType.userInfo.userName = "Mobius";
            objAssertionType.userInfo.org = new HomeCommunityType();
            objAssertionType.userInfo.org.description = "Mobius";
            objAssertionType.userInfo.org.homeCommunityId = strHomeCommunityId;
            objAssertionType.userInfo.org.name = "Mobius";
            objAssertionType.userInfo.roleCoded = new CeType();
            objAssertionType.userInfo.roleCoded.code = "Mobius";
            objAssertionType.userInfo.roleCoded.codeSystem = "Mobius";
            objAssertionType.userInfo.roleCoded.codeSystemName = "Mobius";
            objAssertionType.userInfo.roleCoded.codeSystemVersion = "Mobius";
            objAssertionType.userInfo.roleCoded.displayName = "Mobius";
            objAssertionType.userInfo.roleCoded.originalText = "Mobius";
            objAssertionType.authorized = true;
            objAssertionType.purposeOfDisclosureCoded = new CeType();
            objAssertionType.purposeOfDisclosureCoded.code = PurposeOfUse;
            objAssertionType.purposeOfDisclosureCoded.codeSystem = "Mobius";
            objAssertionType.purposeOfDisclosureCoded.codeSystemName = "Mobius";
            objAssertionType.purposeOfDisclosureCoded.codeSystemVersion = "Mobius";
            objAssertionType.purposeOfDisclosureCoded.displayName = PurposeOfUse;
            objAssertionType.purposeOfDisclosureCoded.originalText = "Mobius";
            objAssertionType.samlAuthnStatement = new SamlAuthnStatementType();
            objAssertionType.samlAuthnStatement.authInstant = ((SAMLService.AuthnStatement)(objAssertion.Items[0])).AuthnInstant;
            objAssertionType.samlAuthnStatement.sessionIndex = ((SAMLService.AuthnStatement)(objAssertion.Items[0])).SessionIndex;
            objAssertionType.samlAuthnStatement.subjectLocalityAddress = ((SAMLService.AuthnStatement)(objAssertion.Items[0])).SubjectLocality.Address;
            objAssertionType.samlAuthnStatement.subjectLocalityDNSName = ((SAMLService.AuthnStatement)(objAssertion.Items[0])).SubjectLocality.DNSName;
            objAssertionType.samlAuthzDecisionStatement = new SamlAuthzDecisionStatementType();
            objAssertionType.samlAuthzDecisionStatement.decision = ((SAMLService.AuthzDecisionStatement)(objAssertion.Items[1])).Decision.ToString();
            objAssertionType.samlAuthzDecisionStatement.resource = ((SAMLService.AuthzDecisionStatement)(objAssertion.Items[1])).Resource.ToString();
            objAssertionType.samlAuthzDecisionStatement.action = ((SAMLService.AuthzDecisionStatement)(objAssertion.Items[1])).Action.ToString();
            objAssertionType.samlAuthzDecisionStatement.evidence = new SamlAuthzDecisionStatementEvidenceType();
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion = new SamlAuthzDecisionStatementEvidenceAssertionType();
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.id = objAssertion.ID;
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.issueInstant = objAssertion.IssueInstant;
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.version = objAssertion.Version;
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.issuerFormat = objAssertion.Issuer.Format;
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.conditions = new SamlAuthzDecisionStatementEvidenceConditionsType();
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.conditions.notBefore = dtmRuleStartDate.ToShortDateString();
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.conditions.notOnOrAfter = dtmRuleEndDate.ToShortDateString();
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.accessConsentPolicy = ((SAMLService.Assertion)(((SAMLService.AuthzDecisionStatement)(objAssertion.Items[1])).Evidence.Items[0])).AccessConsentPolicy;
            objAssertionType.samlAuthzDecisionStatement.evidence.assertion.instanceAccessConsentPolicy = ((SAMLService.Assertion)(((SAMLService.AuthzDecisionStatement)(objAssertion.Items[1])).Evidence.Items[0])).InstanceAccessConsentPolicy;
            return objAssertionType;
        }
        
        public NhinTargetCommunityType[] GetNhinComunity(string strHomeCommunityId)
        {
            NhinTargetCommunityType[] objNhinTargetCommunityTypeArray = new NhinTargetCommunityType[1];
            objNhinTargetCommunityTypeArray[0] = new NhinTargetCommunityType();
            objNhinTargetCommunityTypeArray[0].homeCommunity = new HomeCommunityType();
            objNhinTargetCommunityTypeArray[0].homeCommunity.description = strHomeCommunityId;
            objNhinTargetCommunityTypeArray[0].homeCommunity.homeCommunityId = strHomeCommunityId;
            objNhinTargetCommunityTypeArray[0].homeCommunity.name = strHomeCommunityId;
            return objNhinTargetCommunityTypeArray;
        }
     
    }
}