/* The isBadVersion API is defined in the parent class VersionControl.
      boolean isBadVersion(int version); */

public class Solution extends VersionControl {
    public int firstBadVersion(int n) {
        int low = 1;
        int high = n;
        int save = 0;
        while (low <= high) {
            int mid = low + (high - low) / 2;
            boolean res = isBadVersion(mid);
            if (res == true)
                if(save>mid)
                save = mid;
            else if (res < 0)
                high = mid - 1;
            else
                low = mid + 1;
        }
        return -1;
    }
}
 //not finished     
        