    public void DlmsGet(byte[] obis)
    {
        foreach (var meterObject in meterObjects)
        {
            if (ObisMatch(obis, meterObject.Obis))
            {
                Console.WriteLine($"[GET] {meterObject.Name} = {meterObject.Value}");
                return;
            }
        }
        Console.WriteLine("[GET] OBIS not found.");
    }

    
    public void DlmsSet(byte[] obis, int newValue)
    {
        foreach (var meterObject in meterObjects)
        {
            if (ObisMatch(obis, meterObject.Obis))
            {
                meterObject.Value = newValue;
                Console.WriteLine($"[SET] {meterObject.Name} updated to {newValue}");
                return;
            }
        }
        Console.WriteLine("[SET] OBIS not found.");
    }


// void dlms_get(uint8_t obis[6]){
//     for(int i=0; i<meterObjectCount; i++){
//         if(obis_match(obis,meterObject[i].obis)){
//             printf("[GET] %s = %d\n",meterObjects[i].name,meterObjects[i].value);
//             return;
//         }
//     }
//     printf("[GET] OBIS not found.\n");
// }


// void dlms_set(uint8_t obis[6],int32_t newValue){
//     for(int i=0; i<meterObjectCount; i++){
//         if(obis_match(obis,meterObject[i].obis)){
//             printf("[SET] %s updated to  %d\n",meterObjects[i].name,newValue);
//             return;
//         }
//     }
//     printf("[SET] OBIS not found.\n");
// }

