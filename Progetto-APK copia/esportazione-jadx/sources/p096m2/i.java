package p096m2;

import A0.O;
import H2.g;
import P1.x;
import P1.z;
import Z3.C;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.C2543d;
import com.google.android.gms.internal.measurement.C2555f;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.pal.A3;
import com.google.android.gms.internal.pal.A4;
import com.google.android.gms.internal.pal.B4;
import com.google.android.gms.internal.pal.C2745j4;
import com.google.android.gms.internal.pal.C2761l4;
import com.google.android.gms.internal.pal.C2832u4;
import com.google.android.gms.internal.pal.C2840v4;
import com.google.android.gms.internal.pal.C2872z4;
import com.google.android.gms.internal.pal.M4;
import com.google.protobuf.O2;
import com.google.protobuf.S2;
import com.google.protobuf.U2;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentMap;
import java.util.zip.Inflater;
import okhttp3.HttpUrl;
import p071j.a;
import p079k.o;
import p079k.v;
import p110o0.b;
import p117p0.D;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p126q1.d;
import p126q1.l;
import p126q1.m;
import p132r.f;
import p132r.j;
import p156u.e;
import p190y4.k;
import z4.F;
import z4.H;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements a, m {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static i f27222L;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27223G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27224H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27225I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f27226J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f27227K;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(int i8) {
        this(new Random());
        this.f27223G = i8;
        if (i8 == 3) {
            return;
        }
        if (i8 == 5) {
            this.f27224H = new f(0);
            this.f27225I = new SparseArray();
            this.f27226J = new j();
            this.f27227K = new f(0);
            return;
        }
        if (i8 == 6) {
            this.f27224H = null;
            this.f27225I = new ArrayList();
            this.f27226J = null;
            this.f27227K = HttpUrl.FRAGMENT_ENCODE_SET;
            return;
        }
        if (i8 == 11) {
            this.f27224H = new HashMap();
            this.f27225I = new HashMap();
            this.f27226J = new HashMap();
            this.f27227K = new HashMap();
            return;
        }
        if (i8 == 12) {
            this.f27224H = new Object();
            this.f27225I = new Handler(Looper.getMainLooper(), new g(this, 2));
        } else {
            this.f27224H = new e(10, 1);
            this.f27225I = new p132r.m(0);
            this.f27226J = new ArrayList();
            this.f27227K = new HashSet();
        }
    }

    public static void p(long j8, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (((Long) entry.getValue()).longValue() <= j8) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            map.remove(arrayList.get(i8));
        }
    }

    public final void A(String str, InterfaceC2603n interfaceC2603n) {
        i iVar;
        Map map = (Map) this.f27226J;
        if (!map.containsKey(str) && (iVar = (i) this.f27224H) != null && iVar.B(str)) {
            iVar.A(str, interfaceC2603n);
        } else {
            if (((Map) this.f27227K).containsKey(str)) {
                return;
            }
            if (interfaceC2603n == null) {
                map.remove(str);
            } else {
                map.put(str, interfaceC2603n);
            }
        }
    }

    public final boolean B(String str) {
        if (((Map) this.f27226J).containsKey(str)) {
            return true;
        }
        i iVar = (i) this.f27224H;
        if (iVar != null) {
            return iVar.B(str);
        }
        return false;
    }

    @Override // p126q1.m
    public final void a() {
        switch (this.f27223G) {
            case 3:
                ((Map) this.f27224H).clear();
                ((Map) this.f27225I).clear();
                ((Map) this.f27226J).clear();
                break;
        }
    }

    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, l lVar, InterfaceC3172j interfaceC3172j) {
        d0 d0VarX;
        Rect rect;
        ((E) this.f27224H).J(i8 + i9, bArr);
        ((E) this.f27224H).L(i8);
        if (((Inflater) this.f27227K) == null) {
            this.f27227K = new Inflater();
        }
        E e8 = (E) this.f27224H;
        E e9 = (E) this.f27225I;
        Inflater inflater = (Inflater) this.f27227K;
        String str = M.f28050a;
        if (e8.a() > 0 && (e8.f28035a[e8.f28036b] & 255) == 120 && M.K(e8, e9, inflater)) {
            E e10 = (E) this.f27224H;
            E e11 = (E) this.f27225I;
            e10.J(e11.f28037c, e11.f28035a);
        }
        p188y1.a aVar = (p188y1.a) this.f27226J;
        aVar.f31231c = false;
        b bVar = null;
        aVar.f31235g = null;
        aVar.f31236h = -1;
        aVar.f31237i = -1;
        int iA = ((E) this.f27224H).a();
        if (iA >= 2 && ((E) this.f27224H).F() == iA) {
            p188y1.a aVar2 = (p188y1.a) this.f27226J;
            E e12 = (E) this.f27224H;
            int[] iArr = aVar2.f31232d;
            if (iArr != null && aVar2.f31230b) {
                e12.M(e12.F() - 2);
                int iF = e12.F();
                while (e12.f28036b < iF && e12.a() > 0) {
                    int iZ = e12.z();
                    int[] iArr2 = aVar2.f31229a;
                    switch (iZ) {
                        case 0:
                        case 1:
                        case 2:
                            continue;
                        case 3:
                            if (e12.a() >= 2) {
                                int iZ2 = e12.z();
                                int iZ3 = e12.z();
                                iArr2[3] = p188y1.a.a(iArr, iZ2 >> 4);
                                iArr2[2] = p188y1.a.a(iArr, iZ2 & 15);
                                iArr2[1] = p188y1.a.a(iArr, iZ3 >> 4);
                                iArr2[0] = p188y1.a.a(iArr, iZ3 & 15);
                                aVar2.f31231c = true;
                            }
                            break;
                        case 4:
                            if (e12.a() >= 2 && aVar2.f31231c) {
                                int iZ4 = e12.z();
                                int iZ5 = e12.z();
                                iArr2[3] = p188y1.a.c(iArr2[3], iZ4 >> 4);
                                iArr2[2] = p188y1.a.c(iArr2[2], iZ4 & 15);
                                iArr2[1] = p188y1.a.c(iArr2[1], iZ5 >> 4);
                                iArr2[0] = p188y1.a.c(iArr2[0], iZ5 & 15);
                            }
                            break;
                        case 5:
                            if (e12.a() >= 6) {
                                int iZ6 = e12.z();
                                int iZ7 = e12.z();
                                int i10 = (iZ6 << 4) | (iZ7 >> 4);
                                int iZ8 = ((iZ7 & 15) << 8) | e12.z();
                                int iZ9 = e12.z();
                                int iZ10 = e12.z();
                                aVar2.f31235g = new Rect(i10, (iZ9 << 4) | (iZ10 >> 4), iZ8 + 1, (((iZ10 & 15) << 8) | e12.z()) + 1);
                            }
                            break;
                        case 6:
                            if (e12.a() >= 4) {
                                aVar2.f31236h = e12.F();
                                aVar2.f31237i = e12.F();
                            }
                            break;
                    }
                }
            }
            p188y1.a aVar3 = (p188y1.a) this.f27226J;
            E e13 = (E) this.f27224H;
            if (aVar3.f31232d != null && aVar3.f31230b && aVar3.f31231c && (rect = aVar3.f31235g) != null && aVar3.f31236h != -1 && aVar3.f31237i != -1 && rect.width() >= 2 && aVar3.f31235g.height() >= 2) {
                Rect rect2 = aVar3.f31235g;
                int[] iArr3 = new int[rect2.height() * rect2.width()];
                D d6 = new D();
                e13.L(aVar3.f31236h);
                d6.q(e13);
                aVar3.b(d6, true, rect2, iArr3);
                e13.L(aVar3.f31237i);
                d6.q(e13);
                aVar3.b(d6, false, rect2, iArr3);
                bVar = new b(null, null, null, Bitmap.createBitmap(iArr3, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888), rect2.top / aVar3.f31234f, 0, 0, rect2.left / aVar3.f31233e, 0, Integer.MIN_VALUE, -3.4028235E38f, rect2.width() / aVar3.f31233e, rect2.height() / aVar3.f31234f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
            }
        }
        if (bVar != null) {
            d0VarX = H.x(bVar);
        } else {
            F f8 = H.f31804H;
            d0VarX = d0.f31844K;
        }
        interfaceC3172j.accept(new p126q1.a(d0VarX, -9223372036854775807L, 5000000L));
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    @Override // p071j.a
    public final void d(p071j.b bVar) {
        ((ActionMode.Callback) this.f27224H).onDestroyActionMode(k(bVar));
    }

    @Override // p071j.a
    public final boolean e(p071j.b bVar, MenuItem menuItem) {
        return ((ActionMode.Callback) this.f27224H).onActionItemClicked(k(bVar), new v((Context) this.f27225I, (I.b) menuItem));
    }

    @Override // p071j.a
    public final boolean f(p071j.b bVar, o oVar) {
        return ((ActionMode.Callback) this.f27224H).onCreateActionMode(k(bVar), l(oVar));
    }

    @Override // p126q1.m
    public final int g() {
        return 2;
    }

    @Override // p071j.a
    public final boolean h(p071j.b bVar, o oVar) {
        return ((ActionMode.Callback) this.f27224H).onPrepareActionMode(k(bVar), l(oVar));
    }

    public final ArrayList i(H h8) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        p(jElapsedRealtime, (Map) this.f27224H);
        p(jElapsedRealtime, (Map) this.f27225I);
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < h8.size(); i8++) {
            F0.b bVar = (F0.b) h8.get(i8);
            if (!((Map) this.f27224H).containsKey(bVar.f3011b) && !((Map) this.f27225I).containsKey(Integer.valueOf(bVar.f3012c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public final void j(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((p132r.m) this.f27225I).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i8 = 0; i8 < size; i8++) {
                j(arrayList2.get(i8), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public final p071j.f k(p071j.b bVar) {
        int size = ((ArrayList) this.f27226J).size();
        for (int i8 = 0; i8 < size; i8++) {
            p071j.f fVar = (p071j.f) ((ArrayList) this.f27226J).get(i8);
            if (fVar != null && fVar.f25609b == bVar) {
                return fVar;
            }
        }
        p071j.f fVar2 = new p071j.f((Context) this.f27225I, bVar);
        ((ArrayList) this.f27226J).add(fVar2);
        return fVar2;
    }

    public final Menu l(o oVar) {
        Menu menu = (Menu) ((p132r.m) this.f27227K).get(oVar);
        if (menu != null) {
            return menu;
        }
        p079k.D d6 = new p079k.D((Context) this.f27225I, oVar);
        ((p132r.m) this.f27227K).put(oVar, d6);
        return d6;
    }

    public final g m(j jVar) {
        q0.h(jVar, "id");
        z zVarN = z.N(2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
        String str = jVar.f27228a;
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        zVarN.w(2, jVar.f27229b);
        ((x) this.f27224H).b();
        Cursor cursorH = C.h((x) this.f27224H, zVarN);
        try {
            int i8 = Q3.b.i(cursorH, "work_spec_id");
            int i9 = Q3.b.i(cursorH, "generation");
            int i10 = Q3.b.i(cursorH, "system_id");
            g gVar = null;
            String string = null;
            if (cursorH.moveToFirst()) {
                if (!cursorH.isNull(i8)) {
                    string = cursorH.getString(i8);
                }
                gVar = new g(string, cursorH.getInt(i9), cursorH.getInt(i10));
            }
            return gVar;
        } finally {
            cursorH.close();
            zVarN.O();
        }
    }

    public final void n(g gVar) {
        ((x) this.f27224H).b();
        ((x) this.f27224H).c();
        try {
            ((P1.e) this.f27225I).u(gVar);
            ((x) this.f27224H).n();
        } finally {
            ((x) this.f27224H).j();
        }
    }

    public final void o() {
        synchronized (this.f27224H) {
            O.I(this.f27226J);
        }
    }

    public final F0.b q(H h8) {
        ArrayList arrayListI = i(h8);
        if (arrayListI.size() < 2) {
            return (F0.b) k.F(arrayListI, null);
        }
        Collections.sort(arrayListI, new K.b(1));
        ArrayList arrayList = new ArrayList();
        int i8 = ((F0.b) arrayListI.get(0)).f3012c;
        for (int i9 = 0; i9 < arrayListI.size(); i9++) {
            F0.b bVar = (F0.b) arrayListI.get(i9);
            if (i8 != bVar.f3012c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (F0.b) arrayListI.get(0);
            }
            arrayList.add(new Pair(bVar.f3011b, Integer.valueOf(bVar.f3013d)));
        }
        F0.b bVar2 = (F0.b) ((Map) this.f27226J).get(arrayList);
        if (bVar2 == null) {
            List listSubList = arrayListI.subList(0, arrayList.size());
            int i10 = 0;
            for (int i11 = 0; i11 < listSubList.size(); i11++) {
                i10 += ((F0.b) listSubList.get(i11)).f3013d;
            }
            int iNextInt = ((Random) this.f27227K).nextInt(i10);
            int i12 = 0;
            for (int i13 = 0; i13 < listSubList.size(); i13++) {
                F0.b bVar3 = (F0.b) listSubList.get(i13);
                i12 += bVar3.f3013d;
                if (iNextInt < i12) {
                    bVar2 = bVar3;
                    ((Map) this.f27226J).put(arrayList, bVar2);
                }
            }
            bVar2 = (F0.b) k.G(listSubList);
            ((Map) this.f27226J).put(arrayList, bVar2);
        }
        return bVar2;
    }

    public final i r() {
        return new i(this, (x0) this.f27225I);
    }

    public final void s(C2745j4 c2745j4) throws GeneralSecurityException {
        C2872z4 c2872z4 = new C2872z4(c2745j4.f23884a, c2745j4.f23885b);
        if (!((Map) this.f27225I).containsKey(c2872z4)) {
            ((Map) this.f27225I).put(c2872z4, c2745j4);
            return;
        }
        C2745j4 c2745j5 = (C2745j4) ((Map) this.f27225I).get(c2872z4);
        if (!c2745j5.equals(c2745j4) || !c2745j4.equals(c2745j5)) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(c2872z4.toString()));
        }
    }

    public final InterfaceC2603n t(InterfaceC2603n interfaceC2603n) {
        return ((x0) this.f27225I).D(this, interfaceC2603n);
    }

    public final void u(C2761l4 c2761l4) throws GeneralSecurityException {
        A4 a8 = new A4(c2761l4.f23947a, c2761l4.f23948b);
        if (!((Map) this.f27224H).containsKey(a8)) {
            ((Map) this.f27224H).put(a8, c2761l4);
            return;
        }
        C2761l4 c2761l5 = (C2761l4) ((Map) this.f27224H).get(a8);
        if (!c2761l5.equals(c2761l4) || !c2761l4.equals(c2761l5)) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(a8.toString()));
        }
    }

    public final InterfaceC2603n v(C2543d c2543d) {
        InterfaceC2603n interfaceC2603nD = InterfaceC2603n.f23213s;
        Iterator itQ = c2543d.q();
        while (itQ.hasNext()) {
            interfaceC2603nD = ((x0) this.f27225I).D(this, c2543d.o(((Integer) itQ.next()).intValue()));
            if (interfaceC2603nD instanceof C2555f) {
                break;
            }
        }
        return interfaceC2603nD;
    }

    public final void w(C2832u4 c2832u4) throws GeneralSecurityException {
        C2872z4 c2872z4 = new C2872z4(c2832u4.f24024a, c2832u4.f24025b);
        if (!((Map) this.f27227K).containsKey(c2872z4)) {
            ((Map) this.f27227K).put(c2872z4, c2832u4);
            return;
        }
        C2832u4 c2832u5 = (C2832u4) ((Map) this.f27227K).get(c2872z4);
        if (!c2832u5.equals(c2832u4) || !c2832u4.equals(c2832u5)) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(c2872z4.toString()));
        }
    }

    public final InterfaceC2603n x(String str) {
        Map map = (Map) this.f27226J;
        if (map.containsKey(str)) {
            return (InterfaceC2603n) map.get(str);
        }
        i iVar = (i) this.f27224H;
        if (iVar != null) {
            return iVar.x(str);
        }
        throw new IllegalArgumentException(U2.A(str, " is not defined"));
    }

    public final void y(C2840v4 c2840v4) throws GeneralSecurityException {
        A4 a8 = new A4(c2840v4.f24048a, c2840v4.f24049b);
        if (!((Map) this.f27226J).containsKey(a8)) {
            ((Map) this.f27226J).put(a8, c2840v4);
            return;
        }
        C2840v4 c2840v5 = (C2840v4) ((Map) this.f27226J).get(a8);
        if (!c2840v5.equals(c2840v4) || !c2840v4.equals(c2840v5)) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(a8.toString()));
        }
    }

    public final void z(String str, InterfaceC2603n interfaceC2603n) {
        if (((Map) this.f27227K).containsKey(str)) {
            return;
        }
        if (interfaceC2603n == null) {
            ((Map) this.f27226J).remove(str);
        } else {
            ((Map) this.f27226J).put(str, interfaceC2603n);
        }
    }

    public /* synthetic */ i(ConcurrentMap concurrentMap, A3 a8, M4 m7, Class cls) {
        this.f27223G = 10;
        this.f27224H = concurrentMap;
        this.f27225I = a8;
        this.f27226J = cls;
        this.f27227K = m7;
    }

    public i(i iVar, x0 x0Var) {
        this.f27223G = 9;
        this.f27226J = new HashMap();
        this.f27227K = new HashMap();
        this.f27224H = iVar;
        this.f27225I = x0Var;
    }

    public i(B4 b8) {
        this.f27223G = 11;
        this.f27224H = new HashMap(b8.f23466a);
        this.f27225I = new HashMap(b8.f23467b);
        this.f27226J = new HashMap(b8.f23468c);
        this.f27227K = new HashMap(b8.f23469d);
    }

    public i(x xVar) {
        this.f27223G = 0;
        this.f27224H = xVar;
        this.f27225I = new b(this, xVar, 2);
        this.f27226J = new h(this, xVar, 0);
        this.f27227K = new h(this, xVar, 1);
    }

    public i(O2 o4, S2 s7, Object obj) {
        this.f27223G = 13;
        this.f27224H = o4;
        this.f27225I = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f27226J = s7;
        this.f27227K = obj;
    }

    public i(Random random) {
        this.f27223G = 3;
        this.f27226J = new HashMap();
        this.f27227K = random;
        this.f27224H = new HashMap();
        this.f27225I = new HashMap();
    }

    public i(List list) {
        int i8;
        this.f27223G = 4;
        this.f27224H = new E();
        this.f27225I = new E();
        p188y1.a aVar = new p188y1.a();
        this.f27226J = aVar;
        String strTrim = new String((byte[]) list.get(0), StandardCharsets.UTF_8).trim();
        String str = M.f28050a;
        for (String str2 : strTrim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] strArrSplit = str2.substring(9).split(",", -1);
                aVar.f31232d = new int[strArrSplit.length];
                for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                    int[] iArr = aVar.f31232d;
                    try {
                        i8 = Integer.parseInt(strArrSplit[i9].trim(), 16);
                    } catch (RuntimeException unused) {
                        i8 = 0;
                    }
                    iArr[i9] = i8;
                }
            } else if (str2.startsWith("size: ")) {
                String[] strArrSplit2 = str2.substring(6).trim().split("x", -1);
                if (strArrSplit2.length == 2) {
                    try {
                        aVar.f31233e = Integer.parseInt(strArrSplit2[0]);
                        aVar.f31234f = Integer.parseInt(strArrSplit2[1]);
                        aVar.f31230b = true;
                    } catch (RuntimeException e8) {
                        p117p0.x.g("VobsubParser", "Parsing IDX failed", e8);
                    }
                }
            }
        }
    }

    public i(Context context, ActionMode.Callback callback) {
        this.f27223G = 1;
        this.f27225I = context;
        this.f27224H = callback;
        this.f27226J = new ArrayList();
        this.f27227K = new p132r.m();
    }
}
