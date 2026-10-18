package F0;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.AbstractC1717nH;
import com.google.android.gms.internal.ads.C1294f8;
import com.google.android.gms.internal.ads.K7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f3092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f3093c;

    public u(int i8) {
        if (i8 != 2) {
            this.f3091a = new ArrayList();
            this.f3092b = new ArrayList();
            this.f3093c = new ArrayList();
        } else {
            this.f3091a = new ArrayList();
            this.f3092b = new ArrayList();
            this.f3093c = new ArrayList();
        }
    }

    public final String a(int i8, String str, long j8, long j9) {
        StringBuilder sb = new StringBuilder();
        int i9 = 0;
        while (true) {
            List list = this.f3092b;
            int size = list.size();
            List list2 = this.f3091a;
            if (i9 >= size) {
                sb.append((String) list2.get(list.size()));
                return sb.toString();
            }
            sb.append((String) list2.get(i9));
            if (((Integer) list.get(i9)).intValue() == 1) {
                sb.append(str);
            } else {
                int iIntValue = ((Integer) list.get(i9)).intValue();
                List list3 = this.f3093c;
                if (iIntValue == 2) {
                    sb.append(String.format(Locale.US, (String) list3.get(i9), Long.valueOf(j8)));
                } else if (((Integer) list.get(i9)).intValue() == 3) {
                    sb.append(String.format(Locale.US, (String) list3.get(i9), Integer.valueOf(i8)));
                } else if (((Integer) list.get(i9)).intValue() == 4) {
                    sb.append(String.format(Locale.US, (String) list3.get(i9), Long.valueOf(j9)));
                }
            }
            i9++;
        }
    }

    public final ArrayList b() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f3092b.iterator();
        while (it.hasNext()) {
            String str = (String) C3099q.f26624d.f26627c.a((K7) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        U2.m.l(arrayList2, new C1294f8("gad:dynamite_module:experiment_id", (Object) HttpUrl.FRAGMENT_ENCODE_SET, 4));
        U2.m.l(arrayList2, AbstractC1717nH.f20088G);
        U2.m.l(arrayList2, AbstractC1717nH.f20089H);
        U2.m.l(arrayList2, AbstractC1717nH.f20090I);
        U2.m.l(arrayList2, AbstractC1717nH.f20091J);
        U2.m.l(arrayList2, AbstractC1717nH.f20092K);
        U2.m.l(arrayList2, AbstractC1717nH.f20109a0);
        U2.m.l(arrayList2, AbstractC1717nH.f20093L);
        U2.m.l(arrayList2, AbstractC1717nH.f20100S);
        U2.m.l(arrayList2, AbstractC1717nH.f20101T);
        U2.m.l(arrayList2, AbstractC1717nH.f20102U);
        U2.m.l(arrayList2, AbstractC1717nH.f20103V);
        U2.m.l(arrayList2, AbstractC1717nH.f20104W);
        U2.m.l(arrayList2, AbstractC1717nH.f20105X);
        U2.m.l(arrayList2, AbstractC1717nH.f20106Y);
        U2.m.l(arrayList2, AbstractC1717nH.f20107Z);
        U2.m.l(arrayList2, AbstractC1717nH.f20094M);
        U2.m.l(arrayList2, AbstractC1717nH.f20095N);
        U2.m.l(arrayList2, AbstractC1717nH.f20096O);
        U2.m.l(arrayList2, AbstractC1717nH.f20097P);
        U2.m.l(arrayList2, AbstractC1717nH.f20098Q);
        U2.m.l(arrayList2, AbstractC1717nH.f20099R);
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public final void c(String str, double d6, double d8) {
        List list;
        List list2;
        List list3;
        int i8 = 0;
        while (true) {
            list = this.f3091a;
            int size = list.size();
            list2 = this.f3092b;
            list3 = this.f3093c;
            if (i8 >= size) {
                break;
            }
            double dDoubleValue = ((Double) list3.get(i8)).doubleValue();
            double dDoubleValue2 = ((Double) list2.get(i8)).doubleValue();
            if (d6 < dDoubleValue || (dDoubleValue == d6 && d8 < dDoubleValue2)) {
                break;
            } else {
                i8++;
            }
        }
        list.add(i8, str);
        list3.add(i8, Double.valueOf(d6));
        list2.add(i8, Double.valueOf(d8));
    }

    public final ArrayList d() {
        ArrayList arrayListB = b();
        Iterator it = this.f3093c.iterator();
        while (it.hasNext()) {
            String str = (String) C3099q.f26624d.f26627c.a((K7) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayListB.add(str);
            }
        }
        ArrayList arrayList = new ArrayList();
        U2.m.l(arrayList, AbstractC1717nH.f20113c0);
        arrayListB.addAll(arrayList);
        return arrayListB;
    }

    public u(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.f3091a = arrayList;
        this.f3092b = arrayList2;
        this.f3093c = arrayList3;
    }
}
