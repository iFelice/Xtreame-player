package Z3;

import android.app.ActivityManager;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import b7.C0538n;
import com.google.android.gms.internal.measurement.M1;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.protobuf.AbstractC2960v1;
import com.google.protobuf.AbstractC2970z;
import com.google.protobuf.InterfaceC2914j2;
import com.google.protobuf.Q1;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p021c4.C0579f0;
import p021c4.C0595k1;
import p021c4.C0597l0;
import p021c4.C0620x0;
import p021c4.EnumC0587i;
import p021c4.EnumC0614u0;
import p021c4.EnumC0618w0;
import p021c4.H1;
import p021c4.InterfaceC0570c0;
import p021c4.K0;
import pe.hf.black20.R;

/* JADX INFO: renamed from: Z3.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0433o implements p168v4.c, H1, O5.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8371G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f8372H;

    public C0433o(int i8) {
        this.f8371G = i8;
        if (i8 == 14) {
            this.f8372H = new U4.b();
        } else if (i8 != 20) {
            this.f8372H = new EnumMap(EnumC0618w0.class);
        } else {
            this.f8372H = I5.a.f4016e;
        }
    }

    public static C0433o y(String str) {
        return new C0433o((TextUtils.isEmpty(str) || str.length() > 1) ? EnumC0614u0.UNINITIALIZED : C0620x0.c(str.charAt(0)), 4);
    }

    public final void A() {
        C0595k1 c0595k1 = (C0595k1) this.f8372H;
        c0595k1.m();
        C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
        p021c4.Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        P3.b bVar = c0597l0.f11263T;
        bVar.getClass();
        if (z7.x(System.currentTimeMillis())) {
            p021c4.Z z8 = c0597l0.f11257N;
            C0597l0.i(z8);
            z8.f11096S.a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                p021c4.T t7 = c0597l0.f11258O;
                C0597l0.k(t7);
                t7.f11047T.a("Detected application was in foreground");
                bVar.getClass();
                D(System.currentTimeMillis());
            }
        }
    }

    public final void B(int i8, String str, List list, boolean z7, boolean z8) {
        p021c4.Q q7;
        int i9 = i8 - 1;
        if (i9 == 0) {
            p021c4.T t7 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
            C0597l0.k(t7);
            q7 = t7.f11046S;
        } else if (i9 != 1) {
            if (i9 == 3) {
                p021c4.T t8 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
                C0597l0.k(t8);
                q7 = t8.f11047T;
            } else if (i9 != 4) {
                p021c4.T t9 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
                C0597l0.k(t9);
                q7 = t9.f11045R;
            } else if (z7) {
                p021c4.T t10 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
                C0597l0.k(t10);
                q7 = t10.f11043P;
            } else if (z8) {
                p021c4.T t11 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
                C0597l0.k(t11);
                q7 = t11.f11042O;
            } else {
                p021c4.T t12 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
                C0597l0.k(t12);
                q7 = t12.f11044Q;
            }
        } else if (z7) {
            p021c4.T t13 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
            C0597l0.k(t13);
            q7 = t13.f11040M;
        } else if (z8) {
            p021c4.T t14 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
            C0597l0.k(t14);
            q7 = t14.f11039L;
        } else {
            p021c4.T t15 = ((C0597l0) ((C0579f0) this.f8372H).f10616G).f11258O;
            C0597l0.k(t15);
            q7 = t15.f11041N;
        }
        int size = list.size();
        if (size == 1) {
            q7.b(list.get(0), str);
            return;
        }
        if (size == 2) {
            q7.c(list.get(0), list.get(1), str);
        } else if (size != 3) {
            q7.a(str);
        } else {
            q7.d(list.get(0), list.get(1), list.get(2), str);
        }
    }

    public final void C(long j8, boolean z7) {
        C0595k1 c0595k1 = (C0595k1) this.f8372H;
        c0595k1.m();
        c0595k1.q();
        C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
        p021c4.Z z8 = c0597l0.f11257N;
        C0597l0.i(z8);
        boolean zX = z8.x(j8);
        p021c4.Z z9 = c0597l0.f11257N;
        if (zX) {
            C0597l0.i(z9);
            z9.f11096S.a(true);
            ((C0597l0) c0595k1.f10616G).n().w();
        }
        C0597l0.i(z9);
        z9.f11100W.b(j8);
        if (z9.f11096S.b()) {
            D(j8);
        }
    }

    public final void D(long j8) {
        C0595k1 c0595k1 = (C0595k1) this.f8372H;
        c0595k1.m();
        if (((C0597l0) c0595k1.f10616G).f()) {
            C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
            p021c4.Z z7 = c0597l0.f11257N;
            C0597l0.i(z7);
            z7.f11100W.b(j8);
            c0597l0.f11263T.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            p021c4.T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(Long.valueOf(jElapsedRealtime), "Session started, time");
            long j9 = j8 / 1000;
            C0597l0 c0597l1 = (C0597l0) c0595k1.f10616G;
            Long lValueOf = Long.valueOf(j9);
            K0 k8 = c0597l1.f11265V;
            C0597l0.j(k8);
            k8.J(j8, lValueOf, "auto", "_sid");
            p021c4.Z z8 = c0597l0.f11257N;
            C0597l0.i(z8);
            z8.f11101X.b(j9);
            z8.f11096S.a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j9);
            K0 k9 = c0597l1.f11265V;
            C0597l0.j(k9);
            k9.z(j8, bundle, "auto", "_s");
            String strN = z8.f11106c0.n();
            if (TextUtils.isEmpty(strN)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strN);
            C0597l0.j(k9);
            k9.z(j8, bundle2, "auto", "_ssr");
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001b  */
    public final void E(EnumC0618w0 enumC0618w0, int i8) {
        EnumC0587i enumC0587i = EnumC0587i.UNSET;
        if (i8 == -30) {
            enumC0587i = EnumC0587i.TCF;
        } else if (i8 == -20) {
            enumC0587i = EnumC0587i.API;
        } else if (i8 == -10) {
            enumC0587i = EnumC0587i.MANIFEST;
        } else if (i8 == 0) {
            enumC0587i = EnumC0587i.API;
        } else if (i8 == 30) {
            enumC0587i = EnumC0587i.INITIALIZATION;
        }
        ((EnumMap) this.f8372H).put(enumC0618w0, enumC0587i);
    }

    public final void F(EnumC0618w0 enumC0618w0, EnumC0587i enumC0587i) {
        ((EnumMap) this.f8372H).put(enumC0618w0, enumC0587i);
    }

    @Override // p168v4.c
    public final void a(K.k kVar) {
        ((C0538n) this.f8372H).a(kVar);
    }

    @Override // p021c4.H1
    public final void b(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            ((K0) this.f8372H).getClass();
            throw new IllegalStateException("Unexpected call on client side");
        }
        K0 k8 = (K0) this.f8372H;
        ((C0597l0) k8.f10616G).f11263T.getClass();
        k8.x("auto", "_err", bundle, true, true, System.currentTimeMillis());
    }

    @Override // O5.a
    public final void d(O5.b bVar) {
        ((O5.k) this.f8372H).f5610b.f24565G.c();
        p161u5.d dVar = ((O5.k) this.f8372H).f5617i;
        synchronized (dVar) {
            if (dVar.f30514b) {
                dVar.a();
            }
        }
        ((O5.k) this.f8372H).f5618j.post(new U0.r(18, this, bVar));
    }

    public final void e(int[] iArr, int i8) throws p184x5.c {
        int[] iArr2;
        int[] iArr3;
        int iC;
        int i9;
        Object obj = this.f8372H;
        p184x5.a aVar = (p184x5.a) obj;
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            iArr2 = iArr;
        } else {
            int i10 = 1;
            while (i10 < length && iArr[i10] == 0) {
                i10++;
            }
            if (i10 == length) {
                iArr2 = new int[]{0};
            } else {
                int i11 = length - i10;
                int[] iArr4 = new int[i11];
                System.arraycopy(iArr, i10, iArr4, 0, i11);
                iArr2 = iArr4;
            }
        }
        int[] iArr5 = new int[i8];
        boolean z7 = true;
        for (int i12 = 0; i12 < i8; i12++) {
            p184x5.a aVar2 = (p184x5.a) obj;
            int i13 = aVar2.f31211a[aVar2.f31217g + i12];
            if (i13 == 0) {
                i9 = iArr2[iArr2.length - 1];
            } else {
                if (i13 == 1) {
                    iC = 0;
                    for (int i14 : iArr2) {
                        p184x5.a aVar3 = p184x5.a.f31203h;
                        iC ^= i14;
                    }
                } else {
                    iC = iArr2[0];
                    int length2 = iArr2.length;
                    for (int i15 = 1; i15 < length2; i15++) {
                        iC = aVar.c(i13, iC) ^ iArr2[i15];
                    }
                }
                i9 = iC;
            }
            iArr5[(i8 - 1) - i12] = i9;
            if (i9 != 0) {
                z7 = false;
            }
        }
        if (z7) {
            return;
        }
        p184x5.b bVar = new p184x5.b((p184x5.a) obj, iArr5);
        p184x5.b bVarA = ((p184x5.a) obj).a(i8, 1);
        if (bVarA.d() >= bVar.d()) {
            bVarA = bVar;
            bVar = bVarA;
        }
        p184x5.a aVar4 = (p184x5.a) obj;
        p184x5.b bVar2 = aVar4.f31213c;
        p184x5.b bVarA2 = aVar4.f31214d;
        do {
            p184x5.b bVar3 = bVarA;
            bVarA = bVar;
            bVar = bVar3;
            p184x5.b bVar4 = bVar2;
            bVar2 = bVarA2;
            if (bVar.d() < i8 / 2) {
                int iC2 = bVar2.c(0);
                if (iC2 == 0) {
                    throw new p184x5.c("sigmaTilde(0) was zero");
                }
                int iB = ((p184x5.a) obj).b(iC2);
                p184x5.b[] bVarArr = {bVar2.f(iB), bVar.f(iB)};
                p184x5.b bVar5 = bVarArr[0];
                p184x5.b bVar6 = bVarArr[1];
                int iD = bVar5.d();
                if (iD == 1) {
                    iArr3 = new int[]{bVar5.c(1)};
                } else {
                    int[] iArr6 = new int[iD];
                    int i16 = 0;
                    for (int i17 = 1; i17 < ((p184x5.a) obj).f31215e && i16 < iD; i17++) {
                        if (bVar5.b(i17) == 0) {
                            iArr6[i16] = ((p184x5.a) obj).b(i17);
                            i16++;
                        }
                    }
                    if (i16 != iD) {
                        throw new p184x5.c("Error locator degree does not match number of roots");
                    }
                    iArr3 = iArr6;
                }
                int length3 = iArr3.length;
                int[] iArr7 = new int[length3];
                for (int i18 = 0; i18 < length3; i18++) {
                    int iB2 = ((p184x5.a) obj).b(iArr3[i18]);
                    int iC3 = 1;
                    for (int i19 = 0; i19 < length3; i19++) {
                        if (i18 != i19) {
                            int iC4 = ((p184x5.a) obj).c(iArr3[i19], iB2);
                            iC3 = ((p184x5.a) obj).c(iC3, (iC4 & 1) == 0 ? iC4 | 1 : iC4 & (-2));
                        }
                    }
                    int iC5 = ((p184x5.a) obj).c(bVar6.b(iB2), ((p184x5.a) obj).b(iC3));
                    iArr7[i18] = iC5;
                    p184x5.a aVar5 = (p184x5.a) obj;
                    if (aVar5.f31217g != 0) {
                        iArr7[i18] = aVar5.c(iC5, iB2);
                    }
                }
                for (int i20 = 0; i20 < iArr3.length; i20++) {
                    int length4 = iArr.length - 1;
                    p184x5.a aVar6 = (p184x5.a) obj;
                    int i21 = iArr3[i20];
                    if (i21 == 0) {
                        aVar6.getClass();
                        throw new IllegalArgumentException();
                    }
                    int i22 = length4 - aVar6.f31212b[i21];
                    if (i22 < 0) {
                        throw new p184x5.c("Bad error location");
                    }
                    iArr[i22] = iArr[i22] ^ iArr7[i20];
                }
                return;
            }
            if (bVar.e()) {
                throw new p184x5.c("r_{i-1} was zero");
            }
            p184x5.b bVarA3 = ((p184x5.a) obj).f31213c;
            int iB3 = ((p184x5.a) obj).b(bVar.c(bVar.d()));
            while (bVarA.d() >= bVar.d() && !bVarA.e()) {
                int iD2 = bVarA.d() - bVar.d();
                int iC6 = ((p184x5.a) obj).c(bVarA.c(bVarA.d()), iB3);
                bVarA3 = bVarA3.a(((p184x5.a) obj).a(iD2, iC6));
                bVarA = bVarA.a(bVar.h(iD2, iC6));
            }
            bVarA2 = bVarA3.g(bVar2).a(bVar4);
        } while (bVarA.d() < bVar.d());
        throw new IllegalStateException("Division algorithm failed to reduce polynomial?");
    }

    public final void f(BufferedWriter bufferedWriter, T2.o oVar) throws IOException {
        R4.d dVar = (R4.d) this.f8372H;
        R4.e eVar = new R4.e(bufferedWriter, dVar.f6297a, dVar.f6298b, dVar.f6299c, dVar.f6300d);
        eVar.e(oVar);
        eVar.g();
        eVar.f6302b.flush();
    }

    public final void g() {
        synchronized (((O5.o) this.f8372H).f5633h) {
            try {
                Object obj = this.f8372H;
                if (((O5.o) obj).f5632g) {
                    ((O5.o) obj).f5628c.obtainMessage(R.id.zxing_preview_failed).sendToTarget();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(int i8, boolean z7) {
        ((AbstractC2970z) this.f8372H).y0(i8, z7);
    }

    public final void i(int i8, com.google.protobuf.r rVar) {
        ((AbstractC2970z) this.f8372H).A0(i8, rVar);
    }

    public final void j(int i8, double d6) {
        AbstractC2970z abstractC2970z = (AbstractC2970z) this.f8372H;
        abstractC2970z.getClass();
        abstractC2970z.E0(i8, Double.doubleToRawLongBits(d6));
    }

    public final void k(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).G0(i8, i9);
    }

    public final void l(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).C0(i8, i9);
    }

    public final void m(int i8, long j8) {
        ((AbstractC2970z) this.f8372H).E0(i8, j8);
    }

    public final void n(int i8, float f8) {
        AbstractC2970z abstractC2970z = (AbstractC2970z) this.f8372H;
        abstractC2970z.getClass();
        abstractC2970z.C0(i8, Float.floatToRawIntBits(f8));
    }

    public final void o(int i8, InterfaceC2914j2 interfaceC2914j2, Object obj) {
        AbstractC2970z abstractC2970z = (AbstractC2970z) this.f8372H;
        abstractC2970z.O0(i8, 3);
        interfaceC2914j2.f((Q1) obj, abstractC2970z.f24552c);
        abstractC2970z.O0(i8, 4);
    }

    public final void p(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).G0(i8, i9);
    }

    public final void q(int i8, long j8) {
        ((AbstractC2970z) this.f8372H).R0(i8, j8);
    }

    public final void r(int i8, InterfaceC2914j2 interfaceC2914j2, Object obj) {
        ((AbstractC2970z) this.f8372H).I0(i8, (Q1) obj, interfaceC2914j2);
    }

    public final void s(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).C0(i8, i9);
    }

    public final void t(int i8, long j8) {
        ((AbstractC2970z) this.f8372H).E0(i8, j8);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    public final String toString() {
        int size;
        String str;
        int i8 = this.f8371G;
        int i9 = 0;
        switch (i8) {
            case 3:
                StringBuilder sb = new StringBuilder("1");
                EnumC0618w0[] enumC0618w0ArrValues = EnumC0618w0.values();
                int length = enumC0618w0ArrValues.length;
                while (i9 < length) {
                    EnumC0587i enumC0587i = (EnumC0587i) ((EnumMap) this.f8372H).get(enumC0618w0ArrValues[i9]);
                    if (enumC0587i == null) {
                        enumC0587i = EnumC0587i.UNSET;
                    }
                    sb.append(enumC0587i.f11212G);
                    i9++;
                }
                return sb.toString();
            case 27:
                StringBuilder sb2 = new StringBuilder();
                switch (i8) {
                    case 18:
                        size = ((com.google.protobuf.r) this.f8372H).size();
                        break;
                    default:
                        size = ((String[]) this.f8372H).length / 2;
                        break;
                }
                while (i9 < size) {
                    int i10 = i9 * 2;
                    String str2 = null;
                    if (i10 >= 0) {
                        String[] strArr = (String[]) this.f8372H;
                        if (i10 >= strArr.length) {
                            str = null;
                        } else {
                            str = strArr[i10];
                        }
                    } else {
                        str = null;
                    }
                    sb2.append(str);
                    sb2.append(": ");
                    int i11 = i10 + 1;
                    if (i11 >= 0) {
                        String[] strArr2 = (String[]) this.f8372H;
                        if (i11 < strArr2.length) {
                            str2 = strArr2[i11];
                        }
                    }
                    sb2.append(str2);
                    sb2.append("\n");
                    i9++;
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public final void u(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).P0(i8, (i9 >> 31) ^ (i9 << 1));
    }

    public final void v(int i8, long j8) {
        ((AbstractC2970z) this.f8372H).R0(i8, (j8 >> 63) ^ (j8 << 1));
    }

    public final void w(int i8, int i9) {
        ((AbstractC2970z) this.f8372H).P0(i8, i9);
    }

    public final void x(int i8, long j8) {
        ((AbstractC2970z) this.f8372H).R0(i8, j8);
    }

    public final Object z() {
        Map mapEmptyMap;
        Map mapEmptyMap2;
        M1 m7 = (M1) this.f8372H;
        ContentResolver contentResolver = m7.f22961a;
        Uri uri = m7.f22962b;
        ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.emptyMap();
            }
            try {
                Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uri, M1.f22960i, null, null, null);
                try {
                    if (cursorQuery == null) {
                        Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                        mapEmptyMap = Collections.emptyMap();
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        return mapEmptyMap;
                    }
                    int count = cursorQuery.getCount();
                    if (count == 0) {
                        mapEmptyMap2 = Collections.emptyMap();
                    } else {
                        Map fVar = count <= 256 ? new p132r.f(count) : new HashMap(count, 1.0f);
                        while (cursorQuery.moveToNext()) {
                            fVar.put(cursorQuery.getString(0), cursorQuery.getString(1));
                        }
                        if (cursorQuery.isAfterLast()) {
                            cursorQuery.close();
                            contentProviderClientAcquireUnstableContentProviderClient.release();
                            return fVar;
                        }
                        Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                        mapEmptyMap2 = Collections.emptyMap();
                    }
                    cursorQuery.close();
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                    return mapEmptyMap2;
                } catch (Throwable th) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (RemoteException e8) {
                Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e8);
                mapEmptyMap = Collections.emptyMap();
            }
        } catch (Throwable th3) {
            contentProviderClientAcquireUnstableContentProviderClient.release();
            throw th3;
        }
    }

    public /* synthetic */ C0433o(Object obj, int i8) {
        this.f8371G = i8;
        this.f8372H = obj;
    }

    public C0433o(InterfaceC0570c0 interfaceC0570c0) {
        this.f8371G = 5;
        com.bumptech.glide.c.h(interfaceC0570c0);
        this.f8372H = interfaceC0570c0;
    }

    public C0433o(EnumMap enumMap) {
        this.f8371G = 3;
        EnumMap enumMap2 = new EnumMap(EnumC0618w0.class);
        this.f8372H = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public C0433o(AbstractC2970z abstractC2970z) {
        this.f8371G = 17;
        AbstractC2960v1.a(abstractC2970z, "output");
        this.f8372H = abstractC2970z;
        abstractC2970z.f24552c = this;
    }

    public C0433o(SwipeDismissBehavior swipeDismissBehavior) {
        this.f8371G = 9;
        swipeDismissBehavior.getClass();
        swipeDismissBehavior.f24109e = Math.min(Math.max(0.0f, 0.1f), 1.0f);
        swipeDismissBehavior.f24110f = Math.min(Math.max(0.0f, 0.6f), 1.0f);
        swipeDismissBehavior.f24107c = 0;
    }

    @Override // O5.a
    public final void c(List list) {
    }
}
