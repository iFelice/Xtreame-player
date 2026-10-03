package p081k1;

import S0.g;
import com.bumptech.glide.d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p033e1.a;
import p039f.T;
import p094m0.M;
import p094m0.N;
import p117p0.D;
import p117p0.E;
import p117p0.J;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E f25905e = new E();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final D f25906f = new D();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public J f25907g;

    @Override // com.bumptech.glide.d
    public final N h(a aVar, ByteBuffer byteBuffer) {
        M eVar;
        List list;
        long jA;
        boolean z7;
        J j8 = this.f25907g;
        if (j8 == null || aVar.f24777O != j8.e()) {
            J j9 = new J(aVar.f30906K);
            this.f25907g = j9;
            j9.a(aVar.f30906K - aVar.f24777O);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        E e8 = this.f25905e;
        e8.J(iLimit, bArrArray);
        D d6 = this.f25906f;
        d6.p(iLimit, bArrArray);
        d6.u(39);
        long jI = (((long) d6.i(1)) << 32) | ((long) d6.i(32));
        d6.u(20);
        int i8 = d6.i(12);
        int i9 = d6.i(8);
        e8.M(14);
        if (i9 == 0) {
            eVar = new e();
        } else if (i9 != 255) {
            eVar = null;
            if (i9 == 4) {
                int iZ = e8.z();
                ArrayList arrayList = new ArrayList(iZ);
                for (int i10 = 0; i10 < iZ; i10++) {
                    e8.B();
                    boolean z8 = (e8.z() & 128) != 0;
                    ArrayList arrayList2 = new ArrayList();
                    if (!z8) {
                        int iZ2 = e8.z();
                        boolean z9 = (iZ2 & 64) != 0;
                        boolean z10 = (iZ2 & 32) != 0;
                        if (z9) {
                            e8.B();
                        }
                        if (!z9) {
                            int iZ3 = e8.z();
                            ArrayList arrayList3 = new ArrayList(iZ3);
                            for (int i11 = 0; i11 < iZ3; i11++) {
                                arrayList3.add(new g(e8.z(), e8.B(), (Object) null));
                            }
                            arrayList2 = arrayList3;
                        }
                        if (z10) {
                            e8.z();
                            e8.B();
                        }
                        e8.F();
                        e8.z();
                        e8.z();
                    }
                    arrayList.add(new f(arrayList2));
                }
                eVar = new g(arrayList);
            } else if (i9 == 5) {
                J j10 = this.f25907g;
                e8.B();
                boolean z11 = (e8.z() & 128) != 0;
                List listEmptyList = Collections.emptyList();
                if (z11) {
                    list = listEmptyList;
                    jA = -9223372036854775807L;
                } else {
                    int iZ4 = e8.z();
                    boolean z12 = (iZ4 & 64) != 0;
                    boolean z13 = (32 & iZ4) != 0;
                    boolean z14 = (iZ4 & 16) != 0;
                    jA = (!z12 || z14) ? -9223372036854775807L : h.a(jI, e8);
                    if (z12) {
                        z7 = z13;
                    } else {
                        int iZ5 = e8.z();
                        ArrayList arrayList4 = new ArrayList(iZ5);
                        int i12 = 0;
                        while (i12 < iZ5) {
                            int iZ6 = e8.z();
                            long jA2 = !z14 ? h.a(jI, e8) : -9223372036854775807L;
                            long jB = j10.b(jA2);
                            T t7 = new T();
                            t7.f24990a = iZ6;
                            t7.f24991b = jA2;
                            t7.f24992c = jB;
                            arrayList4.add(t7);
                            i12++;
                            z13 = z13;
                            z14 = z14;
                        }
                        z7 = z13;
                        listEmptyList = arrayList4;
                    }
                    if (z7) {
                        e8.z();
                        e8.B();
                    }
                    e8.F();
                    e8.z();
                    e8.z();
                    list = listEmptyList;
                }
                eVar = new d(jA, j10.b(jA), list);
            } else if (i9 == 6) {
                J j11 = this.f25907g;
                long jA3 = h.a(jI, e8);
                eVar = new h(jA3, j11.b(jA3));
            }
        } else {
            long jB2 = e8.B();
            int i13 = i8 - 4;
            e8.j(0, new byte[i13], i13);
            eVar = new a(jB2, jI);
        }
        return eVar == null ? new N(new M[0]) : new N(eVar);
    }
}
