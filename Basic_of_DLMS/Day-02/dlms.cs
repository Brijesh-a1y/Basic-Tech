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


using System;
using System.Collections.Generic;

public class DlmsManager
{
    private List<MeterObject> meterObjects;

    public DlmsManager()
    {
        // Initialize with some sample data.
        meterObjects = new List<MeterObject>
        {
            new MeterObject(new byte[] { 1, 0, 1, 8, 0, 255 }, "Active energy total", 12345),
            new MeterObject(new byte[] { 1, 0, 31, 7, 0, 255 }, "Current phase L1", 5),
            new MeterObject(new byte[] { 1, 0, 32, 7, 0, 255 }, "Voltage phase L1", 230)
        };
    }

    // A helper method to compare two OBIS arrays.
    private bool ObisMatch(byte[] obis1, byte[] obis2)
    {
        if (obis1.Length != 6 || obis2.Length != 6)
        {
            return false;
        }
        for (int i = 0; i < 6; i++)
        {
            if (obis1[i] != obis2[i])
            {
                return false;
            }
        }
        return true;
    }

  
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
}
