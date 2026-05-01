

void bubblesort(int * arr, unsigned long size)
{
    for(int k = size - 1; k > 0; k--)
    {
        for(int j = 0; j < k; j++)
        {
            if(arr[j+1] < arr[j])
            {
                int tmp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = tmp;
            }
        }
    }
}
