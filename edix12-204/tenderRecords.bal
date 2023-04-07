public type Header_Type record {|
   string txSetIDCode?;
   string txSetControlNum?;
|};

public type ShipmentTx_Type record {|
   string null_1?;
   string carrierCode?;
   string null_2?;
   string shipmentId?;
   string null_3?;
   string paymentMethod?;
|};

public type Purpose_Type record {|
   string referenceId?;
   string referenceIdQualifier?;
|};

public type BusinessInstructions_Type record {|
   string referenceId?;
   string referenceIdQualifier?;
|};

public type PaletteInfo_Type record {|
   string quantity?;
|};

public type StopInfo_Type record {|
   string stopSequence?;
   string stopReasonCode?;
|};

public type DateInfo_Type record {|
   string dateQualifier?;
   string date?;
   string timeQualifier?;
   string time?;
|};

public type PackageInfo_Type record {|
   string weightQualifier?;
   string weightUnitCode?;
   string weight?;
   string loadingQty?;
   string null_1?;
   string volumeUnitQualifier?;
   string volume?;
|};

public type Notes_Type record {|
   string noteReference?;
   string description?;
|};

public type EntityId_Type record {|
   string entityIdCode?;
   string name?;
   string idCodeQualifier?;
   string idCode?;
|};

public type Address_Type record {|
   string address1?;
   string address2?;
|};

public type CityStateZip_Type record {|
   string city?;
   string state?;
   string postalCode?;
   string countryCode?;
|};

public type EntityInfo_GType record {|
   EntityId_Type[] entityId = [];
   Address_Type[] address = [];
   CityStateZip_Type[] cityStateZip = [];
|};

public type ContactInfo_Type record {|
   string contactFunctionCode?;
   string name?;
   string communicationNumberQualifier?;
   string communicationNumber?;
|};

public type ShipmentDetails_GType record {|
   StopInfo_Type[] stopInfo = [];
   DateInfo_Type[] dateInfo = [];
   PackageInfo_Type[] packageInfo = [];
   Notes_Type[] notes = [];
   EntityInfo_GType[] entityInfo = [];
   ContactInfo_Type[] contactInfo = [];
|};

public type TotalWeightAndCharges_Type record {|
   string weight?;
   string weightQualifier?;
   string null_1?;
   string null_2?;
   string null_3?;
   string null_4?;
   string null_5?;
   string null_6?;
   string volume?;
   string volumeUnitQualifier?;
   string landingQty?;
|};

public type Trailer_Type record {|
   string includedSegments?;
   string txSetControlNum?;
|};

public type Summary_GType record {|
   TotalWeightAndCharges_Type totalWeightAndCharges?;
   Trailer_Type trailer?;
|};

public type ShipmentInfo_GType record {|
   ShipmentTx_Type shipmentTx?;
   Purpose_Type purpose?;
   BusinessInstructions_Type[] businessInstructions = [];
   PaletteInfo_Type paletteInfo?;
   ShipmentDetails_GType[] shipmentDetails = [];
   Summary_GType[] summary = [];
|};

public type LoadTender record {|
   Header_Type header?;
   ShipmentInfo_GType shipmentInfo;
|};

