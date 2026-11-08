package p102n0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H f27317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f27318b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f27319c = new ByteBuffer[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f27320d;

    public d(d0 d0Var) {
        this.f27317a = d0Var;
        e eVar = e.f27321e;
        this.f27320d = false;
    }

    public final e a(e eVar) {
        if (eVar.equals(e.f27321e)) {
            throw new f(eVar);
        }
        int i8 = 0;
        while (true) {
            H h8 = this.f27317a;
            if (i8 >= h8.size()) {
                return eVar;
            }
            g gVar = (g) h8.get(i8);
            e eVarF = gVar.f(eVar);
            if (gVar.isActive()) {
                H1.i(!eVarF.equals(e.f27321e));
                eVar = eVarF;
            }
            i8++;
        }
    }

    public final void b() {
        ArrayList arrayList = this.f27318b;
        arrayList.clear();
        this.f27320d = false;
        int i8 = 0;
        while (true) {
            H h8 = this.f27317a;
            if (i8 >= h8.size()) {
                break;
            }
            g gVar = (g) h8.get(i8);
            gVar.flush();
            if (gVar.isActive()) {
                arrayList.add(gVar);
            }
            i8++;
        }
        this.f27319c = new ByteBuffer[arrayList.size()];
        for (int i9 = 0; i9 <= c(); i9++) {
            this.f27319c[i9] = ((g) arrayList.get(i9)).c();
        }
    }

    public final int c() {
        return this.f27319c.length - 1;
    }

    public final boolean d() {
        return this.f27320d && ((g) this.f27318b.get(c())).b() && !this.f27319c[c()].hasRemaining();
    }

    public final boolean e() {
        return !this.f27318b.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        H h8 = this.f27317a;
        if (h8.size() != dVar.f27317a.size()) {
            return false;
        }
        for (int i8 = 0; i8 < h8.size(); i8++) {
            if (h8.get(i8) != dVar.f27317a.get(i8)) {
                return false;
            }
        }
        return true;
    }

    public final void f(ByteBuffer byteBuffer) {
        boolean z7;
        do {
            z7 = false;
            for (int i8 = 0; i8 <= c(); i8++) {
                if (!this.f27319c[i8].hasRemaining()) {
                    ArrayList arrayList = this.f27318b;
                    g gVar = (g) arrayList.get(i8);
                    if (!gVar.b()) {
                        ByteBuffer byteBuffer2 = i8 > 0 ? this.f27319c[i8 - 1] : byteBuffer.hasRemaining() ? byteBuffer : g.f27326a;
                        long jRemaining = byteBuffer2.remaining();
                        gVar.d(byteBuffer2);
                        this.f27319c[i8] = gVar.c();
                        z7 |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.f27319c[i8].hasRemaining();
                    } else if (!this.f27319c[i8].hasRemaining() && i8 < c()) {
                        ((g) arrayList.get(i8 + 1)).e();
                    }
                }
            }
        } while (z7);
    }

    public final void g() {
        int i8 = 0;
        while (true) {
            H h8 = this.f27317a;
            if (i8 >= h8.size()) {
                this.f27319c = new ByteBuffer[0];
                e eVar = e.f27321e;
                this.f27320d = false;
                return;
            } else {
                g gVar = (g) h8.get(i8);
                gVar.flush();
                gVar.a();
                i8++;
            }
        }
    }

    public final int hashCode() {
        return this.f27317a.hashCode();
    }
}
