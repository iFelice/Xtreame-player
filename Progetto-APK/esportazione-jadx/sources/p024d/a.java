package p024d;

import I6.g;
import Q3.b;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import p155t6.c;
import p162u6.j;
import p162u6.k;
import p162u6.r;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    @Override // Q3.b
    public final Object r(int i8, Intent intent) {
        r rVar = r.f30543G;
        if (i8 != -1 || intent == null) {
            return rVar;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return rVar;
        }
        ArrayList arrayList = new ArrayList(intArrayExtra.length);
        for (int i9 : intArrayExtra) {
            arrayList.add(Boolean.valueOf(i9 == 0));
        }
        ArrayList arrayListQ = j.Q(stringArrayExtra);
        Iterator it = arrayListQ.iterator();
        Iterator it2 = arrayList.iterator();
        ArrayList arrayList2 = new ArrayList(Math.min(k.v(arrayListQ), k.v(arrayList)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList2.add(new c(it.next(), it2.next()));
        }
        return g.z0(arrayList2);
    }
}
