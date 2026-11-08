package H5;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f3765a = new HashMap();

    public final int[] a() {
        ArrayList arrayList = new ArrayList();
        int iIntValue = -1;
        for (Map.Entry entry : this.f3765a.entrySet()) {
            if (((Integer) entry.getValue()).intValue() > iIntValue) {
                iIntValue = ((Integer) entry.getValue()).intValue();
                arrayList.clear();
                arrayList.add(entry.getKey());
            } else if (((Integer) entry.getValue()).intValue() == iIntValue) {
                arrayList.add(entry.getKey());
            }
        }
        return G5.a.a(arrayList);
    }

    public final void b(int i8) {
        HashMap map = this.f3765a;
        Integer num = (Integer) map.get(Integer.valueOf(i8));
        if (num == null) {
            num = 0;
        }
        map.put(Integer.valueOf(i8), Integer.valueOf(num.intValue() + 1));
    }
}
