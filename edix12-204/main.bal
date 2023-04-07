import ballerina/io;
import chathurace/edi.core as edi;

public function main() returns error? {
    edi:EDIMapping mapping = check edi:readMappingFromFile("resources/yrc204-mapping.json");
    string ediText = check io:fileReadString("resources/yrc204-sample.edi");

    json tenderData = check edi:readEDIAsJson(ediText, mapping);

    LoadTender tender = check tenderData.cloneWithType(LoadTender);
    io:println(tender);
}