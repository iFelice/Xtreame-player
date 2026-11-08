package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1294f8 implements D, InterfaceC1119bo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18725G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f18726H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f18727I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f18728J;

    public /* synthetic */ C1294f8(int i8, C0727Fc c0727Fc, C0727Fc c0727Fc2) {
        this.f18725G = 6;
        this.f18726H = i8;
        this.f18727I = c0727Fc;
        this.f18728J = c0727Fc2;
    }

    public static C1294f8 b(long j8, String str) {
        return new C1294f8(str, (Object) Long.valueOf(j8), 2);
    }

    public static C1294f8 j(String str, boolean z7) {
        return new C1294f8(str, (Object) Boolean.valueOf(z7), 1);
    }

    public final void a(Object obj, Object obj2) {
        int i8 = this.f18726H + 1;
        Object[] objArr = (Object[]) this.f18727I;
        int length = objArr.length;
        int i9 = i8 + i8;
        if (i9 > length) {
            this.f18727I = Arrays.copyOf(objArr, AbstractC1762oA.e(length, i9));
        }
        p113o3.r.y(obj, obj2);
        Object[] objArr2 = (Object[]) this.f18727I;
        int i10 = this.f18726H;
        int i11 = i10 + i10;
        objArr2[i11] = obj;
        objArr2[i11 + 1] = obj2;
        this.f18726H = i10 + 1;
    }

    public final void c(M5 m7) {
        synchronized (this.f18728J) {
            try {
                if (((List) this.f18727I).size() >= 10) {
                    p120p3.h.b("Queue is full, current size = " + ((List) this.f18727I).size());
                    ((List) this.f18727I).remove(0);
                }
                int i8 = this.f18726H;
                this.f18726H = i8 + 1;
                m7.f14635l = i8;
                m7.d();
                ((List) this.f18727I).add(m7);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final long d(M m7) {
        int iC;
        while (m7.zze() < m7.zzd() - 6) {
            Q q7 = (Q) this.f18727I;
            int i8 = this.f18726H;
            W0.w wVar = (W0.w) this.f18728J;
            long jZze = m7.zze();
            byte[] bArr = new byte[2];
            int i9 = 0;
            m7.g(0, bArr, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i8) {
                m7.zzj();
                m7.zzg((int) (jZze - m7.zzf()));
            } else {
                C1534jr c1534jr = new C1534jr(16);
                System.arraycopy(bArr, 0, c1534jr.f19515a, 0, 2);
                byte[] bArr2 = c1534jr.f19515a;
                while (i9 < 14 && (iC = m7.c(2 + i9, bArr2, 14 - i9)) != -1) {
                    i9 += iC;
                }
                c1534jr.i(i9);
                m7.zzj();
                m7.zzg((int) (jZze - m7.zzf()));
                if (p113o3.r.E(c1534jr, q7, i8, wVar)) {
                    break;
                }
            }
            m7.zzg(1);
        }
        if (m7.zze() < m7.zzd() - 6) {
            return ((W0.w) this.f18728J).f7458a;
        }
        m7.zzg((int) (m7.zzd() - m7.zze()));
        return ((Q) this.f18727I).f15537j;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00be  */
    @Override // com.google.android.gms.internal.ads.D
    public final C e(M m7, long j8) {
        switch (this.f18725G) {
            case 1:
                long jZzf = m7.zzf();
                long jD = d(m7);
                long jZze = m7.zze();
                m7.zzg(Math.max(6, ((Q) this.f18727I).f15530c));
                long jD2 = d(m7);
                long jZze2 = m7.zze();
                if (jD > j8 || jD2 <= j8) {
                    return jD2 <= j8 ? new C(-2, jD2, jZze2) : new C(-1, jD, jZzf);
                }
                return new C(0, -9223372036854775807L, jZze);
            default:
                long jZzf2 = m7.zzf();
                int iMin = (int) Math.min(112800L, m7.zzd() - jZzf2);
                ((C1534jr) this.f18728J).g(iMin);
                m7.g(0, ((C1534jr) this.f18728J).f19515a, iMin);
                C1534jr c1534jr = (C1534jr) this.f18728J;
                int i8 = c1534jr.f19517c;
                long j9 = -1;
                long j10 = -1;
                long j11 = -9223372036854775807L;
                while (c1534jr.o() >= 188) {
                    byte[] bArr = c1534jr.f19515a;
                    int i9 = c1534jr.f19516b;
                    while (i9 < i8 && bArr[i9] != 71) {
                        i9++;
                    }
                    int i10 = i9 + 188;
                    if (i10 > i8) {
                        return j11 != -9223372036854775807L ? new C(-2, j11, jZzf2 + j9) : C.f12527d;
                    }
                    long jX = S3.e.x(c1534jr, i9, this.f18726H);
                    if (jX != -9223372036854775807L) {
                        long jB = ((Ys) this.f18727I).b(jX);
                        if (jB > j8) {
                            return j11 == -9223372036854775807L ? new C(-1, jB, jZzf2) : new C(0, -9223372036854775807L, jZzf2 + j10);
                        }
                        j10 = i9;
                        if (100000 + jB > j8) {
                            return new C(0, -9223372036854775807L, jZzf2 + j10);
                        }
                        j11 = jB;
                    }
                    c1534jr.j(i10);
                    j9 = i10;
                }
                if (j11 != -9223372036854775807L) {
                }
        }
    }

    public final UA f() {
        C2125vA c2125vA = (C2125vA) this.f18728J;
        if (c2125vA != null) {
            throw c2125vA.a();
        }
        UA uaC = UA.c(this.f18726H, (Object[]) this.f18727I, this);
        C2125vA c2125vA2 = (C2125vA) this.f18728J;
        if (c2125vA2 == null) {
            return uaC;
        }
        throw c2125vA2.a();
    }

    public final synchronized void g() {
        ((ExecutorService) ((J2.t) this.f18728J).f4127J).execute(new RunnableC0878Pf(this, 8));
    }

    public final void h(M5 m7) {
        synchronized (this.f18728J) {
            try {
                Iterator it = ((List) this.f18727I).iterator();
                while (it.hasNext()) {
                    M5 m8 = (M5) it.next();
                    p083k3.l lVar = p083k3.l.f25980A;
                    if (lVar.f25987g.d().o()) {
                        if (!lVar.f25987g.d().p() && !m7.equals(m8) && m8.f14640q.equals(m7.f14640q)) {
                            it.remove();
                            return;
                        }
                    } else if (!m7.equals(m8) && m8.f14638o.equals(m7.f14638o)) {
                        it.remove();
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(C1721nL c1721nL) {
        for (C2346zN c2346zN : (CopyOnWriteArrayList) this.f18728J) {
            Et.f(c2346zN.f22158a, new K.a(this, c2346zN.f22159b, c1721nL, 29, 0));
        }
    }

    public final void k(C1827pN c1827pN, C1721nL c1721nL) {
        for (C2346zN c2346zN : (CopyOnWriteArrayList) this.f18728J) {
            Et.f(c2346zN.f22158a, new RunnableC2294yN(this, c2346zN.f22159b, c1827pN, c1721nL, 2));
        }
    }

    public final Object l() {
        N7 n7 = (N7) F8.f13323a.get();
        if (n7 == null) {
            A0.O.I(F8.f13324b.get());
            return this.f18728J;
        }
        int i8 = this.f18726H - 1;
        SharedPreferences sharedPreferences = n7.f14890a;
        if (i8 == 0) {
            String str = (String) this.f18727I;
            boolean zBooleanValue = ((Boolean) this.f18728J).booleanValue();
            try {
                return Boolean.valueOf(sharedPreferences.getBoolean(str, zBooleanValue));
            } catch (ClassCastException unused) {
                return Boolean.valueOf(sharedPreferences.getString(str, String.valueOf(zBooleanValue)));
            }
        }
        if (i8 == 1) {
            String str2 = (String) this.f18727I;
            long jLongValue = ((Long) this.f18728J).longValue();
            try {
                return Long.valueOf(sharedPreferences.getLong(str2, jLongValue));
            } catch (ClassCastException unused2) {
                return Long.valueOf(sharedPreferences.getInt(str2, (int) jLongValue));
            }
        }
        if (i8 != 2) {
            return sharedPreferences.getString((String) this.f18727I, (String) this.f18728J);
        }
        String str3 = (String) this.f18727I;
        double dDoubleValue = ((Double) this.f18728J).doubleValue();
        try {
            return Double.valueOf(sharedPreferences.getFloat(str3, (float) dDoubleValue));
        } catch (ClassCastException unused3) {
            return Double.valueOf(sharedPreferences.getString(str3, String.valueOf(dDoubleValue)));
        }
    }

    public final void m(C1827pN c1827pN, C1721nL c1721nL) {
        for (C2346zN c2346zN : (CopyOnWriteArrayList) this.f18728J) {
            Et.f(c2346zN.f22158a, new RunnableC2294yN(this, c2346zN.f22159b, c1827pN, c1721nL, 1));
        }
    }

    public final void n(C1827pN c1827pN, C1721nL c1721nL, IOException iOException, boolean z7) {
        for (C2346zN c2346zN : (CopyOnWriteArrayList) this.f18728J) {
            Et.f(c2346zN.f22158a, new LK(this, c2346zN.f22159b, c1827pN, c1721nL, iOException, z7, 1));
        }
    }

    public final void o(C1827pN c1827pN, C1721nL c1721nL) {
        for (C2346zN c2346zN : (CopyOnWriteArrayList) this.f18728J) {
            Et.f(c2346zN.f22158a, new RunnableC2294yN(this, c2346zN.f22159b, c1827pN, c1721nL, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        int i8 = C2135vK.f21463U;
        C0727Fc c0727Fc = (C0727Fc) this.f18728J;
        int i9 = this.f18726H;
        C0727Fc c0727Fc2 = (C0727Fc) this.f18727I;
        C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
        if (i9 == 1) {
            c2032tL.f21064O = false;
            i9 = 1;
        }
        InterfaceC0959Vc interfaceC0959Vc = c2032tL.f21062M;
        interfaceC0959Vc.getClass();
        C1980sL c1980sL = c2032tL.f21059J;
        c1980sL.f20884d = C1980sL.a(interfaceC0959Vc, c1980sL.f20882b, c1980sL.f20885e, c1980sL.f20881a);
        C1204dL c1204dLD = c2032tL.d();
        c2032tL.i(c1204dLD, 11, new Kq(i9, c0727Fc2, c0727Fc, c1204dLD));
    }

    @Override // com.google.android.gms.internal.ads.D
    public final void zzb() {
        switch (this.f18725G) {
            case 1:
                break;
            default:
                byte[] bArr = Et.f13239f;
                int length = bArr.length;
                ((C1534jr) this.f18728J).h(0, bArr);
                break;
        }
    }

    public /* synthetic */ C1294f8(J2.t tVar, byte[] bArr) {
        this.f18725G = 4;
        this.f18728J = tVar;
        this.f18727I = bArr;
    }

    public /* synthetic */ C1294f8(Q q7, int i8) {
        this.f18725G = 1;
        this.f18727I = q7;
        this.f18726H = i8;
        this.f18728J = new W0.w();
    }

    public /* synthetic */ C1294f8(Object obj, Object obj2, int i8) {
        this.f18725G = i8;
        this.f18728J = obj;
        this.f18726H = 0;
        this.f18727I = obj2;
    }

    public C1294f8(String str, Object obj, int i8) {
        this.f18725G = 0;
        this.f18727I = str;
        this.f18728J = obj;
        this.f18726H = i8;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C1294f8(int i8, int i9) {
        this.f18725G = i8;
        if (i8 == 5) {
            this(4);
            return;
        }
        int i10 = 8;
        if (i8 == 8) {
            this(new CopyOnWriteArrayList(), (Object) null, i10);
        } else {
            this.f18728J = new Object();
            this.f18727I = new LinkedList();
        }
    }

    public C1294f8(int i8, Ys ys) {
        this.f18725G = 2;
        this.f18726H = i8;
        this.f18727I = ys;
        this.f18728J = new C1534jr();
    }

    public C1294f8(int i8) {
        this.f18725G = 5;
        this.f18727I = new Object[i8 + i8];
        this.f18726H = 0;
    }
}
