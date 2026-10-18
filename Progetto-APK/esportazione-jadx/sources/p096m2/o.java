package p096m2;

import A1.I;
import P1.x;
import W0.L;
import W4.c;
import Y.AbstractComponentCallbacksC0406s;
import Y.P;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonWriter;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.C2561g;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.measurement.C2597m;
import com.google.android.gms.internal.measurement.C2609o;
import com.google.android.gms.internal.measurement.D1;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.measurement.N4;
import com.google.android.gms.internal.pal.A3;
import com.google.android.gms.internal.pal.AbstractC2793p4;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.B3;
import com.google.android.gms.internal.pal.B4;
import com.google.android.gms.internal.pal.C2763l6;
import com.google.android.gms.internal.pal.C2801q4;
import com.google.android.gms.internal.pal.C2824t4;
import com.google.android.gms.internal.pal.C2856x4;
import com.google.android.gms.internal.pal.C3;
import com.google.android.gms.internal.pal.InterfaceC2784o3;
import com.google.android.gms.internal.pal.r;
import com.google.protobuf.U2;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.zip.Inflater;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0597l0;
import p021c4.T;
import p021c4.Z;
import p032e0.u;
import p079k.AbstractC3012d;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p110o0.b;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p120p3.f;
import p120p3.g;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import p150t1.a;
import p156u.e;
import p156u.h;
import p156u.i;

/* JADX INFO: loaded from: classes.dex */
public final class o implements m, f, InterfaceC2784o3 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f27236G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27237H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27238I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f27239J;

    public o(int i8) {
        if (i8 == 2) {
            this.f27236G = new ArrayList();
            this.f27237H = new HashMap();
            this.f27238I = new HashMap();
            return;
        }
        final int i9 = 0;
        if (i8 == 3) {
            this.f27236G = new E();
            this.f27237H = new E();
            this.f27238I = new a(0);
            return;
        }
        if (i8 == 7) {
            this.f27239J = Collections.emptyList();
            return;
        }
        if (i8 != 8) {
            this.f27236G = new e(256, 0);
            this.f27237H = new e(256, 0);
            this.f27238I = new e(256, 0);
            this.f27239J = new i[32];
            return;
        }
        x0 x0Var = new x0(17);
        this.f27236G = x0Var;
        i iVar = new i((i) null, x0Var);
        this.f27238I = iVar;
        this.f27237H = iVar.r();
        u uVar = new u(9);
        this.f27239J = uVar;
        ((i) this.f27238I).A("require", new N4(uVar));
        u uVar2 = (u) this.f27239J;
        uVar2.f24776a.put("internal.platform", new Callable() { // from class: com.google.android.gms.internal.measurement.d0
            public final p054g6.d a() {
                switch (i9) {
                    case 1:
                        return p062h6.a.f25420a;
                    case 2:
                    default:
                        return p139r6.d.f29858a;
                    case 3:
                        return p139r6.a.f29855a;
                    case 4:
                        return p139r6.b.f29856a;
                    case 5:
                        return p139r6.c.f29857a;
                }
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i9) {
                    case 0:
                        return new K2();
                    case 1:
                        return a();
                    case 2:
                    default:
                        return a();
                    case 3:
                        return a();
                    case 4:
                        return a();
                    case 5:
                        return a();
                }
            }
        });
        ((i) this.f27238I).A("runtime.counter", new C2561g(Double.valueOf(0.0d)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x00a9  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        ArrayList arrayList;
        boolean z7;
        b bVar;
        E e8;
        int i10;
        int iZ;
        boolean z8;
        E e9;
        int i11;
        int i12;
        int iC;
        ?? r7;
        ((E) this.f27236G).J(i8 + i9, bArr);
        ((E) this.f27236G).L(i8);
        if (((Inflater) this.f27239J) == null) {
            this.f27239J = new Inflater();
        }
        E e10 = (E) this.f27236G;
        E e11 = (E) this.f27237H;
        Inflater inflater = (Inflater) this.f27239J;
        String str = M.f28050a;
        if (e10.a() > 0 && (e10.f28035a[e10.f28036b] & 255) == 120 && M.K(e10, e11, inflater)) {
            E e12 = (E) this.f27236G;
            E e13 = (E) this.f27237H;
            e12.J(e13.f28037c, e13.f28035a);
        }
        a aVar = (a) this.f27238I;
        ?? r8 = 0;
        aVar.f30256c = 0;
        aVar.f30257d = 0;
        aVar.f30258e = 0;
        aVar.f30259f = 0;
        aVar.f30260g = 0;
        aVar.f30261h = 0;
        ((E) aVar.f30262i).I(0);
        aVar.f30255b = false;
        ArrayList arrayList2 = new ArrayList();
        while (((E) this.f27236G).a() >= 3) {
            E e14 = (E) this.f27236G;
            a aVar2 = (a) this.f27238I;
            int i13 = e14.f28037c;
            int iZ2 = e14.z();
            int iF = e14.F();
            int i14 = e14.f28036b + iF;
            if (i14 > i13) {
                e14.L(i13);
                arrayList = arrayList2;
                bVar = null;
                r7 = r8;
            } else {
                int i15 = 128;
                if (iZ2 != 128) {
                    switch (iZ2) {
                        case 20:
                            aVar2.getClass();
                            if (iF % 5 == 2) {
                                e14.M(2);
                                int[] iArr = aVar2.f30254a;
                                Arrays.fill(iArr, (int) r8);
                                int i16 = iF / 5;
                                int i17 = 0;
                                while (i17 < i16) {
                                    int iZ3 = e14.z();
                                    double dZ = e14.z();
                                    double dZ2 = e14.z() - i15;
                                    int[] iArr2 = iArr;
                                    double dZ3 = e14.z() - 128;
                                    iArr2[iZ3] = (M.i((int) ((1.402d * dZ2) + dZ), 0, 255) << 16) | (e14.z() << 24) | (M.i((int) ((dZ - (0.34414d * dZ3)) - (dZ2 * 0.71414d)), 0, 255) << 8) | M.i((int) ((dZ3 * 1.772d) + dZ), 0, 255);
                                    i17++;
                                    iArr = iArr2;
                                    arrayList2 = arrayList2;
                                    i15 = 128;
                                }
                                arrayList = arrayList2;
                                aVar2.f30255b = true;
                            } else {
                                arrayList = arrayList2;
                            }
                            break;
                        case 21:
                            aVar2.getClass();
                            if (iF >= 4) {
                                e14.M(3);
                                boolean z9 = (e14.z() & 128) != 0;
                                int i18 = iF - 4;
                                Object obj = aVar2.f30262i;
                                if (!z9) {
                                    e9 = (E) obj;
                                    i11 = e9.f28036b;
                                    i12 = e9.f28037c;
                                    if (i11 < i12 && i18 > 0) {
                                        int iMin = Math.min(i18, i12 - i11);
                                        e14.j(i11, e9.f28035a, iMin);
                                        e9.L(i11 + iMin);
                                    }
                                } else if (i18 >= 7 && (iC = e14.C()) >= 4) {
                                    aVar2.f30260g = e14.F();
                                    aVar2.f30261h = e14.F();
                                    ((E) obj).I(iC - 4);
                                    i18 = iF - 11;
                                    e9 = (E) obj;
                                    i11 = e9.f28036b;
                                    i12 = e9.f28037c;
                                    if (i11 < i12) {
                                        int iMin2 = Math.min(i18, i12 - i11);
                                        e14.j(i11, e9.f28035a, iMin2);
                                        e9.L(i11 + iMin2);
                                    }
                                }
                            }
                            arrayList = arrayList2;
                            break;
                        case 22:
                            aVar2.getClass();
                            if (iF >= 19) {
                                aVar2.f30256c = e14.F();
                                aVar2.f30257d = e14.F();
                                e14.M(11);
                                aVar2.f30258e = e14.F();
                                aVar2.f30259f = e14.F();
                            }
                            arrayList = arrayList2;
                            break;
                        default:
                            arrayList = arrayList2;
                            break;
                    }
                    z8 = false;
                    bVar = null;
                } else {
                    arrayList = arrayList2;
                    int i19 = aVar2.f30256c;
                    Object obj2 = aVar2.f30262i;
                    if (i19 == 0 || aVar2.f30257d == 0 || aVar2.f30260g == 0 || aVar2.f30261h == 0 || (i10 = (e8 = (E) obj2).f28037c) == 0 || e8.f28036b != i10 || !aVar2.f30255b) {
                        z7 = false;
                        bVar = null;
                    } else {
                        e8.L(0);
                        int i20 = aVar2.f30260g * aVar2.f30261h;
                        int[] iArr3 = new int[i20];
                        int i21 = 0;
                        while (i21 < i20) {
                            int iZ4 = e8.z();
                            int[] iArr4 = aVar2.f30254a;
                            if (iZ4 != 0) {
                                iZ = i21 + 1;
                                iArr3[i21] = iArr4[iZ4];
                            } else {
                                int iZ5 = e8.z();
                                if (iZ5 != 0) {
                                    iZ = ((iZ5 & 64) == 0 ? iZ5 & 63 : ((iZ5 & 63) << 8) | e8.z()) + i21;
                                    Arrays.fill(iArr3, i21, iZ, (iZ5 & 128) == 0 ? iArr4[0] : iArr4[e8.z()]);
                                }
                            }
                            i21 = iZ;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr3, aVar2.f30260g, aVar2.f30261h, Bitmap.Config.ARGB_8888);
                        float f8 = aVar2.f30258e;
                        float f9 = aVar2.f30256c;
                        float f10 = f8 / f9;
                        float f11 = aVar2.f30259f;
                        float f12 = aVar2.f30257d;
                        bVar = new b(null, null, null, bitmapCreateBitmap, f11 / f12, 0, 0, f10, 0, Integer.MIN_VALUE, -3.4028235E38f, aVar2.f30260g / f9, aVar2.f30261h / f12, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
                        z7 = false;
                    }
                    aVar2.f30256c = z7 ? 1 : 0;
                    aVar2.f30257d = z7 ? 1 : 0;
                    aVar2.f30258e = z7 ? 1 : 0;
                    aVar2.f30259f = z7 ? 1 : 0;
                    aVar2.f30260g = z7 ? 1 : 0;
                    aVar2.f30261h = z7 ? 1 : 0;
                    ((E) obj2).I(z7 ? 1 : 0);
                    aVar2.f30255b = z7;
                    z8 = z7;
                }
                e14.L(i14);
                r7 = z8;
            }
            ArrayList arrayList3 = arrayList;
            if (bVar != null) {
                arrayList3.add(bVar);
            }
            arrayList2 = arrayList3;
            r8 = r7;
        }
        interfaceC3172j.accept(new p126q1.a(arrayList2, -9223372036854775807L, -9223372036854775807L));
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    public final void d(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (((ArrayList) this.f27236G).contains(abstractComponentCallbacksC0406s)) {
            throw new IllegalStateException("Fragment already added: " + abstractComponentCallbacksC0406s);
        }
        synchronized (((ArrayList) this.f27236G)) {
            ((ArrayList) this.f27236G).add(abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7942R = true;
    }

    public final void e() {
        if (((c) this.f27237H) == null || TextUtils.isEmpty((String) this.f27238I)) {
            return;
        }
        ((U4.a) this.f27239J).getClass();
        throw null;
    }

    public final void f(W0.u uVar, I i8) {
        for (int i9 = 0; i9 < ((L[]) this.f27238I).length; i9++) {
            i8.a();
            i8.b();
            L lT = uVar.t(i8.f309d, 3);
            C3136t c3136t = (C3136t) ((List) this.f27236G).get(i9);
            String str = c3136t.f27041o;
            H1.c("Invalid closed caption MIME type provided: " + str, "application/cea-608".equals(str) || "application/cea-708".equals(str));
            String str2 = c3136t.f27027a;
            if (str2 == null) {
                i8.b();
                str2 = i8.f310e;
            }
            C3135s c3135s = new C3135s();
            c3135s.f26983a = str2;
            c3135s.f26995m = O.p((String) this.f27237H);
            c3135s.f26996n = O.p(str);
            c3135s.f26987e = c3136t.f27031e;
            c3135s.f26986d = c3136t.f27030d;
            c3135s.f26978K = c3136t.f27021L;
            c3135s.f26999q = c3136t.f27044r;
            lT.b(new C3136t(c3135s));
            ((L[]) this.f27238I)[i9] = lT;
        }
    }

    @Override // p126q1.m
    public final int g() {
        return 2;
    }

    public final void h(String str) {
        ((x) this.f27236G).b();
        T1.i iVarC = ((AbstractC3012d) this.f27238I).c();
        if (str == null) {
            iVarC.J(1);
        } else {
            iVarC.g(1, str);
        }
        ((x) this.f27236G).c();
        try {
            iVarC.l();
            ((x) this.f27236G).n();
        } finally {
            ((x) this.f27236G).j();
            ((AbstractC3012d) this.f27238I).m(iVarC);
        }
    }

    public final void i() {
        ((x) this.f27236G).b();
        T1.i iVarC = ((AbstractC3012d) this.f27239J).c();
        ((x) this.f27236G).c();
        try {
            iVarC.l();
            ((x) this.f27236G).n();
        } finally {
            ((x) this.f27236G).j();
            ((AbstractC3012d) this.f27239J).m(iVarC);
        }
    }

    public final AbstractComponentCallbacksC0406s j(String str) {
        P p7 = (P) ((HashMap) this.f27237H).get(str);
        if (p7 != null) {
            return p7.f7778c;
        }
        return null;
    }

    public final AbstractComponentCallbacksC0406s k(String str) {
        for (P p7 : ((HashMap) this.f27237H).values()) {
            if (p7 != null) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sK = p7.f7778c;
                if (!str.equals(abstractComponentCallbacksC0406sK.f7936L)) {
                    abstractComponentCallbacksC0406sK = abstractComponentCallbacksC0406sK.f7951a0.f7724c.k(str);
                }
                if (abstractComponentCallbacksC0406sK != null) {
                    return abstractComponentCallbacksC0406sK;
                }
            }
        }
        return null;
    }

    public final ArrayList l() {
        ArrayList arrayList = new ArrayList();
        for (P p7 : ((HashMap) this.f27237H).values()) {
            if (p7 != null) {
                arrayList.add(p7);
            }
        }
        return arrayList;
    }

    @Override // p120p3.f
    public final void m(JsonWriter jsonWriter) throws IOException {
        String str = (String) this.f27236G;
        String str2 = (String) this.f27237H;
        Map map = (Map) this.f27238I;
        byte[] bArr = (byte[]) this.f27239J;
        Object obj = g.f28212b;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        g.e(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64.encodeToString(bArr, 0));
        }
        jsonWriter.endObject();
    }

    public final ArrayList n() {
        ArrayList arrayList = new ArrayList();
        for (P p7 : ((HashMap) this.f27237H).values()) {
            if (p7 != null) {
                arrayList.add(p7.f7778c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public final List o() {
        ArrayList arrayList;
        if (((ArrayList) this.f27236G).isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (((ArrayList) this.f27236G)) {
            arrayList = new ArrayList((ArrayList) this.f27236G);
        }
        return arrayList;
    }

    public final void p(m mVar) {
        ((x) this.f27236G).b();
        ((x) this.f27236G).c();
        try {
            ((P1.e) this.f27237H).u(mVar);
            ((x) this.f27236G).n();
        } finally {
            ((x) this.f27236G).j();
        }
    }

    public final void q(P p7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
        if (((HashMap) this.f27237H).get(abstractComponentCallbacksC0406s.f7936L) != null) {
            return;
        }
        ((HashMap) this.f27237H).put(abstractComponentCallbacksC0406s.f7936L, p7);
        if (abstractComponentCallbacksC0406s.f7959i0) {
            if (abstractComponentCallbacksC0406s.f7958h0) {
                ((Y.M) this.f27239J).c(abstractComponentCallbacksC0406s);
            } else {
                ((Y.M) this.f27239J).f(abstractComponentCallbacksC0406s);
            }
            abstractComponentCallbacksC0406s.f7959i0 = false;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Added fragment to active set " + abstractComponentCallbacksC0406s);
        }
    }

    public final void r(P p7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
        if (abstractComponentCallbacksC0406s.f7958h0) {
            ((Y.M) this.f27239J).f(abstractComponentCallbacksC0406s);
        }
        if (((P) ((HashMap) this.f27237H).put(abstractComponentCallbacksC0406s.f7936L, null)) != null && Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + abstractComponentCallbacksC0406s);
        }
    }

    public final void s(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        synchronized (((ArrayList) this.f27236G)) {
            ((ArrayList) this.f27236G).remove(abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7942R = false;
    }

    public final Y.O t(String str, Y.O o4) {
        return o4 != null ? (Y.O) ((HashMap) this.f27238I).put(str, o4) : (Y.O) ((HashMap) this.f27238I).remove(str);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008c  */
    public final Bundle u() {
        byte b8;
        if (((Bundle) this.f27238I) == null) {
            Z z7 = (Z) this.f27239J;
            String string = z7.s().getString((String) this.f27236G, null);
            if (string != null) {
                try {
                    Bundle bundle = new Bundle();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i8);
                            String string2 = jSONObject.getString("n");
                            String string3 = jSONObject.getString("t");
                            int iHashCode = string3.hashCode();
                            if (iHashCode != 100) {
                                if (iHashCode != 108) {
                                    if (iHashCode != 115) {
                                        if (iHashCode != 3352) {
                                            if (iHashCode == 3445 && string3.equals("la")) {
                                                b8 = 4;
                                            } else {
                                                b8 = -1;
                                            }
                                        } else if (string3.equals("ia")) {
                                            b8 = 3;
                                        } else {
                                            b8 = -1;
                                        }
                                    } else if (string3.equals("s")) {
                                        b8 = 0;
                                    } else {
                                        b8 = -1;
                                    }
                                } else if (string3.equals("l")) {
                                    b8 = 2;
                                } else {
                                    b8 = -1;
                                }
                            } else if (string3.equals("d")) {
                                b8 = 1;
                            } else {
                                b8 = -1;
                            }
                            if (b8 == 0) {
                                bundle.putString(string2, jSONObject.getString("v"));
                            } else if (b8 == 1) {
                                bundle.putDouble(string2, Double.parseDouble(jSONObject.getString("v")));
                            } else if (b8 == 2) {
                                bundle.putLong(string2, Long.parseLong(jSONObject.getString("v")));
                            } else if (b8 == 3) {
                                C2578i4.b();
                                if (((C0597l0) z7.f10616G).f11256M.B(null, p021c4.E.f10759X0)) {
                                    JSONArray jSONArray2 = new JSONArray(jSONObject.getString("v"));
                                    int length = jSONArray2.length();
                                    int[] iArr = new int[length];
                                    for (int i9 = 0; i9 < length; i9++) {
                                        iArr[i9] = jSONArray2.optInt(i9);
                                    }
                                    bundle.putIntArray(string2, iArr);
                                }
                            } else if (b8 != 4) {
                                T t7 = ((C0597l0) z7.f10616G).f11258O;
                                C0597l0.k(t7);
                                t7.f11039L.b(string3, "Unrecognized persisted bundle type. Type");
                            } else {
                                C2578i4.b();
                                if (((C0597l0) z7.f10616G).f11256M.B(null, p021c4.E.f10759X0)) {
                                    JSONArray jSONArray3 = new JSONArray(jSONObject.getString("v"));
                                    int length2 = jSONArray3.length();
                                    long[] jArr = new long[length2];
                                    for (int i10 = 0; i10 < length2; i10++) {
                                        jArr[i10] = jSONArray3.optLong(i10);
                                    }
                                    bundle.putLongArray(string2, jArr);
                                }
                            }
                        } catch (NumberFormatException | JSONException unused) {
                            T t8 = ((C0597l0) ((Z) this.f27239J).f10616G).f11258O;
                            C0597l0.k(t8);
                            t8.f11039L.a("Error reading value from SharedPreferences. Value dropped");
                        }
                    }
                    this.f27238I = bundle;
                } catch (JSONException unused2) {
                    T t9 = ((C0597l0) ((Z) this.f27239J).f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.a("Error loading bundle from SharedPreferences. Values will be lost");
                }
            }
            if (((Bundle) this.f27238I) == null) {
                this.f27238I = (Bundle) this.f27237H;
            }
        }
        Bundle bundle2 = (Bundle) this.f27238I;
        com.bumptech.glide.c.h(bundle2);
        return new Bundle(bundle2);
    }

    public final InterfaceC2603n v(i iVar, D1... d1Arr) {
        InterfaceC2603n interfaceC2603nE = InterfaceC2603n.f23213s;
        for (D1 d6 : d1Arr) {
            interfaceC2603nE = Cw.E(d6);
            Cw.h1((i) this.f27238I);
            if ((interfaceC2603nE instanceof C2609o) || (interfaceC2603nE instanceof C2597m)) {
                interfaceC2603nE = ((x0) this.f27236G).D(iVar, interfaceC2603nE);
            }
        }
        return interfaceC2603nE;
    }

    public final void w(Bundle bundle) {
        Z z7;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        Z z8 = (Z) this.f27239J;
        SharedPreferences.Editor editorEdit = z8.s().edit();
        if (bundle2.size() == 0) {
            editorEdit.remove((String) this.f27236G);
        } else {
            String str = (String) this.f27236G;
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                        C2578i4.b();
                        C0597l0 c0597l0 = (C0597l0) z8.f10616G;
                        boolean zB = c0597l0.f11256M.B(null, p021c4.E.f10759X0);
                        z7 = z8;
                        T t7 = c0597l0.f11258O;
                        if (zB) {
                            try {
                                if (obj instanceof String) {
                                    jSONObject.put("v", obj.toString());
                                    jSONObject.put("t", "s");
                                } else if (obj instanceof Long) {
                                    jSONObject.put("v", obj.toString());
                                    jSONObject.put("t", "l");
                                } else if (obj instanceof int[]) {
                                    jSONObject.put("v", Arrays.toString((int[]) obj));
                                    jSONObject.put("t", "ia");
                                } else if (obj instanceof long[]) {
                                    jSONObject.put("v", Arrays.toString((long[]) obj));
                                    jSONObject.put("t", "la");
                                } else if (obj instanceof Double) {
                                    jSONObject.put("v", obj.toString());
                                    jSONObject.put("t", "d");
                                } else {
                                    C0597l0.k(t7);
                                    t7.f11039L.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                                }
                                jSONArray.put(jSONObject);
                            } catch (JSONException e8) {
                                e = e8;
                                T t8 = ((C0597l0) ((Z) this.f27239J).f10616G).f11258O;
                                C0597l0.k(t8);
                                t8.f11039L.b(e, "Cannot serialize bundle value to SharedPreferences");
                            }
                        } else {
                            jSONObject.put("v", obj.toString());
                            if (obj instanceof String) {
                                jSONObject.put("t", "s");
                            } else if (obj instanceof Long) {
                                jSONObject.put("t", "l");
                            } else if (obj instanceof Double) {
                                jSONObject.put("t", "d");
                            } else {
                                C0597l0.k(t7);
                                t7.f11039L.b(obj.getClass(), "Cannot serialize bundle value to SharedPreferences. Type");
                            }
                            jSONArray.put(jSONObject);
                        }
                    } catch (JSONException e9) {
                        e = e9;
                        z7 = z8;
                    }
                    z8 = z7;
                }
            }
            editorEdit.putString(str, jSONArray.toString());
        }
        editorEdit.apply();
        this.f27238I = bundle2;
    }

    public final void x(Object obj, C2763l6 c2763l6, boolean z7) throws GeneralSecurityException {
        AbstractC2864y4 c2801q4;
        byte[] bArrArray;
        if (((ConcurrentMap) this.f27237H) == null) {
            throw new IllegalStateException("addPrimitive cannot be called after build");
        }
        if (c2763l6.s() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        ConcurrentMap concurrentMap = (ConcurrentMap) this.f27237H;
        Integer numValueOf = c2763l6.t() == 5 ? null : Integer.valueOf(c2763l6.m());
        C2824t4 c2824t4 = C2824t4.f24014b;
        String strQ = c2763l6.n().q();
        r rVarP = c2763l6.n().p();
        int iN = c2763l6.n().n();
        int iT = c2763l6.t();
        if (iT == 5) {
            if (numValueOf != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (numValueOf == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        C2856x4 c2856x4 = new C2856x4(strQ, rVarP, iN, iT, numValueOf);
        c2824t4.getClass();
        try {
            try {
                c2801q4 = ((B4) c2824t4.f24015a.get()).a(c2856x4);
            } catch (GeneralSecurityException unused) {
                c2801q4 = new C2801q4();
                int i8 = AbstractC2793p4.f23981a[h.b(c2856x4.f24067d)];
            }
            AbstractC2864y4 c8 = c2801q4 instanceof C2801q4 ? new C3(c2763l6.n().q(), c2763l6.t()) : c2801q4.i();
            int iT2 = c2763l6.t() - 2;
            if (iT2 == 1) {
                bArrArray = ByteBuffer.allocate(5).put((byte) 1).putInt(c2763l6.m()).array();
            } else if (iT2 == 2) {
                bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(c2763l6.m()).array();
            } else if (iT2 != 3) {
                if (iT2 != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                }
                bArrArray = ByteBuffer.allocate(5).put((byte) 0).putInt(c2763l6.m()).array();
            } else {
                bArrArray = AbstractC2864y4.f24080J;
            }
            A3 a8 = new A3(obj, bArrArray, c2763l6.s(), c2763l6.t(), c2763l6.m(), c8);
            ArrayList arrayList = new ArrayList();
            arrayList.add(a8);
            byte[] bArr = a8.f23446b;
            B3 b8 = new B3(bArr != null ? Arrays.copyOf(bArr, bArr.length) : null);
            List list = (List) concurrentMap.put(b8, Collections.unmodifiableList(arrayList));
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(list);
                arrayList2.add(a8);
                concurrentMap.put(b8, Collections.unmodifiableList(arrayList2));
            }
            if (z7) {
                if (((A3) this.f27238I) != null) {
                    throw new IllegalStateException("you cannot set two primary primitives");
                }
                this.f27238I = a8;
            }
        } catch (GeneralSecurityException e8) {
            throw new Y.r(e8);
        }
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }

    public o(Z z7, String str) {
        this.f27239J = z7;
        com.bumptech.glide.c.e(str);
        this.f27236G = str;
        this.f27237H = new Bundle();
    }
}
