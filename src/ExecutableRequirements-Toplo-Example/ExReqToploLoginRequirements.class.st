Class {
	#name : 'ExReqToploLoginRequirements',
	#superclass : 'Object',
	#category : 'ExecutableRequirements-Toplo-Example-Requirements',
	#package : 'ExecutableRequirements-Toplo-Example',
	#tag : 'Requirements'
}

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> capellaFile [ 

	^ '<?xml version="1.0" encoding="UTF-8"?>

<!--Capella_Version_7.0.0-->
<org.polarsys.capella.core.data.capellamodeller:Project xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:libraries="http://www.polarsys.org/capella/common/libraries/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellacommon="http://www.polarsys.org/capella/core/common/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellacore="http://www.polarsys.org/capella/core/core/7.0.0"
    xmlns:org.polarsys.capella.core.data.capellamodeller="http://www.polarsys.org/capella/core/modeller/7.0.0"
    xmlns:org.polarsys.capella.core.data.cs="http://www.polarsys.org/capella/core/cs/7.0.0"
    xmlns:org.polarsys.capella.core.data.ctx="http://www.polarsys.org/capella/core/ctx/7.0.0"
    xmlns:org.polarsys.capella.core.data.epbs="http://www.polarsys.org/capella/core/epbs/7.0.0"
    xmlns:org.polarsys.capella.core.data.fa="http://www.polarsys.org/capella/core/fa/7.0.0"
    xmlns:org.polarsys.capella.core.data.information="http://www.polarsys.org/capella/core/information/7.0.0"
    xmlns:org.polarsys.capella.core.data.information.datatype="http://www.polarsys.org/capella/core/information/datatype/7.0.0"
    xmlns:org.polarsys.capella.core.data.information.datavalue="http://www.polarsys.org/capella/core/information/datavalue/7.0.0"
    xmlns:org.polarsys.capella.core.data.interaction="http://www.polarsys.org/capella/core/interaction/7.0.0"
    xmlns:org.polarsys.capella.core.data.la="http://www.polarsys.org/capella/core/la/7.0.0"
    xmlns:org.polarsys.capella.core.data.oa="http://www.polarsys.org/capella/core/oa/7.0.0"
    xmlns:org.polarsys.capella.core.data.pa="http://www.polarsys.org/capella/core/pa/7.0.0"
    id="d4292d7d-a3a3-48d6-aa72-ae97704fa21d"
    name="login_system">
  <ownedExtensions xsi:type="libraries:ModelInformation" id="d11ec305-1da7-43d6-a987-9336134cb545"/>
  <ownedEnumerationPropertyTypes xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyType"
      id="5cd688a2-cef0-4d54-b098-b171bf9d7efc" name="ProgressStatus">
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="97f7cff0-ec3f-464f-8003-bdba44dcbe2d" name="DRAFT"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="064ee33c-2873-4eab-81ba-584cfa12a53d" name="TO_BE_REVIEWED"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="f5947114-1f0f-4e8c-a7b5-21bb28d67357" name="TO_BE_DISCUSSED"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="c4a1730c-c3fc-40bb-b9e1-8ec773868a58" name="REWORK_NECESSARY"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="f9631443-eb3e-4076-8435-986b6565d5f3" name="UNDER_REWORK"/>
    <ownedLiterals xsi:type="org.polarsys.capella.core.data.capellacore:EnumerationPropertyLiteral"
        id="b946c67a-97f8-45dc-a77f-3c348d27f50f" name="REVIEWED_OK"/>
  </ownedEnumerationPropertyTypes>
  <keyValuePairs xsi:type="org.polarsys.capella.core.data.capellacore:KeyValue" id="cf2d8739-a84e-4fe6-a8f9-1b99ccac5005"
      key="projectApproach" value="SingletonComponents"/>
  <ownedModelRoots xsi:type="org.polarsys.capella.core.data.capellamodeller:SystemEngineering"
      id="5be9f44c-1b84-48ca-9ae7-9f7415ffe5f1" name="login_system">
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.oa:OperationalAnalysis"
        id="b9093cdf-8273-4ba9-858f-1e5c839b46e1" name="Operational Analysis">
      <ownedFunctionPkg xsi:type="org.polarsys.capella.core.data.oa:OperationalActivityPkg"
          id="7537b147-cd07-42f2-be20-92f5e2074ed3" name="Operational Activities">
        <ownedOperationalActivities xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
            id="c5e20ee6-d971-4b16-98d7-e3ae4bf6b21c" name="Root Operational Activity">
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
              id="746a75a2-39c8-446f-935b-3cb81896de73" name="Proof of identity"/>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
              id="a343f283-2adb-4332-a50b-5ebbe0347c62" name="Define who can access the system">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
                id="732b8950-98a4-4d9d-a771-273b83fb3243" name="Remove access to someone"/>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
                id="c6d16072-d49f-492f-a2de-39b6fe5e5b62" name="Add access to sommeone"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.oa:OperationalActivity"
              id="6addf2b6-2e8b-419e-984b-ae81537ee580" name="Use the normal system"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="e37f44a1-2993-407b-8b03-bc5de7b5411e" name="admin access" target="#732b8950-98a4-4d9d-a771-273b83fb3243"
              source="#746a75a2-39c8-446f-935b-3cb81896de73"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="18c962db-e527-48de-9fc2-fce74083e8df" name="admin access" target="#c6d16072-d49f-492f-a2de-39b6fe5e5b62"
              source="#746a75a2-39c8-446f-935b-3cb81896de73"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="07708058-0d99-47a3-b4a7-639e42ec95dd" name="normal access" target="#6addf2b6-2e8b-419e-984b-ae81537ee580"
              source="#746a75a2-39c8-446f-935b-3cb81896de73"/>
        </ownedOperationalActivities>
      </ownedFunctionPkg>
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.oa:OperationalCapabilityPkg"
          id="d343f81b-7cde-430d-a10c-9fdcb2d7eed0" name="Operational Capabilities">
        <ownedOperationalCapabilities xsi:type="org.polarsys.capella.core.data.oa:OperationalCapability"
            id="a0a8653d-9e2f-4af2-8ea3-a6ec6f45c882" name="Proove its identity">
          <ownedEntityOperationalCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.oa:EntityOperationalCapabilityInvolvement"
              id="604b1030-0edb-44c9-9db0-13e716dfa1e7" involved="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
        </ownedOperationalCapabilities>
        <ownedOperationalCapabilities xsi:type="org.polarsys.capella.core.data.oa:OperationalCapability"
            id="9d0a603d-eb25-40f0-9c58-a1eb4aba4f01" name="Define who can access the system">
          <ownedEntityOperationalCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.oa:EntityOperationalCapabilityInvolvement"
              id="f2ef31cb-56ad-4c4e-9e47-2bcdbb75635f" involved="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
        </ownedOperationalCapabilities>
        <ownedOperationalCapabilities xsi:type="org.polarsys.capella.core.data.oa:OperationalCapability"
            id="39c5fe25-d3fc-44e6-9ea2-2b7f29613109" name="Use the system">
          <ownedEntityOperationalCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.oa:EntityOperationalCapabilityInvolvement"
              id="3840b956-ec5a-4311-a1de-6089d73d5a1f" involved="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
        </ownedOperationalCapabilities>
      </ownedAbstractCapabilityPkg>
      <ownedInterfacePkg xsi:type="org.polarsys.capella.core.data.cs:InterfacePkg"
          id="670602f3-169e-4235-ab0f-23ddfa563b46" name="Interfaces"/>
      <ownedDataPkg xsi:type="org.polarsys.capella.core.data.information:DataPkg"
          id="b0a9d1b0-e17e-4c74-b775-c51a06becf06" name="Data"/>
      <ownedRolePkg xsi:type="org.polarsys.capella.core.data.oa:RolePkg" id="00927200-0071-46b8-b038-9c616d9fda4c"
          name="Roles">
        <ownedRoles xsi:type="org.polarsys.capella.core.data.oa:Role" id="4fe41419-147e-434e-b36c-cdbe7e5b62fd"
            name="Admin">
          <ownedActivityAllocations xsi:type="org.polarsys.capella.core.data.oa:ActivityAllocation"
              id="9c3538bd-056d-4041-b6ae-81a95d54b013" targetElement="#732b8950-98a4-4d9d-a771-273b83fb3243"
              sourceElement="#4fe41419-147e-434e-b36c-cdbe7e5b62fd"/>
          <ownedActivityAllocations xsi:type="org.polarsys.capella.core.data.oa:ActivityAllocation"
              id="d36d2e6f-0960-4781-bcdb-b4c3c4d3b0c6" targetElement="#c6d16072-d49f-492f-a2de-39b6fe5e5b62"
              sourceElement="#4fe41419-147e-434e-b36c-cdbe7e5b62fd"/>
        </ownedRoles>
        <ownedRoles xsi:type="org.polarsys.capella.core.data.oa:Role" id="86c2fc47-172a-463f-93e4-8eff23986ec3"
            name="Normal User">
          <ownedActivityAllocations xsi:type="org.polarsys.capella.core.data.oa:ActivityAllocation"
              id="fbd6247f-c83f-49c7-8a5c-f648a74b0e76" targetElement="#6addf2b6-2e8b-419e-984b-ae81537ee580"
              sourceElement="#86c2fc47-172a-463f-93e4-8eff23986ec3"/>
        </ownedRoles>
      </ownedRolePkg>
      <ownedEntityPkg xsi:type="org.polarsys.capella.core.data.oa:EntityPkg" id="491218bf-1bb6-4ead-aa39-6cb5454310a1"
          name="Operational Entities">
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="cea8e290-bbcb-4a79-bebc-a2da3f617289"
            name="Person" abstractType="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
        <ownedEntities xsi:type="org.polarsys.capella.core.data.oa:Entity" id="1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"
            name="Person" actor="true" human="true">
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="651fc7c8-cd59-4d42-8489-4a56174d2d49" targetElement="#746a75a2-39c8-446f-935b-3cb81896de73"
              sourceElement="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
          <ownedRoleAllocations xsi:type="org.polarsys.capella.core.data.oa:RoleAllocation"
              id="8d8439f5-38bc-411a-94e2-0fbe54e3ca98" targetElement="#4fe41419-147e-434e-b36c-cdbe7e5b62fd"
              sourceElement="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
          <ownedRoleAllocations xsi:type="org.polarsys.capella.core.data.oa:RoleAllocation"
              id="8b2ecc30-496b-4163-a906-7093a1ba1d78" targetElement="#86c2fc47-172a-463f-93e4-8eff23986ec3"
              sourceElement="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"/>
        </ownedEntities>
      </ownedEntityPkg>
    </ownedArchitectures>
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.ctx:SystemAnalysis"
        id="d267bb75-8049-492b-8434-d72bcc045d23" name="System Analysis">
      <ownedFunctionPkg xsi:type="org.polarsys.capella.core.data.ctx:SystemFunctionPkg"
          id="da7fd68a-ee18-427e-9cf2-c5c31e64e2e6" name="System Functions">
        <ownedSystemFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
            id="28f7dc7a-0373-4e19-b847-dc0ad40dd034" name="Root System Function">
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="d629b31b-71ba-4997-aa81-cc26126df8ef" name="Proof of identity">
            <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                id="6367cc34-b412-47b4-be8e-659afda292ef" name="FOP 1"/>
            <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                id="e6a32fd6-cc95-4826-a692-39491f9eb0f0" name="FOP 2"/>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="5ae884e3-e0ea-4171-80fc-740046fbeac7" targetElement="#746a75a2-39c8-446f-935b-3cb81896de73"
                sourceElement="#d629b31b-71ba-4997-aa81-cc26126df8ef"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="8824cc97-28cc-4012-970b-6f985b377908" name="Define who can access the system">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="0320e2b6-999c-44e0-8583-33ec2bcde1ca" name="Remove access to someone">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="30095a96-5c1e-4b57-adf7-b08691479523" name="inadmin access"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="e704f907-6eb7-470a-a109-5fc2eb5c3d1d" name="FOP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="d30500c1-c1d0-4124-9cc3-bcc098982d13" targetElement="#732b8950-98a4-4d9d-a771-273b83fb3243"
                  sourceElement="#0320e2b6-999c-44e0-8583-33ec2bcde1ca"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="d6d89c4f-8cce-4f80-9122-e165c1f8b5fb" name="Add access to sommeone">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="1e7a16ca-6a9b-4778-b2b2-9919910e5638" name="inadmin access"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="70c34707-6904-4951-9db1-7a2090d5ccc3" name="FOP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="53a3f55c-f6e8-4deb-b522-18f1dd5c7401" targetElement="#c6d16072-d49f-492f-a2de-39b6fe5e5b62"
                  sourceElement="#d6d89c4f-8cce-4f80-9122-e165c1f8b5fb"/>
            </ownedFunctions>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="83c313cc-5ece-4618-b13d-6ad2731bbfbe" targetElement="#a343f283-2adb-4332-a50b-5ebbe0347c62"
                sourceElement="#8824cc97-28cc-4012-970b-6f985b377908"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="df0d647a-93e1-4f3f-9246-a0c8ea9c0ec1" name="Use the normal system">
            <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                id="ccb717f6-f5f3-4958-9458-d7f735a9029a" name="innormal access"/>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="db00ac60-741c-42bc-95c7-4adaf434a789" targetElement="#6addf2b6-2e8b-419e-984b-ae81537ee580"
                sourceElement="#df0d647a-93e1-4f3f-9246-a0c8ea9c0ec1"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="a1511e2f-a5e3-4ead-952a-4285a2fcee8b" name="Admin functions">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="28601782-218a-473a-be6c-463d55a22d10" name="Provide access to admin system">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="f400835f-08ab-4827-861a-f475d0d42aee" name="FIP 1"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="db48a33f-88d4-4fc6-b74a-d7612de46013" name="outadmin access"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="cd2e402b-203d-4539-af03-04e8d9fe4c22" name="outadmin access"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="31931905-71a3-432b-81ee-3c6cbcf0c44b" name="Define who have access">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="bbc4c729-adb1-412f-9ceb-b7318ea33213" name="FIP 1"/>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="c27ddba7-d05e-483c-a5e4-2e371bfce2cb" name="FIP 2"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
              id="25435f57-34a9-4e87-b37a-45f6a4cafb57" name="User function">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.ctx:SystemFunction"
                id="363fe178-023e-49da-a5cc-e7fad5ce9c4d" name="Provide access to normal system">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="b6c27f9b-0fe0-4b48-9d41-0552e53fc732" name="FIP 1"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="b41122a8-c3a3-4961-a91a-171c697ee40c" name="outnormal access"/>
            </ownedFunctions>
          </ownedFunctions>
          <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
              id="71de8c0d-2b28-4acc-a406-97575d6c5c66" targetElement="#c5e20ee6-d971-4b16-98d7-e3ae4bf6b21c"
              sourceElement="#28f7dc7a-0373-4e19-b847-dc0ad40dd034"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="4ef649f9-4848-46de-a06d-32eaed74c05e" name="admin access" target="#30095a96-5c1e-4b57-adf7-b08691479523"
              source="#db48a33f-88d4-4fc6-b74a-d7612de46013">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="5771b961-4c56-4e11-84dc-551a8316ade0" targetElement="#e37f44a1-2993-407b-8b03-bc5de7b5411e"
                sourceElement="#4ef649f9-4848-46de-a06d-32eaed74c05e"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="b540bf25-7aa8-421e-8702-d9f5dd147400" name="admin access" target="#1e7a16ca-6a9b-4778-b2b2-9919910e5638"
              source="#cd2e402b-203d-4539-af03-04e8d9fe4c22">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="894c1080-39a0-4625-9ee4-fd502c539dbf" targetElement="#18c962db-e527-48de-9fc2-fce74083e8df"
                sourceElement="#b540bf25-7aa8-421e-8702-d9f5dd147400"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="981b0454-bf71-4359-8df3-f71494dd5db7" name="normal access" target="#ccb717f6-f5f3-4958-9458-d7f735a9029a"
              source="#b41122a8-c3a3-4961-a91a-171c697ee40c">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="661dc3c9-f05d-4775-b96e-4e4379211697" targetElement="#07708058-0d99-47a3-b4a7-639e42ec95dd"
                sourceElement="#981b0454-bf71-4359-8df3-f71494dd5db7"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="b98d38ac-3a08-435a-97ad-1354b74417ec" name="a user to remove" target="#bbc4c729-adb1-412f-9ceb-b7318ea33213"
              source="#e704f907-6eb7-470a-a109-5fc2eb5c3d1d"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="78d4d6bb-6e01-4d38-8b43-38e148aef984" name="a user to add" target="#c27ddba7-d05e-483c-a5e4-2e371bfce2cb"
              source="#70c34707-6904-4951-9db1-7a2090d5ccc3"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="4b6634bd-af12-4223-b931-125a2b0c8a5a" name="a normal identity" target="#b6c27f9b-0fe0-4b48-9d41-0552e53fc732"
              source="#6367cc34-b412-47b4-be8e-659afda292ef"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="7b065aa4-4d63-4dea-969e-4bb20bbd4cbf" name="an admin identity" target="#f400835f-08ab-4827-861a-f475d0d42aee"
              source="#e6a32fd6-cc95-4826-a692-39491f9eb0f0"/>
        </ownedSystemFunctions>
      </ownedFunctionPkg>
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.ctx:CapabilityPkg"
          id="123ea519-dbbe-4eef-a6a9-fffa4b0efb5d" name="Capabilities">
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="8c25fb68-096b-47fe-9ac6-6e012ba64260" name="Proove its identity">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="4bc19f66-ecee-476f-a007-7c74bb715fda" targetElement="#604b1030-0edb-44c9-9db0-13e716dfa1e7"
              sourceElement="#6e58e675-2ec6-4c98-abe8-62d9dacc5e77"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="dad5e67f-6e49-4625-bbe1-0c020e08915c" targetElement="#a0a8653d-9e2f-4af2-8ea3-a6ec6f45c882"
              sourceElement="#8c25fb68-096b-47fe-9ac6-6e012ba64260"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="6e58e675-2ec6-4c98-abe8-62d9dacc5e77" involved="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="88afc19a-9a74-4a87-8b39-d1675b447026" name="Define who can access the system">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="b587640e-81a6-4632-bbd0-473f133c0980" targetElement="#f2ef31cb-56ad-4c4e-9e47-2bcdbb75635f"
              sourceElement="#49306f05-5f73-4a1e-a87d-9bd2e5ca55dc"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="a6b1bef5-65df-4ff0-8477-dba20936fa2e" targetElement="#9d0a603d-eb25-40f0-9c58-a1eb4aba4f01"
              sourceElement="#88afc19a-9a74-4a87-8b39-d1675b447026"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="49306f05-5f73-4a1e-a87d-9bd2e5ca55dc" involved="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
        </ownedCapabilities>
        <ownedCapabilities xsi:type="org.polarsys.capella.core.data.ctx:Capability"
            id="197fbe3a-b2b9-4880-afed-9bbe79871264" name="Use the system">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="7fee6942-20eb-4b6e-ba2c-b2e48d44a03b" targetElement="#3840b956-ec5a-4311-a1de-6089d73d5a1f"
              sourceElement="#d4fe66cb-f820-48a1-ba69-023ff35d1b35"/>
          <ownedAbstractCapabilityRealizations xsi:type="org.polarsys.capella.core.data.interaction:AbstractCapabilityRealization"
              id="c5bb65fa-b0e3-4ba0-b89a-de7d7f7d070d" targetElement="#39c5fe25-d3fc-44e6-9ea2-2b7f29613109"
              sourceElement="#197fbe3a-b2b9-4880-afed-9bbe79871264"/>
          <ownedCapabilityInvolvements xsi:type="org.polarsys.capella.core.data.ctx:CapabilityInvolvement"
              id="d4fe66cb-f820-48a1-ba69-023ff35d1b35" involved="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
        </ownedCapabilities>
      </ownedAbstractCapabilityPkg>
      <ownedInterfacePkg xsi:type="org.polarsys.capella.core.data.cs:InterfacePkg"
          id="faa2ce05-24a4-48cf-8138-237b8528a99d" name="Interfaces"/>
      <ownedDataPkg xsi:type="org.polarsys.capella.core.data.information:DataPkg"
          id="029cef30-24b5-48ad-9098-262042555b0b" name="Data">
        <ownedDataPkgs xsi:type="org.polarsys.capella.core.data.information:DataPkg"
            id="8ca84178-6dd2-4901-94e0-874c2c3faad4" name="Predefined Types">
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:BooleanType"
              id="167579d8-4e4c-438d-939b-bf44251b8008" name="Boolean" visibility="PUBLIC">
            <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
                id="df05fd1b-4e8c-4447-9824-99d2c3481781" name="True" abstractType="#167579d8-4e4c-438d-939b-bf44251b8008"
                value="true"/>
            <ownedLiterals xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralBooleanValue"
                id="3807c834-9cb4-41f9-a67f-5447e78081c6" name="False" abstractType="#167579d8-4e4c-438d-939b-bf44251b8008"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="bee3361f-dfe3-4581-baa9-20fa8cedc342" name="Byte" visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="44186c77-e1b1-40ac-9fdd-6470386eba48" name="" abstractType="#bee3361f-dfe3-4581-baa9-20fa8cedc342"
                value="0"/>
            <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="d4062599-b50a-4ffc-91c1-a02d653415ba" name="" abstractType="#bee3361f-dfe3-4581-baa9-20fa8cedc342"
                value="255"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:StringType"
              id="e6836ff1-1a62-4de6-8fd8-c22ce8b69e96" name="Char" visibility="PUBLIC">
            <ownedMinLength xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="65e2444a-8077-47e3-bdc9-2b6f16275e55" name="" abstractType="#bbe270df-0553-4036-bcb6-03bce58f633c"
                value="1"/>
            <ownedMaxLength xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="e0c9c28d-fa59-4464-9293-20a2314c5f2f" name="" abstractType="#bbe270df-0553-4036-bcb6-03bce58f633c"
                value="1"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="7f0e4323-7bc2-4fb2-89cc-944cce75d668" name="Double" discrete="false"
              visibility="PUBLIC" kind="FLOAT"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="d8d4f35a-5a82-483f-9fe2-2e70845501c1" name="Float" discrete="false"
              visibility="PUBLIC" kind="FLOAT"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="6ce50afc-88d6-4736-bdab-4494f080e345" name="Hexadecimal" visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="a8781ab0-184a-46b6-9ac2-2e6d3480096d" name="" abstractType="#6ce50afc-88d6-4736-bdab-4494f080e345"
                value="0"/>
            <ownedMaxValue xsi:type="org.polarsys.capella.core.data.information.datavalue:BinaryExpression"
                id="6c5c67eb-791d-416c-80c8-243570c00d3a" abstractType="#6ce50afc-88d6-4736-bdab-4494f080e345"
                operator="SUB">
              <ownedLeftOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:BinaryExpression"
                  id="b933e9f7-4584-42f7-8094-90e7ce16ad7b" operator="POW">
                <ownedLeftOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                    id="87bd5910-5b4e-411c-937d-80b39e39be4e" value="2"/>
                <ownedRightOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                    id="3b449338-9400-488c-aa2c-d64e8f58840a" value="64"/>
              </ownedLeftOperand>
              <ownedRightOperand xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                  id="b2c4b9a5-9b72-40c7-9431-68940ed23d72" value="1"/>
            </ownedMaxValue>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="ca28e792-3105-46de-8d14-01c352ff0a1d" name="Integer" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="8ab6a07e-f90f-48e4-9850-a69882b64e78" name="Long" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="08ce53d0-fd25-461f-9975-0d6695dc6ddf" name="LongLong" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="f0c4a5b9-60cd-4350-9ec9-9bc7c573525f" name="Short" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:StringType"
              id="bf399eda-a9e1-47e9-8d0f-93287317bc54" name="String" visibility="PUBLIC"/>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="2f3a02da-864a-4656-882a-dd35eb4dd121" name="UnsignedInteger" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="65c9de91-d76d-49c0-9fb2-23aae72fa91f" name="" abstractType="#2f3a02da-864a-4656-882a-dd35eb4dd121"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="bbe270df-0553-4036-bcb6-03bce58f633c" name="UnsignedShort" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="b24efcb8-925d-487b-bc44-ea9dac50aa50" name="" abstractType="#bbe270df-0553-4036-bcb6-03bce58f633c"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="ac70958f-8876-40cc-b091-ddc4343709f2" name="UnsignedLong" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="064e2ee9-44ee-4b5e-870a-dc2711fc534d" name="" abstractType="#ac70958f-8876-40cc-b091-ddc4343709f2"
                value="0"/>
          </ownedDataTypes>
          <ownedDataTypes xsi:type="org.polarsys.capella.core.data.information.datatype:NumericType"
              id="37e8a5cd-4ffc-4d8e-8a06-4eb1f8aac5de" name="UnsignedLongLong" maxInclusive="false"
              visibility="PUBLIC">
            <ownedMinValue xsi:type="org.polarsys.capella.core.data.information.datavalue:LiteralNumericValue"
                id="8460b91e-8179-4ab1-bc91-9c7872a44e98" name="" abstractType="#37e8a5cd-4ffc-4d8e-8a06-4eb1f8aac5de"
                value="0"/>
          </ownedDataTypes>
        </ownedDataPkgs>
      </ownedDataPkg>
      <ownedSystemComponentPkg xsi:type="org.polarsys.capella.core.data.ctx:SystemComponentPkg"
          id="e7b124d6-4a87-4b31-b05e-7653b67db217" name="Structure">
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="d8cd0d2b-dae3-4927-b707-305296c91d2a" targetElement="#cea8e290-bbcb-4a79-bebc-a2da3f617289"
            sourceElement="#902b7828-93f6-40b6-b940-3b3ae151ecad"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="93e3f62a-764e-4433-bcd3-33073d947bbb"
            name="System" abstractType="#2b184a40-255b-461c-84bb-c0cd35788c00"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="902b7828-93f6-40b6-b940-3b3ae151ecad"
            name="Person" abstractType="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="15f64956-6d1d-4297-a58f-18286d1dbc48"
            name="Normal User" abstractType="#6d6d4bc2-2d1f-4c16-87a5-a610201ee293"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="4dcafb2a-701b-420c-a7f3-fe0f962c9cc5"
            name="Admin" abstractType="#0d0f1de6-2af0-4da9-9946-56157ba32c33"/>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="2b184a40-255b-461c-84bb-c0cd35788c00" name="System">
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="c037423a-5bfb-4b46-b26b-f9e1d78bde57" targetElement="#28601782-218a-473a-be6c-463d55a22d10"
              sourceElement="#2b184a40-255b-461c-84bb-c0cd35788c00"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="25ab3a70-7984-42e8-9534-e2473a60df88" targetElement="#31931905-71a3-432b-81ee-3c6cbcf0c44b"
              sourceElement="#2b184a40-255b-461c-84bb-c0cd35788c00"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="9bf60f40-8854-4692-baa8-ef80b1ca4644" targetElement="#363fe178-023e-49da-a5cc-e7fad5ce9c4d"
              sourceElement="#2b184a40-255b-461c-84bb-c0cd35788c00"/>
          <ownedStateMachines xsi:type="org.polarsys.capella.core.data.capellacommon:StateMachine"
              id="2e88130c-9e32-427b-8745-856b49819d66" name="System State Machine">
            <ownedRegions xsi:type="org.polarsys.capella.core.data.capellacommon:Region"
                id="aa6292e9-b281-4362-999f-50e3e29f659d" name="Default Region"/>
          </ownedStateMachines>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="d343c336-71c4-41bc-a4c6-6f04877254de" name="Person" actor="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="68932e77-a503-4ec0-853a-fbf8bedbeddd" targetElement="#651fc7c8-cd59-4d42-8489-4a56174d2d49"
              sourceElement="#33bd23ad-2e61-4e4c-8d68-7c89b924c6ed"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="d5aaa0be-5885-4490-8136-839b054dd8d7" targetElement="#9c3538bd-056d-4041-b6ae-81a95d54b013"
              sourceElement="#4af9797b-3b5d-439d-999f-e4cbb3f2fbf0"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="96663731-6bca-4722-a2f1-244e9bbc19c9" targetElement="#fbd6247f-c83f-49c7-8a5c-f648a74b0e76"
              sourceElement="#8ed6ee1b-d1d2-41a9-8df1-2d9c8e54c167"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="b427e304-379b-42b0-9625-55e06acc5148" targetElement="#d36d2e6f-0960-4781-bcdb-b4c3c4d3b0c6"
              sourceElement="#844d68b6-1115-45a0-8a7d-18fd2c7d2e94"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="33bd23ad-2e61-4e4c-8d68-7c89b924c6ed" targetElement="#d629b31b-71ba-4997-aa81-cc26126df8ef"
              sourceElement="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="e06a48e0-4976-4469-8984-1400ce07a3df" targetElement="#1c9b1ee4-2da8-47d9-9f3c-b27fffa877c3"
              sourceElement="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="6d6d4bc2-2d1f-4c16-87a5-a610201ee293" name="Normal User" actor="true">
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="8ed6ee1b-d1d2-41a9-8df1-2d9c8e54c167" targetElement="#df0d647a-93e1-4f3f-9246-a0c8ea9c0ec1"
              sourceElement="#6d6d4bc2-2d1f-4c16-87a5-a610201ee293"/>
          <ownedGeneralizations xsi:type="org.polarsys.capella.core.data.capellacore:Generalization"
              id="454ac762-9d92-4ecd-8224-cf0b8f4e1f65" super="#d343c336-71c4-41bc-a4c6-6f04877254de"
              sub="#6d6d4bc2-2d1f-4c16-87a5-a610201ee293"/>
        </ownedSystemComponents>
        <ownedSystemComponents xsi:type="org.polarsys.capella.core.data.ctx:SystemComponent"
            id="0d0f1de6-2af0-4da9-9946-56157ba32c33" name="Admin" actor="true">
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="844d68b6-1115-45a0-8a7d-18fd2c7d2e94" targetElement="#d6d89c4f-8cce-4f80-9122-e165c1f8b5fb"
              sourceElement="#0d0f1de6-2af0-4da9-9946-56157ba32c33"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="4af9797b-3b5d-439d-999f-e4cbb3f2fbf0" targetElement="#0320e2b6-999c-44e0-8583-33ec2bcde1ca"
              sourceElement="#0d0f1de6-2af0-4da9-9946-56157ba32c33"/>
          <ownedGeneralizations xsi:type="org.polarsys.capella.core.data.capellacore:Generalization"
              id="1bf53499-54de-4931-92fe-467c2783040f" super="#d343c336-71c4-41bc-a4c6-6f04877254de"
              sub="#0d0f1de6-2af0-4da9-9946-56157ba32c33"/>
        </ownedSystemComponents>
      </ownedSystemComponentPkg>
      <ownedMissionPkg xsi:type="org.polarsys.capella.core.data.ctx:MissionPkg" id="6f500780-46c9-41e5-8c3d-3891544a2861"
          name="Missions">
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="5bf356e8-02df-4057-acc8-26521b130842" targetElement="#a0a8653d-9e2f-4af2-8ea3-a6ec6f45c882"
            sourceElement="#470a6731-26f1-4468-93a4-7efb8d8a985e"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="873f048d-ae80-455f-8bd3-33b65003253c" targetElement="#9d0a603d-eb25-40f0-9c58-a1eb4aba4f01"
            sourceElement="#bb881fa7-756f-4024-96de-cc5b6fa55c07"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="6c248823-9718-41bd-a119-e6f33aa63a2a" targetElement="#39c5fe25-d3fc-44e6-9ea2-2b7f29613109"
            sourceElement="#7b4dc7a1-0c50-4454-be6a-b581565a858e"/>
        <ownedMissions xsi:type="org.polarsys.capella.core.data.ctx:Mission" id="470a6731-26f1-4468-93a4-7efb8d8a985e"
            name="Proove its identity">
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="8c9c26c4-07d7-4123-92b1-3b96d1a0e46d" involved="#d343c336-71c4-41bc-a4c6-6f04877254de"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="83188bcd-caae-47a0-ab29-f0972fe68221" capability="#8c25fb68-096b-47fe-9ac6-6e012ba64260"/>
        </ownedMissions>
        <ownedMissions xsi:type="org.polarsys.capella.core.data.ctx:Mission" id="bb881fa7-756f-4024-96de-cc5b6fa55c07"
            name="Define who can access the system">
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="da3d6c83-5b68-4dae-90ed-dcb5ddd431f4" involved="#0d0f1de6-2af0-4da9-9946-56157ba32c33"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="af78c4f3-9d3a-439e-9c85-51132b85e05e" capability="#88afc19a-9a74-4a87-8b39-d1675b447026"/>
        </ownedMissions>
        <ownedMissions xsi:type="org.polarsys.capella.core.data.ctx:Mission" id="7b4dc7a1-0c50-4454-be6a-b581565a858e"
            name="Use the system">
          <ownedMissionInvolvements xsi:type="org.polarsys.capella.core.data.ctx:MissionInvolvement"
              id="0025054e-f1bb-48c3-92d1-0f2ce73acaaa" involved="#6d6d4bc2-2d1f-4c16-87a5-a610201ee293"/>
          <ownedCapabilityExploitations xsi:type="org.polarsys.capella.core.data.ctx:CapabilityExploitation"
              id="4c21f9f4-a114-4787-8bd4-f9beb4b4a291" capability="#197fbe3a-b2b9-4880-afed-9bbe79871264"/>
        </ownedMissions>
      </ownedMissionPkg>
      <ownedOperationalAnalysisRealizations xsi:type="org.polarsys.capella.core.data.ctx:OperationalAnalysisRealization"
          id="1537f0ca-5e72-4320-95a3-c062a1dc8d83" targetElement="#b9093cdf-8273-4ba9-858f-1e5c839b46e1"
          sourceElement="#d267bb75-8049-492b-8434-d72bcc045d23"/>
    </ownedArchitectures>
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.la:LogicalArchitecture"
        id="f73bcf6c-2421-4b9e-be38-022c1e63b85f" name="Logical Architecture">
      <ownedFunctionPkg xsi:type="org.polarsys.capella.core.data.la:LogicalFunctionPkg"
          id="9ae49a41-cc27-4f67-950e-058a6ab4ee98" name="Logical Functions">
        <ownedLogicalFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
            id="08158789-5a4a-46ed-9afe-b9d18cfabbc1" name="Root Logical Function">
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="6e26d3cf-5684-4117-ac88-17f5fb63eb0e" name="Proof of identity">
            <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                id="7e26c3ee-7006-4d10-ad7f-0d25825e6cfd" name="FOP 1"/>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="7f495421-e084-430f-8ade-1971905c3c02" targetElement="#d629b31b-71ba-4997-aa81-cc26126df8ef"
                sourceElement="#6e26d3cf-5684-4117-ac88-17f5fb63eb0e"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="003a0630-6363-47d9-abeb-584ebceaaedc" name="Define who can access the system">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="4df70f57-ed55-4dd4-a1cd-32ba6721f16a" name="Remove access to someone">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="b3bfff44-26b3-4a00-84c0-78ecc44f182c" name="inadmin access">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="98a48a9b-fc43-48d9-a664-cae1139e6e42" targetElement="#30095a96-5c1e-4b57-adf7-b08691479523"
                    sourceElement="#b3bfff44-26b3-4a00-84c0-78ecc44f182c"/>
              </inputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="f69ff0e4-322e-4b5b-9510-c9d8a4ba413f" name="FOP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="2b2dc6bb-8c58-478d-802e-79979b1bccee" targetElement="#0320e2b6-999c-44e0-8583-33ec2bcde1ca"
                  sourceElement="#4df70f57-ed55-4dd4-a1cd-32ba6721f16a"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="6964f204-d61c-4a95-8b8c-3c4049395783" name="Add access to sommeone">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="396aac92-0073-4a23-8e5e-3e7cbb01cca3" name="inadmin access">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="b3f6f05f-299c-4f09-8d33-7119f9248f2c" targetElement="#1e7a16ca-6a9b-4778-b2b2-9919910e5638"
                    sourceElement="#396aac92-0073-4a23-8e5e-3e7cbb01cca3"/>
              </inputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="6d32de9e-0c3d-4c95-a851-4d309201c6b1" name="FOP 1"/>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="85c87352-af30-4aaf-8743-f59ce673b1f7" targetElement="#d6d89c4f-8cce-4f80-9122-e165c1f8b5fb"
                  sourceElement="#6964f204-d61c-4a95-8b8c-3c4049395783"/>
            </ownedFunctions>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="8ed31a3e-8b8b-4ee6-8a0d-b938e0a370cc" targetElement="#8824cc97-28cc-4012-970b-6f985b377908"
                sourceElement="#003a0630-6363-47d9-abeb-584ebceaaedc"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="76d89050-5990-4f39-9aea-68422c4aa424" name="Use the normal system">
            <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                id="5f23c6c3-46a9-4912-b975-94889eb09a7c" name="innormal access">
              <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                  id="2f278bab-181e-487e-8c4c-84a364b1707a" targetElement="#ccb717f6-f5f3-4958-9458-d7f735a9029a"
                  sourceElement="#5f23c6c3-46a9-4912-b975-94889eb09a7c"/>
            </inputs>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="a9010aa5-f75e-4799-9f9f-5f32be881772" targetElement="#df0d647a-93e1-4f3f-9246-a0c8ea9c0ec1"
                sourceElement="#76d89050-5990-4f39-9aea-68422c4aa424"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="538c5f2d-5139-42dc-87c7-59d6074dd377" name="Admin functions">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="86ebebd0-28af-4623-9584-9cbce8418755" name="Provide access to admin system">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="ca98f7e9-a4b5-4ac0-834b-42e2ebf03ace" name="FIP 1">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="e3509502-1636-45f3-a028-8d2f50b24fc2" targetElement="#f400835f-08ab-4827-861a-f475d0d42aee"
                    sourceElement="#ca98f7e9-a4b5-4ac0-834b-42e2ebf03ace"/>
              </inputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="b1a69c66-290c-4e7d-9b02-94db5c77014c" name="outadmin access">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="c8090200-1387-4ce3-907b-faff66503b85" targetElement="#db48a33f-88d4-4fc6-b74a-d7612de46013"
                    sourceElement="#b1a69c66-290c-4e7d-9b02-94db5c77014c"/>
              </outputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="2c7195ca-116c-4b7f-9e97-d84c30c25663" name="outadmin access">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="44ee3adb-ec83-4900-9448-783608415780" targetElement="#cd2e402b-203d-4539-af03-04e8d9fe4c22"
                    sourceElement="#2c7195ca-116c-4b7f-9e97-d84c30c25663"/>
              </outputs>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="1c942551-5b26-4584-9903-34ade55b9cb7" targetElement="#28601782-218a-473a-be6c-463d55a22d10"
                  sourceElement="#86ebebd0-28af-4623-9584-9cbce8418755"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="6669b3bd-95b9-4e1b-9b72-46e9068ec2ce" name="Define who have access">
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                  id="e51ab72c-330e-4891-a05e-0e9aabb76619" name="Add identity in database">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="d65635db-37bf-4f22-bffc-2cab05f3217b" name="FIP 1">
                  <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                      id="0bf5a3ce-38cf-4123-8e12-77b3a54a6e90" targetElement="#bbc4c729-adb1-412f-9ceb-b7318ea33213"
                      sourceElement="#d65635db-37bf-4f22-bffc-2cab05f3217b"/>
                </inputs>
              </ownedFunctions>
              <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                  id="59858abd-712e-472e-aed3-dc0dc54902d4" name="remove identity in database">
                <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                    id="bf2b6279-420b-42ee-bf05-14d82f77fd0c" name="FIP 2">
                  <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                      id="aac85206-2ed3-46d1-8f1b-221a7afde4d0" targetElement="#c27ddba7-d05e-483c-a5e4-2e371bfce2cb"
                      sourceElement="#bf2b6279-420b-42ee-bf05-14d82f77fd0c"/>
                </inputs>
              </ownedFunctions>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="233b2008-5c4b-4339-987e-5c5a0adff135" targetElement="#31931905-71a3-432b-81ee-3c6cbcf0c44b"
                  sourceElement="#6669b3bd-95b9-4e1b-9b72-46e9068ec2ce"/>
            </ownedFunctions>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="da434bf1-1261-4439-a000-6382c355c649" targetElement="#a1511e2f-a5e3-4ead-952a-4285a2fcee8b"
                sourceElement="#538c5f2d-5139-42dc-87c7-59d6074dd377"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="73940157-c82b-46c0-9b3f-3ff6ef01efea" name="User function">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="b50426eb-1412-4521-9b0a-289eb1daaf16" name="Provide access to normal system">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="ebd5222a-a36c-4cdc-a742-4a52da2674f8" name="FIP 1">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="61a6c158-ea5c-4517-ad53-9e6a0a580bd0" targetElement="#b6c27f9b-0fe0-4b48-9d41-0552e53fc732"
                    sourceElement="#ebd5222a-a36c-4cdc-a742-4a52da2674f8"/>
              </inputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="99fa91ea-0cbc-46cb-a10a-67141041650d" name="outnormal access">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="698e8868-23ae-4ad5-b05e-d758b2264ca0" targetElement="#b41122a8-c3a3-4961-a91a-171c697ee40c"
                    sourceElement="#99fa91ea-0cbc-46cb-a10a-67141041650d"/>
              </outputs>
              <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                  id="3b56cd74-92ae-4431-b130-7673dcd22157" targetElement="#363fe178-023e-49da-a5cc-e7fad5ce9c4d"
                  sourceElement="#b50426eb-1412-4521-9b0a-289eb1daaf16"/>
            </ownedFunctions>
            <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
                id="d9a1e18d-269e-48e2-8d51-734dd39667be" targetElement="#25435f57-34a9-4e87-b37a-45f6a4cafb57"
                sourceElement="#73940157-c82b-46c0-9b3f-3ff6ef01efea"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="0bf047df-2056-4e77-9a32-14972062eb46" name="Authentification functions">
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="95bc149e-bce3-42fe-8d8f-7a4f123dea05" name="Verify Identity in database">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="b5f61093-319d-408f-9fe6-a3db4ec9149b" name="FIP 1"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="edb8aeb8-d272-4bb9-89c7-35b4c0eca718" name="FOP 1">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="ec460c0a-752b-41d5-87bf-5c937f78b207" targetElement="#6367cc34-b412-47b4-be8e-659afda292ef"
                    sourceElement="#edb8aeb8-d272-4bb9-89c7-35b4c0eca718"/>
              </outputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="5494bcc1-ac6d-4958-813e-531cd6f97f93" name="FOP 2">
                <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                    id="c5b900d6-f54c-4bbd-a806-937f7c5ca21b" targetElement="#e6a32fd6-cc95-4826-a692-39491f9eb0f0"
                    sourceElement="#5494bcc1-ac6d-4958-813e-531cd6f97f93"/>
              </outputs>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="32d2d0bd-cba0-49cf-8f11-1b1747b5520a" name="FOP 3"/>
            </ownedFunctions>
            <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
                id="300a7f2b-c0d2-48cd-854b-d9a8fcbadc24" name="Input Identity UI">
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="5de476af-cfdc-4c51-ba54-a0505cddb8ba" name="FIP 1"/>
              <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                  id="5de623c8-8a9c-4eac-b7bd-de684842237d" name="FIP 2"/>
              <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                  id="508d7ec2-4a9b-435f-84f8-10ea8de59967" name="FOP 1"/>
            </ownedFunctions>
            <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                id="eb51b009-ff4b-4825-9b77-a7509093bbcd" name="an identity" target="#b5f61093-319d-408f-9fe6-a3db4ec9149b"
                source="#508d7ec2-4a9b-435f-84f8-10ea8de59967"/>
            <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
                id="141c2297-10ac-4e90-82c4-83fc9c7b3b14" name="error" target="#5de623c8-8a9c-4eac-b7bd-de684842237d"
                source="#32d2d0bd-cba0-49cf-8f11-1b1747b5520a"/>
          </ownedFunctions>
          <ownedFunctions xsi:type="org.polarsys.capella.core.data.la:LogicalFunction"
              id="9a0dd844-b9b0-4030-986e-9747a95d4ba0" name="Admin UI">
            <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                id="b6bb5b05-1c9d-44dd-b3f7-7a0e2a4052af" name="FIP 1"/>
            <inputs xsi:type="org.polarsys.capella.core.data.fa:FunctionInputPort"
                id="0b9ca9d2-db2d-4958-9c26-2f1c41c5f4bc" name="FIP 2"/>
            <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                id="2eedf776-7aa6-42cc-8af3-eaa3271c90c6" name="FOP 1">
              <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                  id="02fc1e83-e278-4fad-ac36-d4ce171708e2" targetElement="#e704f907-6eb7-470a-a109-5fc2eb5c3d1d"
                  sourceElement="#2eedf776-7aa6-42cc-8af3-eaa3271c90c6"/>
            </outputs>
            <outputs xsi:type="org.polarsys.capella.core.data.fa:FunctionOutputPort"
                id="5e1008f3-0f8c-4e1f-952d-216d52ce78c8" name="FOP 1">
              <ownedPortRealizations xsi:type="org.polarsys.capella.core.data.information:PortRealization"
                  id="919a93e0-ddfb-486b-be0e-5f9fd35e0b9f" targetElement="#70c34707-6904-4951-9db1-7a2090d5ccc3"
                  sourceElement="#5e1008f3-0f8c-4e1f-952d-216d52ce78c8"/>
            </outputs>
          </ownedFunctions>
          <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
              id="8fa25cd1-563d-4456-bbf7-ac5c96673421" targetElement="#28f7dc7a-0373-4e19-b847-dc0ad40dd034"
              sourceElement="#08158789-5a4a-46ed-9afe-b9d18cfabbc1"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="e7863e9f-a95d-420e-a977-190aebf13e14" name="admin access" target="#b3bfff44-26b3-4a00-84c0-78ecc44f182c"
              source="#b1a69c66-290c-4e7d-9b02-94db5c77014c">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="13f4cd3b-70c6-49c8-a6e5-4d0680f7d925" targetElement="#4ef649f9-4848-46de-a06d-32eaed74c05e"
                sourceElement="#e7863e9f-a95d-420e-a977-190aebf13e14"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="46ee0a40-3087-409b-9d9b-d9f9931e734f" name="admin access" target="#396aac92-0073-4a23-8e5e-3e7cbb01cca3"
              source="#2c7195ca-116c-4b7f-9e97-d84c30c25663">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="00ed35c3-abbf-4c4e-a202-1f72a1526f6c" targetElement="#b540bf25-7aa8-421e-8702-d9f5dd147400"
                sourceElement="#46ee0a40-3087-409b-9d9b-d9f9931e734f"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="df0f18c2-338a-424d-a09c-492fa57d2e51" name="normal access" target="#5f23c6c3-46a9-4912-b975-94889eb09a7c"
              source="#99fa91ea-0cbc-46cb-a10a-67141041650d">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="dbd8184b-6c8b-4390-bb09-e399bff2a49e" targetElement="#981b0454-bf71-4359-8df3-f71494dd5db7"
                sourceElement="#df0f18c2-338a-424d-a09c-492fa57d2e51"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="c6cc9b04-47e6-4933-8bf4-d0c435646324" name="an identity" target="#d65635db-37bf-4f22-bffc-2cab05f3217b"
              source="#2eedf776-7aa6-42cc-8af3-eaa3271c90c6">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="c155792c-9dd7-4fbf-9698-9335ce2e6311" targetElement="#b98d38ac-3a08-435a-97ad-1354b74417ec"
                sourceElement="#c6cc9b04-47e6-4933-8bf4-d0c435646324"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="20706386-70e8-42c5-999a-b08f92f92af5" name="an identity" target="#bf2b6279-420b-42ee-bf05-14d82f77fd0c"
              source="#5e1008f3-0f8c-4e1f-952d-216d52ce78c8">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="515da4b2-d10f-4eae-9abe-b599309002d6" targetElement="#78d4d6bb-6e01-4d38-8b43-38e148aef984"
                sourceElement="#20706386-70e8-42c5-999a-b08f92f92af5"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="f6537e9c-441e-4872-80a9-47399f09e6d5" name="a normal identity" target="#ebd5222a-a36c-4cdc-a742-4a52da2674f8"
              source="#edb8aeb8-d272-4bb9-89c7-35b4c0eca718">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="6e3fc16b-ae49-4843-a4e3-f7895ae249ec" targetElement="#4b6634bd-af12-4223-b931-125a2b0c8a5a"
                sourceElement="#f6537e9c-441e-4872-80a9-47399f09e6d5"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="8956316e-e8a1-4d1d-9f38-6eaf7901d4cb" name="an admin identity" target="#ca98f7e9-a4b5-4ac0-834b-42e2ebf03ace"
              source="#5494bcc1-ac6d-4958-813e-531cd6f97f93">
            <ownedFunctionalExchangeRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchangeRealization"
                id="de31f002-22c2-4e34-934f-1c5a7817d039" targetElement="#7b065aa4-4d63-4dea-969e-4bb20bbd4cbf"
                sourceElement="#8956316e-e8a1-4d1d-9f38-6eaf7901d4cb"/>
          </ownedFunctionalExchanges>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="ae5df6ac-07ff-4177-8a1d-7f73b386dea8" name="preliminary informations"
              target="#5de476af-cfdc-4c51-ba54-a0505cddb8ba" source="#7e26c3ee-7006-4d10-ad7f-0d25825e6cfd"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="5148cc3e-90e0-4790-8438-d343f79bb8bf" name="inputs" target="#b6bb5b05-1c9d-44dd-b3f7-7a0e2a4052af"
              source="#f69ff0e4-322e-4b5b-9510-c9d8a4ba413f"/>
          <ownedFunctionalExchanges xsi:type="org.polarsys.capella.core.data.fa:FunctionalExchange"
              id="a9512c98-9ce4-4709-8f9c-ae6baad3c68a" name="inputs" target="#0b9ca9d2-db2d-4958-9c26-2f1c41c5f4bc"
              source="#6d32de9e-0c3d-4c95-a851-4d309201c6b1"/>
        </ownedLogicalFunctions>
      </ownedFunctionPkg>
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.la:CapabilityRealizationPkg"
          id="f50f65b5-59b7-45f5-9ef4-718882afc7e3" name="Capabilities"/>
      <ownedInterfacePkg xsi:type="org.polarsys.capella.core.data.cs:InterfacePkg"
          id="e53fc1b9-15cc-49d1-a660-38321b1da738" name="Interfaces"/>
      <ownedDataPkg xsi:type="org.polarsys.capella.core.data.information:DataPkg"
          id="478b24e0-9b7f-48ab-a8b6-c753373979c2" name="Data"/>
      <ownedLogicalComponentPkg xsi:type="org.polarsys.capella.core.data.la:LogicalComponentPkg"
          id="b9d87bd1-c117-43c5-b011-4e741b43901c" name="Structure">
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="371fb39c-b91c-410f-83ab-85fb0f340a5d" targetElement="#902b7828-93f6-40b6-b940-3b3ae151ecad"
            sourceElement="#28bf30cb-d8af-400c-8699-e693ce8d4494"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="c0930f9b-fd57-489a-9410-9e2f85cbbb53" targetElement="#15f64956-6d1d-4297-a58f-18286d1dbc48"
            sourceElement="#3a90607f-3b1d-46da-b188-4dfc6dd945d1"/>
        <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
            id="578a1b77-050a-40b0-bd56-74e7838b8408" targetElement="#4dcafb2a-701b-420c-a7f3-fe0f962c9cc5"
            sourceElement="#37be6d15-f843-41a6-929f-90d9716b3417"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="a4730ed3-35a1-4003-b934-0a7cb3273c86"
            name="Logical System" abstractType="#d1a4bdab-9841-46bd-a434-916121b2864e"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="28bf30cb-d8af-400c-8699-e693ce8d4494"
            name="Person" abstractType="#a74ca346-8ba1-430e-8ca9-06c48d702ac5"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="3a90607f-3b1d-46da-b188-4dfc6dd945d1"
            name="Normal User" abstractType="#f790101f-dc00-4d89-985e-541ca679ebd4"/>
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="37be6d15-f843-41a6-929f-90d9716b3417"
            name="Admin" abstractType="#85151929-1478-4ea6-aaec-5ef52c718c51"/>
        <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
            id="d1a4bdab-9841-46bd-a434-916121b2864e" name="Logical System">
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="bf6f1fcc-2963-46b2-bf05-62a9a031d3cb" targetElement="#6669b3bd-95b9-4e1b-9b72-46e9068ec2ce"
              sourceElement="#d1a4bdab-9841-46bd-a434-916121b2864e"/>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:Part" id="25dea9ab-65f3-4186-b9e8-3ded4fed8cb0"
              name="database" abstractType="#a29b6cea-941d-416a-b6c0-818e73a84368"/>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:Part" id="9014fa82-690c-48e1-ae3e-a3f5a3fac0c4"
              name="Authentification app" abstractType="#d68548ae-78af-44d6-85de-b5e5229541b5"/>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:Part" id="3d50fb11-d22c-45ce-a913-3a1ca0c42c16"
              name="admin app" abstractType="#f5bfea9b-7037-4302-ad12-8f34a83a8888"/>
          <ownedFeatures xsi:type="org.polarsys.capella.core.data.cs:Part" id="6a6f69e2-4892-4ee2-8e5c-c43b57331f2b"
              name="normal app" abstractType="#f6eb385d-c8dd-4ab3-87e4-fc8bb564f56b"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="d0f9bc97-e3cd-4bc2-a04b-1f7553706f34" targetElement="#2b184a40-255b-461c-84bb-c0cd35788c00"
              sourceElement="#d1a4bdab-9841-46bd-a434-916121b2864e"/>
          <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
              id="a29b6cea-941d-416a-b6c0-818e73a84368" name="database">
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="a706e03d-cd9b-4e2a-9d3d-bfca2ec268d3" targetElement="#59858abd-712e-472e-aed3-dc0dc54902d4"
                sourceElement="#a29b6cea-941d-416a-b6c0-818e73a84368"/>
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="8ad7d815-4ec3-4717-9065-064a23c78bc9" targetElement="#e51ab72c-330e-4891-a05e-0e9aabb76619"
                sourceElement="#a29b6cea-941d-416a-b6c0-818e73a84368"/>
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="b06967a1-b599-44f1-987e-9e2dd5b2d5df" targetElement="#95bc149e-bce3-42fe-8d8f-7a4f123dea05"
                sourceElement="#a29b6cea-941d-416a-b6c0-818e73a84368"/>
          </ownedLogicalComponents>
          <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
              id="d68548ae-78af-44d6-85de-b5e5229541b5" name="Authentification app">
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="8abad7a2-6df5-4986-85d0-ffd6b478ac56" targetElement="#300a7f2b-c0d2-48cd-854b-d9a8fcbadc24"
                sourceElement="#d68548ae-78af-44d6-85de-b5e5229541b5"/>
          </ownedLogicalComponents>
          <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
              id="f5bfea9b-7037-4302-ad12-8f34a83a8888" name="admin app">
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="576ef3da-b255-48d3-ad47-a7bebc07ae26" targetElement="#86ebebd0-28af-4623-9584-9cbce8418755"
                sourceElement="#f5bfea9b-7037-4302-ad12-8f34a83a8888"/>
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="45c35814-cbc4-4213-b210-552e68c80a63" targetElement="#9a0dd844-b9b0-4030-986e-9747a95d4ba0"
                sourceElement="#f5bfea9b-7037-4302-ad12-8f34a83a8888"/>
          </ownedLogicalComponents>
          <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
              id="f6eb385d-c8dd-4ab3-87e4-fc8bb564f56b" name="normal app">
            <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
                id="351471e8-1e14-42f7-b273-63311dee488e" targetElement="#b50426eb-1412-4521-9b0a-289eb1daaf16"
                sourceElement="#f6eb385d-c8dd-4ab3-87e4-fc8bb564f56b"/>
          </ownedLogicalComponents>
        </ownedLogicalComponents>
        <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
            id="a74ca346-8ba1-430e-8ca9-06c48d702ac5" name="Person" actor="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="f1695648-a038-4cc5-b70e-c0dc727d7653" targetElement="#33bd23ad-2e61-4e4c-8d68-7c89b924c6ed"
              sourceElement="#74191a3c-6ea5-454e-9bda-865387574ba5"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="74191a3c-6ea5-454e-9bda-865387574ba5" targetElement="#6e26d3cf-5684-4117-ac88-17f5fb63eb0e"
              sourceElement="#a74ca346-8ba1-430e-8ca9-06c48d702ac5"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="7f2d811f-78a8-4c51-b810-422f2e749aae" targetElement="#d343c336-71c4-41bc-a4c6-6f04877254de"
              sourceElement="#a74ca346-8ba1-430e-8ca9-06c48d702ac5"/>
        </ownedLogicalComponents>
        <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
            id="f790101f-dc00-4d89-985e-541ca679ebd4" name="Normal User" actor="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="9a69d073-c8d8-4942-bbe7-72be46b52ff7" targetElement="#454ac762-9d92-4ecd-8224-cf0b8f4e1f65"
              sourceElement="#a1c97ed9-ff61-4c01-8935-c71420616b91"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="53d12640-8c33-4f05-ace9-f12804d3973a" targetElement="#8ed6ee1b-d1d2-41a9-8df1-2d9c8e54c167"
              sourceElement="#c6772c32-49d4-4d7d-aa86-76619651b3f5"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="c6772c32-49d4-4d7d-aa86-76619651b3f5" targetElement="#76d89050-5990-4f39-9aea-68422c4aa424"
              sourceElement="#f790101f-dc00-4d89-985e-541ca679ebd4"/>
          <ownedGeneralizations xsi:type="org.polarsys.capella.core.data.capellacore:Generalization"
              id="a1c97ed9-ff61-4c01-8935-c71420616b91" super="#a74ca346-8ba1-430e-8ca9-06c48d702ac5"
              sub="#f790101f-dc00-4d89-985e-541ca679ebd4"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="4351b2ff-7805-49ad-84cc-35b5f7dae088" targetElement="#6d6d4bc2-2d1f-4c16-87a5-a610201ee293"
              sourceElement="#f790101f-dc00-4d89-985e-541ca679ebd4"/>
        </ownedLogicalComponents>
        <ownedLogicalComponents xsi:type="org.polarsys.capella.core.data.la:LogicalComponent"
            id="85151929-1478-4ea6-aaec-5ef52c718c51" name="Admin" actor="true">
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="ebcb23bd-7041-43c2-b6a2-d6189485be20" targetElement="#1bf53499-54de-4931-92fe-467c2783040f"
              sourceElement="#f38b00a4-b483-4b17-876f-3b384105e885"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="c9e733ec-e0e0-446c-a4f6-673f1c6dc9e9" targetElement="#844d68b6-1115-45a0-8a7d-18fd2c7d2e94"
              sourceElement="#318bc570-7b61-4da8-92a9-3b9e8e512444"/>
          <ownedTraces xsi:type="org.polarsys.capella.core.data.capellacommon:TransfoLink"
              id="3850ab57-dbe1-43c4-b096-ea3d004fc458" targetElement="#4af9797b-3b5d-439d-999f-e4cbb3f2fbf0"
              sourceElement="#7c7b6391-ef15-4445-8750-cbcd2ca61f99"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="318bc570-7b61-4da8-92a9-3b9e8e512444" targetElement="#6964f204-d61c-4a95-8b8c-3c4049395783"
              sourceElement="#85151929-1478-4ea6-aaec-5ef52c718c51"/>
          <ownedFunctionalAllocation xsi:type="org.polarsys.capella.core.data.fa:ComponentFunctionalAllocation"
              id="7c7b6391-ef15-4445-8750-cbcd2ca61f99" targetElement="#4df70f57-ed55-4dd4-a1cd-32ba6721f16a"
              sourceElement="#85151929-1478-4ea6-aaec-5ef52c718c51"/>
          <ownedGeneralizations xsi:type="org.polarsys.capella.core.data.capellacore:Generalization"
              id="f38b00a4-b483-4b17-876f-3b384105e885" super="#a74ca346-8ba1-430e-8ca9-06c48d702ac5"
              sub="#85151929-1478-4ea6-aaec-5ef52c718c51"/>
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="ff2b47bd-08c6-4188-91cb-2e6a537b59fc" targetElement="#0d0f1de6-2af0-4da9-9946-56157ba32c33"
              sourceElement="#85151929-1478-4ea6-aaec-5ef52c718c51"/>
        </ownedLogicalComponents>
      </ownedLogicalComponentPkg>
      <ownedSystemAnalysisRealizations xsi:type="org.polarsys.capella.core.data.la:SystemAnalysisRealization"
          id="88998ebd-4d05-44e6-a571-455adf40c3be" targetElement="#d267bb75-8049-492b-8434-d72bcc045d23"
          sourceElement="#f73bcf6c-2421-4b9e-be38-022c1e63b85f"/>
    </ownedArchitectures>
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.pa:PhysicalArchitecture"
        id="1e7fd176-52e3-45e2-bfe5-cb5d096b1b10" name="Physical Architecture">
      <ownedFunctionPkg xsi:type="org.polarsys.capella.core.data.pa:PhysicalFunctionPkg"
          id="a4a19188-31a3-4cdc-bb0a-a41af1718289" name="Physical Functions">
        <ownedPhysicalFunctions xsi:type="org.polarsys.capella.core.data.pa:PhysicalFunction"
            id="4d3fc8ce-2163-4cdd-ab2c-05ec0373627d" name="Root Physical Function">
          <ownedFunctionRealizations xsi:type="org.polarsys.capella.core.data.fa:FunctionRealization"
              id="0876e515-6efe-4873-8208-8cc5871cf0ec" targetElement="#08158789-5a4a-46ed-9afe-b9d18cfabbc1"
              sourceElement="#4d3fc8ce-2163-4cdd-ab2c-05ec0373627d"/>
        </ownedPhysicalFunctions>
      </ownedFunctionPkg>
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.la:CapabilityRealizationPkg"
          id="6734a805-e0c5-481d-9070-baf8ce2d9754" name="Capabilities"/>
      <ownedInterfacePkg xsi:type="org.polarsys.capella.core.data.cs:InterfacePkg"
          id="c4f446f2-6711-4294-b564-be78bc447e33" name="Interfaces"/>
      <ownedDataPkg xsi:type="org.polarsys.capella.core.data.information:DataPkg"
          id="8fa6c43f-3d3e-4b68-a782-d98528c2cb7c" name="Data"/>
      <ownedPhysicalComponentPkg xsi:type="org.polarsys.capella.core.data.pa:PhysicalComponentPkg"
          id="08a6b9da-9131-4736-9c05-d304df95e22a" name="Structure">
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="c804a372-01a6-4d2e-849a-3ad08150d44a"
            name="Physical System" abstractType="#ffccc0ff-5829-484f-bc20-9fb724c24fb7"/>
        <ownedPhysicalComponents xsi:type="org.polarsys.capella.core.data.pa:PhysicalComponent"
            id="ffccc0ff-5829-484f-bc20-9fb724c24fb7" name="Physical System">
          <ownedComponentRealizations xsi:type="org.polarsys.capella.core.data.cs:ComponentRealization"
              id="8548516f-bdfc-4313-accb-6c96a5a1adac" targetElement="#d1a4bdab-9841-46bd-a434-916121b2864e"
              sourceElement="#ffccc0ff-5829-484f-bc20-9fb724c24fb7"/>
        </ownedPhysicalComponents>
      </ownedPhysicalComponentPkg>
      <ownedLogicalArchitectureRealizations xsi:type="org.polarsys.capella.core.data.pa:LogicalArchitectureRealization"
          id="42701d52-c793-4582-b816-c81e40748f9c" targetElement="#f73bcf6c-2421-4b9e-be38-022c1e63b85f"
          sourceElement="#1e7fd176-52e3-45e2-bfe5-cb5d096b1b10"/>
    </ownedArchitectures>
    <ownedArchitectures xsi:type="org.polarsys.capella.core.data.epbs:EPBSArchitecture"
        id="f88c3399-0b08-4173-908e-8f0b611a7e0a" name="EPBS Architecture">
      <ownedAbstractCapabilityPkg xsi:type="org.polarsys.capella.core.data.la:CapabilityRealizationPkg"
          id="bfa9550f-80d7-4a8e-9ab9-0abdad5d67b5" name="Capabilities"/>
      <ownedConfigurationItemPkg xsi:type="org.polarsys.capella.core.data.epbs:ConfigurationItemPkg"
          id="eb8a505f-5df5-4dd8-82c9-ce5188281fba" name="Structure">
        <ownedParts xsi:type="org.polarsys.capella.core.data.cs:Part" id="669af8f8-8b98-4c21-a8f4-f09d43446cc3"
            name="System" abstractType="#b0a9c427-905f-45f1-a4b4-cad023bfe303"/>
        <ownedConfigurationItems xsi:type="org.polarsys.capella.core.data.epbs:ConfigurationItem"
            id="b0a9c427-905f-45f1-a4b4-cad023bfe303" name="System" kind="SystemCI">
          <ownedPhysicalArtifactRealizations xsi:type="org.polarsys.capella.core.data.epbs:PhysicalArtifactRealization"
              id="cd7ab00c-b829-4929-9bf2-a460d05192fa" targetElement="#ffccc0ff-5829-484f-bc20-9fb724c24fb7"
              sourceElement="#b0a9c427-905f-45f1-a4b4-cad023bfe303"/>
        </ownedConfigurationItems>
      </ownedConfigurationItemPkg>
      <ownedPhysicalArchitectureRealizations xsi:type="org.polarsys.capella.core.data.epbs:PhysicalArchitectureRealization"
          id="7e2fcfc7-f64c-48db-be87-5877bc47439c" targetElement="#1e7fd176-52e3-45e2-bfe5-cb5d096b1b10"
          sourceElement="#f88c3399-0b08-4173-908e-8f0b611a7e0a"/>
    </ownedArchitectures>
  </ownedModelRoots>
</org.polarsys.capella.core.data.capellamodeller:Project>
'
]

{ #category : 'requirement - generated' }
ExReqToploLoginRequirements >> capella_requirement_1 [

	<ExReqToploExample>
	^ ExReqRequirement new
		  title:
			  'Person shall send "preliminary informations" to Authentication app';
		  description:
			  'The component named "Person"[a74ca346-8ba1-430e-8ca9-06c48d702ac5] in the function "Proof of identity"[6e26d3cf-5684-4117-ac88-17f5fb63eb0e] transmit "preliminary informations"[ae5df6ac-07ff-4177-8a1d-7f73b386dea8] to the component named "Input Identity UI"[300a7f2b-c0d2-48cd-854b-d9a8fcbadc24] in the function "Authentication app"[d68548ae-78af-44d6-85de-b5e5229541b5]';
		  sourceDocument: (ExReqCapellaDocument new
				   id: 'ae5df6ac-07ff-4177-8a1d-7f73b386dea8';
				   name: 'login_system';
				   yourself);
		  addVerification: [ :verif |
			  verif
				  addStepOnAST: (ExReqToploLoginApplication >> #loginButtonAction) ast;
				  addStepOnAST: (ExReqToploLoginSimulation >> #canAuthenticateUsername:password:) ast ];
		  yourself
]

{ #category : 'requirement - generated' }
ExReqToploLoginRequirements >> capella_requirement_2 [

	<ExReqToploExample>
	^ ExReqRequirement new
		  title: 'Authentification app shall send "an identity" to database';
		  description:
			  'The component named "Authentification app"[d68548ae-78af-44d6-85de-b5e5229541b5] in the function "Input Identity UI"[300a7f2b-c0d2-48cd-854b-d9a8fcbadc24] transmit "an identity"[eb51b009-ff4b-4825-9b77-a7509093bbcd] to the component named "Verify Identity in database"[95bc149e-bce3-42fe-8d8f-7a4f123dea05] in the function "database"[a29b6cea-941d-416a-b6c0-818e73a84368]';
		  sourceDocument: (ExReqCapellaDocument new
				   id: 'eb51b009-ff4b-4825-9b77-a7509093bbcd';
				   name: 'login_system';
				   yourself);
				 addVerification: [ :verif |
			  verif
				  addStepOnAST: (ExReqToploLoginApplication >> #loginButtonAction) ast;
				  addStepOnAST: (ExReqToploLoginSimulation >> #canAuthenticateUsername:password:) ast
				 ];
		  yourself
]

{ #category : 'requirement - generated' }
ExReqToploLoginRequirements >> capella_requirement_3 [

	<ExReqToploExample>
	^ ExReqRequirement new
		  title: 'database shall send "error" to Authentification app';
		  description:
			  'The component named "database"[a29b6cea-941d-416a-b6c0-818e73a84368] in the function "Verify Identity in database"[95bc149e-bce3-42fe-8d8f-7a4f123dea05] transmit "error"[141c2297-10ac-4e90-82c4-83fc9c7b3b14] to the component named "Input Identity UI"[300a7f2b-c0d2-48cd-854b-d9a8fcbadc24] in the function "Authentification app"[d68548ae-78af-44d6-85de-b5e5229541b5]';
		  sourceDocument: (ExReqCapellaDocument new
				   id: '141c2297-10ac-4e90-82c4-83fc9c7b3b14';
				   name: 'login_system';
				   yourself);
		  addVerification: [ :verif |
			  verif
				  addStepOnAST: ((ExReqToploLoginApplication >> #loginButtonAction) ast allChildren select: [ :each | each isBlock ]) last children first withPrecondition: [ :obj | 1halt.obj card isLoginStatusContainerVisible not ] withPostcondition: [ :obj | obj card isLoginStatusContainerVisible ]
				   ];
		  yourself
]

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> compiledSourceCodeIntoRequirementMethods [

	| pragma methodPrefix sourceCodes index methodString |
	pragma := #ExReqToploExample2.
	methodPrefix := 'new_capella_requirement_'.
	index := 1.
	sourceCodes := self transformRequirementsIntoSourceCode.

	methodString := '<1s><2p><r><r><t>%<<3s>><r><r><t>^ <4s>'.

	sourceCodes do: [ :source |
		| fullMethod |
		fullMethod := methodString expandMacrosWithArguments: {
				              methodPrefix.
				              index.
				              pragma.
				              source }.
		index := index + 1.
		self class compile: fullMethod classified: 'requirement - generated' ]
]

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> openOnExample [

	<script: 'ExReqToploLoginRequirements new openOnExample'>
	| repository |
	repository := ExReqRepository new
		              pragmaSelector: #ExReqToploExample;
		              yourself.
	^ ExReqUIPresenter new
		  repositoryReport: repository asReport;
		  open.
]

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> transformCapellaFileIntoSimpleModel [

	| project simple |
	project := CapellaXMLImporter new
		           xmlString: self capellaFile;
		           build.
	simple := CapellaSimpleProject new
		          project: project;
		          build.
	simple filterFunctionsOnIds:
		{ #'300a7f2b-c0d2-48cd-854b-d9a8fcbadc24' }.

	(CapellaSimpleProject roassalGraph: simple) inspect.
	^ simple
]

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> transformRequirementsIntoSourceCode [

	^ self transformSimpleModelIntoRequirements collect: [ :each | Stash new serialize: each ]
]

{ #category : 'as yet unclassified' }
ExReqToploLoginRequirements >> transformSimpleModelIntoRequirements [

	^ self transformCapellaFileIntoSimpleModel asExReqRequirements
]
