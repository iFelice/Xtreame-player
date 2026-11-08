package I2;

import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1804p0;
import com.google.android.gms.internal.ads.K;
import com.google.android.gms.internal.ads.Z2;
import com.google.android.gms.internal.measurement.H1;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p173w2.o;

/* JADX INFO: loaded from: classes.dex */
public final class c implements p126q1.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public List f4008G;

    public c(int i8) {
        if (i8 == 1) {
            this.f4008G = new ArrayList();
            return;
        }
        if (i8 == 2) {
            this.f4008G = new ArrayList();
            return;
        }
        if (i8 == 3) {
            this.f4008G = new ArrayList();
        } else if (i8 != 4) {
            if (i8 != 5) {
                this.f4008G = new ArrayList();
            } else {
                this.f4008G = new ArrayList(20);
            }
        }
    }

    @Override // p126q1.d
    public int a(long j8) {
        return j8 < 0 ? 0 : -1;
    }

    @Override // p126q1.d
    public long b(int i8) {
        H1.d(i8 == 0);
        return 0L;
    }

    @Override // p126q1.d
    public List c(long j8) {
        return j8 >= 0 ? this.f4008G : Collections.emptyList();
    }

    @Override // p126q1.d
    public int d() {
        return 1;
    }

    public synchronized a e(Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return d.f4009G;
        }
        for (b bVar : this.f4008G) {
            if (bVar.f4005a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f4006b)) {
                return bVar.f4007c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public synchronized o f(Class cls) {
        int size = this.f4008G.size();
        for (int i8 = 0; i8 < size; i8++) {
            K2.d dVar = (K2.d) this.f4008G.get(i8);
            if (dVar.f4469a.isAssignableFrom(cls)) {
                return dVar.f4470b;
            }
        }
        return null;
    }

    public synchronized ArrayList g(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (b bVar : this.f4008G) {
            if (bVar.f4005a.isAssignableFrom(cls) && cls2.isAssignableFrom(bVar.f4006b) && !arrayList.contains(bVar.f4006b)) {
                arrayList.add(bVar.f4006b);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v5 */
    public List h(Z2 z7) {
        String str;
        int i8;
        C1534jr c1534jr = new C1534jr((byte[]) z7.f17713e);
        ArrayList arrayList = this.f4008G;
        while (c1534jr.o() > 0) {
            int iW = c1534jr.w();
            int iW2 = c1534jr.f19516b + c1534jr.w();
            if (iW == 134) {
                arrayList = new ArrayList();
                int iW3 = c1534jr.w() & 31;
                for (int i9 = 0; i9 < iW3; i9++) {
                    String strB = c1534jr.b(3, StandardCharsets.UTF_8);
                    int iW4 = c1534jr.w();
                    boolean z8 = (iW4 & 128) != 0;
                    if (z8) {
                        i8 = iW4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i8 = 1;
                    }
                    byte bW = (byte) c1534jr.w();
                    c1534jr.k(1);
                    List listSingletonList = z8 ? Collections.singletonList((bW & 64) != 0 ? new byte[]{1} : new byte[]{0}) : null;
                    K k8 = new K();
                    k8.f(str);
                    k8.f14263d = strB;
                    k8.f14257E = i8;
                    k8.f14274o = listSingletonList;
                    arrayList.add(new C1804p0(k8));
                }
            }
            c1534jr.j(iW2);
            arrayList = arrayList;
        }
        return arrayList;
    }

    public /* synthetic */ c(List list) {
        this.f4008G = list;
    }
}
