int main()
{
    short arr[12] = { -1,-1,-1,-1,-1,-1,1,1,1,1,1,1 };
    long sumP = 0;
    long sumN = 0;

    for (int i = 0; i < 12; ++i)
    {
        if (arr[i] > 0)
            sumP += arr[i]; 
        else if (arr[i] < 0)
            sumN += arr[i];
    }

    long res = sumN & 0x40;
    
    printf("%d ",sumP);
    printf("%d ",sumN);
    printf("%d ",res);

    return 0;
}

/*
* 0000100011000010
* &
* 0000000001000000
* =
* 0000000001000000
*/