package p021c4;

import com.google.android.gms.internal.measurement.AbstractC2631s2;
import com.google.android.gms.internal.measurement.C2611o1;
import com.google.android.gms.internal.measurement.C2616p1;
import com.google.android.gms.internal.measurement.C2620q0;
import com.google.android.gms.internal.measurement.C2621q1;
import com.google.android.gms.internal.measurement.C2625r1;
import com.google.android.gms.internal.measurement.C2654x0;
import com.google.android.gms.internal.measurement.H3;
import com.google.android.gms.internal.measurement.W0;
import com.google.android.gms.internal.measurement.X0;
import com.google.android.gms.internal.measurement.Y0;
import com.google.android.gms.internal.measurement.Z0;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p132r.c;
import p132r.f;

/* JADX INFO: loaded from: classes.dex */
public final class K1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f10931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2616p1 f10932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final BitSet f10933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BitSet f10934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f10935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final f f10936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ C0572d f10937h;

    public K1(C0572d c0572d, String str) {
        this.f10937h = c0572d;
        this.f10930a = str;
        this.f10931b = true;
        this.f10933d = new BitSet();
        this.f10934e = new BitSet();
        this.f10935f = new f(0);
        this.f10936g = new f(0);
    }

    public final X0 a(int i8) {
        ArrayList arrayList;
        List listEmptyList;
        W0 w0R = X0.r();
        w0R.g();
        X0.u((X0) w0R.f23247H, i8);
        w0R.g();
        X0.w((X0) w0R.f23247H, this.f10931b);
        C2616p1 c2616p1 = this.f10932c;
        if (c2616p1 != null) {
            w0R.g();
            X0.x((X0) w0R.f23247H, c2616p1);
        }
        C2611o1 c2611o1U = C2616p1.u();
        ArrayList arrayListS = E1.S(this.f10933d);
        c2611o1U.g();
        C2616p1.B((C2616p1) c2611o1U.f23247H, arrayListS);
        ArrayList arrayListS2 = E1.S(this.f10934e);
        c2611o1U.g();
        C2616p1.D((C2616p1) c2611o1U.f23247H, arrayListS2);
        Map map = this.f10935f;
        if (map == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(map.size());
            for (Integer num : map.keySet()) {
                int iIntValue = num.intValue();
                Long l4 = (Long) map.get(num);
                if (l4 != null) {
                    Y0 y0S = Z0.s();
                    y0S.g();
                    Z0.u((Z0) y0S.f23247H, iIntValue);
                    long jLongValue = l4.longValue();
                    y0S.g();
                    Z0.t((Z0) y0S.f23247H, jLongValue);
                    arrayList2.add((Z0) y0S.e());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            c2611o1U.g();
            C2616p1.A((C2616p1) c2611o1U.f23247H, arrayList);
        }
        f fVar = this.f10936g;
        if (fVar == null) {
            listEmptyList = Collections.emptyList();
        } else {
            ArrayList arrayList3 = new ArrayList(fVar.f29684I);
            for (Integer num2 : (c) fVar.keySet()) {
                C2621q1 c2621q1T = C2625r1.t();
                int iIntValue2 = num2.intValue();
                c2621q1T.g();
                C2625r1.w((C2625r1) c2621q1T.f23247H, iIntValue2);
                List list = (List) fVar.get(num2);
                if (list != null) {
                    Collections.sort(list);
                    c2621q1T.g();
                    C2625r1.v((C2625r1) c2621q1T.f23247H, list);
                }
                arrayList3.add((C2625r1) c2621q1T.e());
            }
            listEmptyList = arrayList3;
        }
        c2611o1U.g();
        C2616p1.C((C2616p1) c2611o1U.f23247H, listEmptyList);
        w0R.g();
        X0.v((X0) w0R.f23247H, (C2616p1) c2611o1U.e());
        return (X0) w0R.e();
    }

    public final void b(C0566b c0566b) {
        int iR;
        AbstractC2631s2 abstractC2631s2 = c0566b.f11123i;
        int i8 = c0566b.f11121g;
        switch (i8) {
            case 0:
                iR = ((C2620q0) abstractC2631s2).r();
                break;
            default:
                iR = ((C2654x0) abstractC2631s2).q();
                break;
        }
        if (c0566b.f11130c != null) {
            this.f10934e.set(iR, true);
        }
        Boolean bool = c0566b.f11131d;
        if (bool != null) {
            this.f10933d.set(iR, bool.booleanValue());
        }
        if (c0566b.f11132e != null) {
            Integer numValueOf = Integer.valueOf(iR);
            Map map = this.f10935f;
            Long l4 = (Long) map.get(numValueOf);
            long jLongValue = c0566b.f11132e.longValue() / 1000;
            if (l4 == null || jLongValue > l4.longValue()) {
                map.put(numValueOf, Long.valueOf(jLongValue));
            }
        }
        if (c0566b.f11133f != null) {
            f fVar = this.f10936g;
            Integer numValueOf2 = Integer.valueOf(iR);
            List arrayList = (List) fVar.get(numValueOf2);
            if (arrayList == null) {
                arrayList = new ArrayList();
                fVar.put(numValueOf2, arrayList);
            }
            switch (i8) {
                case 0:
                    break;
                default:
                    arrayList.clear();
                    break;
            }
            H3.b();
            C0597l0 c0597l0 = (C0597l0) this.f10937h.f10616G;
            C0584h c0584h = c0597l0.f11256M;
            D d6 = E.f10723F0;
            String str = this.f10930a;
            if (c0584h.B(str, d6)) {
                switch (i8) {
                    case 0:
                        if (((C2620q0) abstractC2631s2).C()) {
                            arrayList.clear();
                        }
                        break;
                }
            }
            H3.b();
            if (!c0597l0.f11256M.B(str, d6)) {
                arrayList.add(Long.valueOf(c0566b.f11133f.longValue() / 1000));
                return;
            }
            Long lValueOf = Long.valueOf(c0566b.f11133f.longValue() / 1000);
            if (arrayList.contains(lValueOf)) {
                return;
            }
            arrayList.add(lValueOf);
        }
    }

    public K1(C0572d c0572d, String str, C2616p1 c2616p1, BitSet bitSet, BitSet bitSet2, f fVar, f fVar2) {
        this.f10937h = c0572d;
        this.f10930a = str;
        this.f10933d = bitSet;
        this.f10934e = bitSet2;
        this.f10935f = fVar;
        this.f10936g = new f(0);
        for (Integer num : (c) fVar2.keySet()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) fVar2.get(num));
            this.f10936g.put(num, arrayList);
        }
        this.f10931b = false;
        this.f10932c = c2616p1;
    }
}
