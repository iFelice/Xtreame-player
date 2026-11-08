package p096m2;

import A0.O;
import A1.B;
import C0.C0083h;
import D0.AbstractC0134y;
import D0.C0116f;
import D0.X;
import D6.l;
import F2.C0194d;
import F2.w;
import G0.C0200b;
import G0.HandlerC0199a;
import J.b;
import M.c;
import N.C0260i;
import O0.C0292p;
import O0.a0;
import P1.x;
import P1.z;
import Q.g;
import W0.C0381n;
import W0.L;
import W0.s;
import W0.t;
import W0.v;
import Y.M;
import Z3.C;
import android.animation.Animator;
import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.data.n;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.nio.ByteBuffer;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.HttpUrl;
import p032e0.E;
import p032e0.EnumC2981i;
import p032e0.G;
import p032e0.I;
import p032e0.K;
import p032e0.m;
import p039f.U;
import p086l.C3063y;
import p094m0.C3135s;
import p094m0.C3136t;
import p102n0.j;
import p113o3.r;
import p117p0.J;
import p119p2.a;
import p120p3.e;
import p135r2.h;
import p135r2.i;
import p135r2.o;
import p141s0.InterfaceC3184i;
import p170w.d;
import p190y4.k;
import p193z.f;
import y2.D;
import z4.F;
import z4.H;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class u implements g, P.g, b, B, a, I2.a, c {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static u f27276K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27277G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27278H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27279I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f27280J;

    public u(int i8) {
        this.f27277G = i8;
        if (i8 != 21) {
            return;
        }
        this.f27278H = Collections.emptyList();
        this.f27279I = Collections.emptyList();
    }

    public static u J(Context context, AttributeSet attributeSet, int[] iArr, int i8, int i9) {
        return new u(context, context.obtainStyledAttributes(attributeSet, iArr, i8, i9));
    }

    public final String A(int i8) {
        return ((TypedArray) this.f27279I).getString(i8);
    }

    public final ArrayList B(String str) {
        z zVarN = z.N(1, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        ((x) this.f27278H).b();
        Cursor cursorH = C.h((x) this.f27278H, zVarN);
        try {
            ArrayList arrayList = new ArrayList(cursorH.getCount());
            while (cursorH.moveToNext()) {
                arrayList.add(cursorH.isNull(0) ? null : cursorH.getString(0));
            }
            return arrayList;
        } finally {
            cursorH.close();
            zVarN.O();
        }
    }

    public final CharSequence C(int i8) {
        return ((TypedArray) this.f27279I).getText(i8);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x006f. Please report as an issue. */
    public final G D(D6.c cVar, String str) {
        boolean zIsInstance;
        G m7;
        G m8;
        q0.h(str, "key");
        K k8 = (K) this.f27278H;
        k8.getClass();
        G g8 = (G) k8.f24730a.get(str);
        Class clsR = cVar.f2430a;
        q0.h(clsR, "jClass");
        Map map = D6.c.f2428b;
        q0.f(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        Integer num = (Integer) map.get(clsR);
        if (num != null) {
            zIsInstance = k.Q(num.intValue(), g8);
        } else {
            if (clsR.isPrimitive()) {
                clsR = q0.r(l.a(clsR));
            }
            zIsInstance = clsR.isInstance(g8);
        }
        if (zIsInstance) {
            q0.f(g8, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
            return g8;
        }
        p040f0.c cVar2 = new p040f0.c((p040f0.b) this.f27280J);
        cVar2.f25133a.put(p048g0.b.f25296a, str);
        I i8 = (I) this.f27279I;
        q0.h(i8, "factory");
        try {
            F2.G g9 = (F2.G) i8;
            switch (g9.f3116G) {
            }
            m7 = U2.a(g9, cVar, cVar2);
        } catch (AbstractMethodError unused) {
            try {
                q0.f(cVar.a(), "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
                int i9 = ((F2.G) i8).f3116G;
                switch (i9) {
                    case 0:
                        switch (i9) {
                            case 0:
                                m8 = new M(true);
                                break;
                            case 1:
                                throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
                            default:
                                m8 = new p056h0.a();
                                break;
                        }
                        break;
                    case 1:
                        m8 = new E();
                        break;
                    default:
                        switch (i9) {
                            case 0:
                                m8 = new M(true);
                                break;
                            case 1:
                                throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
                            default:
                                m8 = new p056h0.a();
                                break;
                        }
                        break;
                }
                m7 = m8;
            } catch (AbstractMethodError unused2) {
                q0.f(cVar.a(), "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
                switch (((F2.G) i8).f3116G) {
                    case 0:
                        m7 = new M(true);
                        break;
                    case 1:
                        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
                    default:
                        m7 = new p056h0.a();
                        break;
                }
            }
        }
        K k9 = (K) this.f27278H;
        k9.getClass();
        G g10 = (G) k9.f24730a.put(str, m7);
        if (g10 != null) {
            g10.a();
        }
        return m7;
    }

    public final boolean E() throws IOException {
        String strTrim;
        if (((String) this.f27280J) != null) {
            return true;
        }
        if (!((Queue) this.f27279I).isEmpty()) {
            String str = (String) ((Queue) this.f27279I).poll();
            str.getClass();
            this.f27280J = str;
            return true;
        }
        do {
            String line = ((BufferedReader) this.f27278H).readLine();
            this.f27280J = line;
            if (line == null) {
                return false;
            }
            strTrim = line.trim();
            this.f27280J = strTrim;
        } while (strTrim.isEmpty());
        return true;
    }

    public final boolean F(int i8) {
        return ((TypedArray) this.f27279I).hasValue(i8);
    }

    public final void G(InterfaceC3184i interfaceC3184i, Uri uri, Map map, long j8, long j9, W0.u uVar) throws a0 {
        boolean z7;
        C0381n c0381n = new C0381n(interfaceC3184i, j8, j9);
        this.f27280J = c0381n;
        if (((s) this.f27279I) != null) {
            return;
        }
        s[] sVarArrA = ((v) this.f27278H).a(uri, map);
        z4.E eR = H.r(sVarArrA.length);
        boolean z8 = true;
        if (sVarArrA.length == 1) {
            this.f27279I = sVarArrA[0];
        } else {
            for (s sVar : sVarArrA) {
                try {
                    if (sVar.g(c0381n)) {
                        this.f27279I = sVar;
                        c0381n.f7446f = 0;
                        break;
                    } else {
                        eR.j0(sVar.j());
                        z7 = ((s) this.f27279I) != null || c0381n.f7444d == j8;
                    }
                } catch (EOFException unused) {
                    z7 = ((s) this.f27279I) != null || c0381n.f7444d == j8;
                } catch (Throwable th) {
                    if (((s) this.f27279I) == null && c0381n.f7444d != j8) {
                        z8 = false;
                    }
                    H1.i(z8);
                    c0381n.f7446f = 0;
                    throw th;
                }
                H1.i(z7);
                c0381n.f7446f = 0;
            }
            if (((s) this.f27279I) == null) {
                StringBuilder sb = new StringBuilder("None of the available extractors (");
                e eVar = new e(", ");
                Iterator it = r.i(new C0083h(6), H.t(sVarArrA)).iterator();
                StringBuilder sb2 = new StringBuilder();
                eVar.a(sb2, it);
                sb.append(sb2.toString());
                sb.append(") could read the stream.");
                String string = sb.toString();
                uri.getClass();
                d0 d0VarM0 = eR.m0();
                a0 a0Var = new a0(string, null, false, 1);
                H.s(d0VarM0);
                throw a0Var;
            }
        }
        ((s) this.f27279I).d(uVar);
    }

    public final boolean H(int i8, d dVar, f fVar) {
        p178x.b bVar = (p178x.b) this.f27279I;
        int[] iArr = dVar.f30847o0;
        bVar.f31115a = iArr[0];
        bVar.f31116b = iArr[1];
        bVar.f31117c = dVar.o();
        ((p178x.b) this.f27279I).f31118d = dVar.i();
        p178x.b bVar2 = (p178x.b) this.f27279I;
        bVar2.f31123i = false;
        bVar2.f31124j = i8;
        boolean z7 = bVar2.f31115a == 3;
        boolean z8 = bVar2.f31116b == 3;
        boolean z9 = z7 && dVar.f30813V > 0.0f;
        boolean z10 = z8 && dVar.f30813V > 0.0f;
        int[] iArr2 = dVar.f30852t;
        if (z9 && iArr2[0] == 4) {
            bVar2.f31115a = 1;
        }
        if (z10 && iArr2[1] == 4) {
            bVar2.f31116b = 1;
        }
        fVar.b(dVar, bVar2);
        dVar.K(((p178x.b) this.f27279I).f31119e);
        dVar.H(((p178x.b) this.f27279I).f31120f);
        Object obj = this.f27279I;
        p178x.b bVar3 = (p178x.b) obj;
        dVar.f30796E = bVar3.f31122h;
        int i9 = bVar3.f31121g;
        dVar.f30817Z = i9;
        dVar.f30796E = i9 > 0;
        p178x.b bVar4 = (p178x.b) obj;
        bVar4.f31124j = 0;
        return bVar4.f31123i;
    }

    public final String I() {
        if (!E()) {
            throw new NoSuchElementException();
        }
        String str = (String) this.f27280J;
        this.f27280J = null;
        return str;
    }

    public final boolean K() {
        Iterator it = ((CopyOnWriteArrayList) this.f27279I).iterator();
        while (it.hasNext()) {
            if (((Y.E) it.next()).f7699a.o()) {
                return true;
            }
        }
        return false;
    }

    public final void L(Exception exc, boolean z7) {
        this.f27279I = null;
        H hS = H.s((Set) this.f27278H);
        ((Set) this.f27278H).clear();
        F fListIterator = hS.listIterator(0);
        while (fListIterator.hasNext()) {
            G0.d dVar = (G0.d) fListIterator.next();
            dVar.getClass();
            dVar.j(z7 ? 1 : 3, exc);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:64:0x011d  */
    /* JADX WARN: Code duplicated, block: B:68:0x0147 A[LOOP:0: B:3:0x0006->B:68:0x0147, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:86:0x0165 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x018a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:68:0x0147, please report this as an issue */
    public final i M(p135r2.k kVar) throws o {
        boolean z7;
        String str;
        int i8;
        F.i iVar;
        i iVar2;
        Object obj;
        A2.i iVar3;
        int i9;
        o oVar;
        int i10;
        Map mapEmptyMap;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            Collections.emptyList();
            A1.H h8 = null;
            try {
                p135r2.b bVar = kVar.f29824R;
                if (bVar == null) {
                    try {
                        mapEmptyMap = Collections.emptyMap();
                    } catch (IOException e8) {
                        e = e8;
                        if (e instanceof SocketTimeoutException) {
                            iVar = new F.i("socket", new h());
                        } else {
                            z7 = e instanceof MalformedURLException;
                            str = kVar.f29815I;
                            if (z7) {
                                throw new RuntimeException("Bad URL " + str, e);
                            }
                            if (h8 == null) {
                                throw new p135r2.d(e);
                            }
                            i8 = h8.f301a;
                            p135r2.r.c("Unexpected response code %d for %s", Integer.valueOf(i8), str);
                            if (h8 != 0) {
                                iVar2 = new i(i8, (byte[]) 0, false, SystemClock.elapsedRealtime() - jElapsedRealtime, Collections.unmodifiableList(h8.f302b));
                                if (i8 == 401) {
                                }
                                iVar = new F.i("auth", new p135r2.a(iVar2));
                            } else {
                                iVar = new F.i("network", new h());
                            }
                        }
                        obj = iVar.f2977H;
                        iVar3 = kVar.f29823Q;
                        i9 = iVar3.f630a;
                        try {
                            oVar = (o) iVar.f2978I;
                            i10 = iVar3.f631b + 1;
                            iVar3.f631b = i10;
                            iVar3.f630a = ((int) (i9 * 1.0f)) + i9;
                            if (i10 > iVar3.f632c) {
                                throw oVar;
                            }
                            kVar.a(((String) obj) + "-retry [timeout=" + i9 + "]");
                        } catch (o e9) {
                            kVar.a(((String) obj) + "-timeout-giveup [timeout=" + i9 + "]");
                            throw e9;
                        }
                    }
                } else {
                    HashMap map = new HashMap();
                    String str2 = bVar.f29782b;
                    if (str2 != null) {
                        map.put("If-None-Match", str2);
                    }
                    long j8 = bVar.f29784d;
                    if (j8 > 0) {
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                        map.put("If-Modified-Since", simpleDateFormat.format(new Date(j8)));
                    }
                    mapEmptyMap = map;
                }
                try {
                    A1.H hO = ((H1) this.f27279I).o(kVar, mapEmptyMap);
                    try {
                        int i11 = hO.f301a;
                        List listUnmodifiableList = Collections.unmodifiableList(hO.f302b);
                        if (i11 == 304) {
                            return com.bumptech.glide.d.l(kVar, SystemClock.elapsedRealtime() - jElapsedRealtime, listUnmodifiableList);
                        }
                        InputStream inputStreamA = hO.a();
                        byte[] bArrM = inputStreamA != null ? com.bumptech.glide.d.m(inputStreamA, hO.f303c, (p143s2.a) this.f27280J) : new byte[0];
                        com.bumptech.glide.d.o(SystemClock.elapsedRealtime() - jElapsedRealtime, kVar, bArrM, i11);
                        if (i11 < 200 || i11 > 299) {
                            throw new IOException();
                        }
                        return new i(i11, bArrM, false, SystemClock.elapsedRealtime() - jElapsedRealtime, listUnmodifiableList);
                    } catch (IOException e10) {
                        e = e10;
                        h8 = hO;
                        if (e instanceof SocketTimeoutException) {
                            iVar = new F.i("socket", new h());
                        } else {
                            z7 = e instanceof MalformedURLException;
                            str = kVar.f29815I;
                            if (z7) {
                                throw new RuntimeException("Bad URL " + str, e);
                            }
                            if (h8 == null) {
                                throw new p135r2.d(e);
                            }
                            i8 = h8.f301a;
                            p135r2.r.c("Unexpected response code %d for %s", Integer.valueOf(i8), str);
                            if (h8 != 0) {
                                iVar2 = new i(i8, (byte[]) 0, false, SystemClock.elapsedRealtime() - jElapsedRealtime, Collections.unmodifiableList(h8.f302b));
                                if (i8 == 401) {
                                }
                                iVar = new F.i("auth", new p135r2.a(iVar2));
                            } else {
                                iVar = new F.i("network", new h());
                            }
                        }
                        obj = iVar.f2977H;
                        iVar3 = kVar.f29823Q;
                        i9 = iVar3.f630a;
                        oVar = (o) iVar.f2978I;
                        i10 = iVar3.f631b + 1;
                        iVar3.f631b = i10;
                        iVar3.f630a = ((int) (i9 * 1.0f)) + i9;
                        if (i10 > iVar3.f632c) {
                            throw oVar;
                        }
                        kVar.a(((String) obj) + "-retry [timeout=" + i9 + "]");
                    }
                } catch (IOException e11) {
                    e = e11;
                    if (e instanceof SocketTimeoutException) {
                        iVar = new F.i("socket", new h());
                    } else {
                        z7 = e instanceof MalformedURLException;
                        str = kVar.f29815I;
                        if (z7) {
                            throw new RuntimeException("Bad URL " + str, e);
                        }
                        if (h8 == null) {
                            throw new p135r2.d(e);
                        }
                        i8 = h8.f301a;
                        p135r2.r.c("Unexpected response code %d for %s", Integer.valueOf(i8), str);
                        if (h8 != 0) {
                            iVar2 = new i(i8, (byte[]) 0, false, SystemClock.elapsedRealtime() - jElapsedRealtime, Collections.unmodifiableList(h8.f302b));
                            if (i8 == 401 && i8 != 403) {
                                if (i8 < 400 || i8 > 499) {
                                    throw new h(iVar2);
                                }
                                throw new p135r2.d(iVar2);
                            }
                            iVar = new F.i("auth", new p135r2.a(iVar2));
                        } else {
                            iVar = new F.i("network", new h());
                        }
                    }
                    obj = iVar.f2977H;
                    iVar3 = kVar.f29823Q;
                    i9 = iVar3.f630a;
                    oVar = (o) iVar.f2978I;
                    i10 = iVar3.f631b + 1;
                    iVar3.f631b = i10;
                    iVar3.f630a = ((int) (i9 * 1.0f)) + i9;
                    if (i10 > iVar3.f632c) {
                        throw oVar;
                    }
                    kVar.a(((String) obj) + "-retry [timeout=" + i9 + "]");
                }
            } catch (IOException e12) {
                e = e12;
            }
            kVar.a(((String) obj) + "-retry [timeout=" + i9 + "]");
        }
    }

    public final void N(EnumC2981i enumC2981i) {
        p032e0.F f8 = (p032e0.F) this.f27280J;
        if (f8 != null) {
            f8.run();
        }
        p032e0.F f9 = new p032e0.F((p032e0.o) this.f27278H, enumC2981i);
        this.f27280J = f9;
        ((Handler) this.f27279I).postAtFrontOfQueue(f9);
    }

    public final void O(G0.d dVar) {
        ((Set) this.f27278H).add(dVar);
        if (((G0.d) this.f27279I) != null) {
            return;
        }
        this.f27279I = dVar;
        G0.v vVarC = dVar.f3310b.c();
        dVar.f3333y = vVarC;
        HandlerC0199a handlerC0199a = dVar.f3327s;
        String str = p117p0.M.f28050a;
        vVarC.getClass();
        handlerC0199a.getClass();
        handlerC0199a.obtainMessage(1, new C0200b(C0292p.f5227c.getAndIncrement(), true, SystemClock.elapsedRealtime(), vVarC)).sendToTarget();
    }

    public final void P() {
        ((TypedArray) this.f27279I).recycle();
    }

    public final void Q() {
        switch (this.f27277G) {
            case 15:
                AudioTrack audioTrack = (AudioTrack) this.f27278H;
                AudioRouting.OnRoutingChangedListener onRoutingChangedListener = (AudioRouting.OnRoutingChangedListener) this.f27280J;
                onRoutingChangedListener.getClass();
                audioTrack.removeOnRoutingChangedListener(AbstractC0134y.f(onRoutingChangedListener));
                this.f27280J = null;
                break;
            default:
                s sVar = (s) this.f27279I;
                if (sVar != null) {
                    sVar.release();
                    this.f27279I = null;
                }
                this.f27280J = null;
                break;
        }
    }

    public final void R(String str) {
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f27278H = str;
    }

    public final void S(R2.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("Null priority");
        }
        this.f27280J = cVar;
    }

    public final void T(p170w.e eVar, int i8, int i9, int i10) {
        eVar.getClass();
        int i11 = eVar.f30819a0;
        int i12 = eVar.f30821b0;
        eVar.f30819a0 = 0;
        eVar.f30821b0 = 0;
        eVar.K(i9);
        eVar.H(i10);
        if (i11 < 0) {
            eVar.f30819a0 = 0;
        } else {
            eVar.f30819a0 = i11;
        }
        if (i12 < 0) {
            eVar.f30821b0 = 0;
        } else {
            eVar.f30821b0 = i12;
        }
        p170w.e eVar2 = (p170w.e) this.f27280J;
        eVar2.f30872s0 = i8;
        eVar2.N();
    }

    public final void U() {
        Integer num;
        p016c.e eVar = (p016c.e) this.f27280J;
        String str = (String) this.f27278H;
        if (!eVar.f10549e.contains(str) && (num = (Integer) eVar.f10547c.remove(str)) != null) {
            eVar.f10546b.remove(num);
        }
        eVar.f10550f.remove(str);
        HashMap map = eVar.f10551g;
        if (map.containsKey(str)) {
            StringBuilder sbP = U2.p("Dropping pending result for request ", str, ": ");
            sbP.append(map.get(str));
            Log.w("ActivityResultRegistry", sbP.toString());
            map.remove(str);
        }
        Bundle bundle = eVar.f10552h;
        if (bundle.containsKey(str)) {
            StringBuilder sbP2 = U2.p("Dropping pending result for request ", str, ": ");
            sbP2.append(bundle.getParcelable(str));
            Log.w("ActivityResultRegistry", sbP2.toString());
            bundle.remove(str);
        }
        O.I(eVar.f10548d.get(str));
    }

    public final void V(p170w.e eVar) {
        ((ArrayList) this.f27278H).clear();
        int size = eVar.f30889p0.size();
        for (int i8 = 0; i8 < size; i8++) {
            d dVar = (d) eVar.f30889p0.get(i8);
            int[] iArr = dVar.f30847o0;
            if (iArr[0] == 3 || iArr[1] == 3) {
                ((ArrayList) this.f27278H).add(dVar);
            }
        }
        eVar.f30871r0.f31127a = true;
    }

    @Override // M.c
    public final boolean a(Object obj) {
        if (obj instanceof Q2.b) {
            ((Q2.b) obj).c().f6033a = true;
        }
        switch (((F2.G) ((Q2.c) this.f27279I)).f3116G) {
            case 11:
                break;
            default:
                ((List) obj).clear();
                break;
        }
        return ((c) this.f27280J).a(obj);
    }

    @Override // A1.B
    public final void b(p117p0.E e8) {
        long jD;
        H1.j((J) this.f27279I);
        String str = p117p0.M.f28050a;
        J j8 = (J) this.f27279I;
        synchronized (j8) {
            try {
                long j9 = j8.f28046c;
                jD = j9 != -9223372036854775807L ? j9 + j8.f28045b : j8.d();
            } catch (Throwable th) {
                throw th;
            }
        }
        long jE = ((J) this.f27279I).e();
        if (jD == -9223372036854775807L || jE == -9223372036854775807L) {
            return;
        }
        C3136t c3136t = (C3136t) this.f27278H;
        if (jE != c3136t.f27046t) {
            C3135s c3135sA = c3136t.a();
            c3135sA.f27001s = jE;
            C3136t c3136t2 = new C3136t(c3135sA);
            this.f27278H = c3136t2;
            ((L) this.f27280J).b(c3136t2);
        }
        int iA = e8.a();
        ((L) this.f27280J).e(iA, e8);
        ((L) this.f27280J).d(jD, 1, iA, 0, null);
    }

    @Override // P.g
    public final Uri c() {
        return (Uri) this.f27278H;
    }

    @Override // A1.B
    public final void d(J j8, W0.u uVar, A1.I i8) {
        this.f27279I = j8;
        i8.a();
        i8.b();
        L lT = uVar.t(i8.f309d, 5);
        this.f27280J = lT;
        lT.b((C3136t) this.f27278H);
    }

    @Override // J.b
    public final void e() {
        ((Animator) this.f27278H).end();
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Animator from operation " + ((Y.d0) this.f27279I) + " has been canceled.");
        }
    }

    @Override // P.g
    public final Uri g() {
        return (Uri) this.f27280J;
    }

    @Override // P.g
    public final ClipDescription getDescription() {
        return (ClipDescription) this.f27279I;
    }

    @Override // M.c
    public final Object h() {
        Object objH = ((c) this.f27280J).h();
        if (objH == null) {
            objH = ((Q2.a) this.f27278H).m();
            if (Log.isLoggable("FactoryPools", 2)) {
                Log.v("FactoryPools", "Created new " + objH.getClass());
            }
        }
        if (objH instanceof Q2.b) {
            ((Q2.b) objH).c().f6033a = false;
        }
        return objH;
    }

    @Override // P.g
    public final Object i() {
        return null;
    }

    public final U2.i j() {
        String strConcat = ((String) this.f27278H) == null ? " backendName" : HttpUrl.FRAGMENT_ENCODE_SET;
        if (((R2.c) this.f27280J) == null) {
            strConcat = strConcat.concat(" priority");
        }
        if (strConcat.isEmpty()) {
            return new U2.i((String) this.f27278H, (byte[]) this.f27279I, (R2.c) this.f27280J);
        }
        throw new IllegalStateException("Missing required properties:".concat(strConcat));
    }

    @Override // I2.a
    public final D k(D d6, p173w2.l lVar) {
        Drawable drawable = (Drawable) d6.get();
        if (drawable instanceof BitmapDrawable) {
            return ((I2.a) this.f27279I).k(C0194d.c(((BitmapDrawable) drawable).getBitmap(), (p196z2.d) this.f27278H), lVar);
        }
        if (drawable instanceof H2.c) {
            return ((I2.a) this.f27280J).k(d6, lVar);
        }
        return null;
    }

    public final Bitmap l(BitmapFactory.Options options) {
        switch (this.f27277G) {
            case 24:
                return BitmapFactory.decodeStream(new P2.a(P2.c.c((ByteBuffer) this.f27278H)), null, options);
            case 25:
                w wVar = (w) ((n) this.f27278H).f11590b;
                wVar.reset();
                return BitmapFactory.decodeStream(wVar, null, options);
            default:
                return BitmapFactory.decodeFileDescriptor(((n) this.f27280J).b().getFileDescriptor(), null, options);
        }
    }

    public final void m(Runnable runnable) {
        ((p104n2.o) this.f27278H).execute(runnable);
    }

    public final boolean n(int i8, boolean z7) {
        return ((TypedArray) this.f27279I).getBoolean(i8, z7);
    }

    public final ColorStateList o(int i8) {
        int resourceId;
        ColorStateList colorStateListG;
        return (!((TypedArray) this.f27279I).hasValue(i8) || (resourceId = ((TypedArray) this.f27279I).getResourceId(i8, 0)) == 0 || (colorStateListG = J6.r.g((Context) this.f27278H, resourceId)) == null) ? ((TypedArray) this.f27279I).getColorStateList(i8) : colorStateListG;
    }

    public final long p() {
        Object obj = this.f27280J;
        if (((t) obj) != null) {
            return ((t) obj).r();
        }
        return -1L;
    }

    public final int q(int i8, int i9) {
        return ((TypedArray) this.f27279I).getDimensionPixelOffset(i8, i9);
    }

    public final int r(int i8, int i9) {
        return ((TypedArray) this.f27279I).getDimensionPixelSize(i8, i9);
    }

    public final Drawable s(int i8) {
        int resourceId;
        return (!((TypedArray) this.f27279I).hasValue(i8) || (resourceId = ((TypedArray) this.f27279I).getResourceId(i8, 0)) == 0) ? ((TypedArray) this.f27279I).getDrawable(i8) : J6.r.h((Context) this.f27278H, resourceId);
    }

    public final Drawable t(int i8) {
        int resourceId;
        Drawable drawableG;
        if (!((TypedArray) this.f27279I).hasValue(i8) || (resourceId = ((TypedArray) this.f27279I).getResourceId(i8, 0)) == 0) {
            return null;
        }
        C3063y c3063yA = C3063y.a();
        Context context = (Context) this.f27278H;
        synchronized (c3063yA) {
            drawableG = c3063yA.f26420a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public final String toString() {
        switch (this.f27277G) {
            case 5:
                String string = "[ ";
                if (((p156u.i) this.f27278H) != null) {
                    for (int i8 = 0; i8 < 9; i8++) {
                        StringBuilder sbO = U2.o(string);
                        sbO.append(((p156u.i) this.f27278H).f30369N[i8]);
                        sbO.append(" ");
                        string = sbO.toString();
                    }
                }
                StringBuilder sbL = p000a.r.l(string, "] ");
                sbL.append((p156u.i) this.f27278H);
                return sbL.toString();
            default:
                return super.toString();
        }
    }

    public final s u(Object... objArr) {
        Constructor constructorF;
        synchronized (((AtomicBoolean) this.f27279I)) {
            if (((AtomicBoolean) this.f27279I).get()) {
                constructorF = (Constructor) this.f27280J;
            } else {
                try {
                    try {
                        constructorF = ((C0260i) ((W0.o) this.f27278H)).f();
                    } catch (ClassNotFoundException unused) {
                        ((AtomicBoolean) this.f27279I).set(true);
                        constructorF = (Constructor) this.f27280J;
                    }
                } catch (Exception e8) {
                    throw new RuntimeException("Error instantiating extension", e8);
                }
            }
        }
        if (constructorF == null) {
            return null;
        }
        try {
            return (s) constructorF.newInstance(objArr);
        } catch (Exception e9) {
            throw new IllegalStateException("Unexpected error creating extractor", e9);
        }
    }

    public final Typeface v(int i8, int i9, p016c.g gVar) {
        int resourceId = ((TypedArray) this.f27279I).getResourceId(i8, 0);
        if (resourceId == 0) {
            return null;
        }
        if (((TypedValue) this.f27280J) == null) {
            this.f27280J = new TypedValue();
        }
        Context context = (Context) this.f27278H;
        TypedValue typedValue = (TypedValue) this.f27280J;
        ThreadLocal threadLocal = F.n.f2990a;
        if (context.isRestricted()) {
            return null;
        }
        return F.n.c(context, resourceId, typedValue, i9, gVar, true);
    }

    public final ImageHeaderParser$ImageType w() throws Throwable {
        switch (this.f27277G) {
            case 24:
                return Q3.b.k((List) this.f27279I, P2.c.c((ByteBuffer) this.f27278H));
            case 25:
                List list = (List) this.f27280J;
                w wVar = (w) ((n) this.f27278H).f11590b;
                wVar.reset();
                return Q3.b.l((p196z2.h) this.f27279I, wVar, list);
            default:
                List list2 = (List) this.f27279I;
                e eVar = new e(8, (n) this.f27280J, (p196z2.h) this.f27278H);
                int size = list2.size();
                for (int i8 = 0; i8 < size; i8++) {
                    ImageHeaderParser$ImageType imageHeaderParser$ImageTypeA = eVar.A((p173w2.f) list2.get(i8));
                    if (imageHeaderParser$ImageTypeA != ImageHeaderParser$ImageType.UNKNOWN) {
                        return imageHeaderParser$ImageTypeA;
                    }
                }
                return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public final int x(int i8, int i9) {
        return ((TypedArray) this.f27279I).getInt(i8, i9);
    }

    public final Location y(String str) {
        try {
            if (((LocationManager) this.f27279I).isProviderEnabled(str)) {
                return ((LocationManager) this.f27279I).getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e8) {
            Log.d("TwilightManager", "Failed to get last known location", e8);
            return null;
        }
    }

    public final int z(int i8, int i9) {
        return ((TypedArray) this.f27279I).getResourceId(i8, i9);
    }

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i8) {
        this.f27277G = i8;
        this.f27280J = obj;
        this.f27278H = obj2;
        this.f27279I = obj3;
    }

    public /* synthetic */ u(Object obj, Object obj2, Object obj3, int i8, int i9) {
        this.f27277G = i8;
        this.f27278H = obj;
        this.f27279I = obj2;
        this.f27280J = obj3;
    }

    public u(Locale locale) {
        this.f27277G = 10;
        this.f27278H = locale;
        this.f27279I = DateFormatSymbols.getInstance(locale).getShortMonths();
        Calendar calendar = Calendar.getInstance(locale);
        int minimum = calendar.getMinimum(5);
        int maximum = calendar.getMaximum(5);
        String[] strArr = new String[(maximum - minimum) + 1];
        for (int i8 = minimum; i8 <= maximum; i8++) {
            strArr[i8 - minimum] = String.format("%02d", Integer.valueOf(i8));
        }
        this.f27280J = strArr;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(p143s2.f fVar) {
        this(fVar, new p143s2.a());
        this.f27277G = 23;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public u(p102n0.g[] gVarArr) {
        this(gVarArr, new X(), new j());
        this.f27277G = 14;
    }

    public u(x xVar) {
        this.f27277G = 0;
        this.f27278H = xVar;
        this.f27279I = new b(this, xVar, 6);
        this.f27280J = new h(this, xVar, 2);
    }

    @Override // P.g
    public final void f() {
    }

    public u(m mVar) {
        this.f27277G = 11;
        q0.h(mVar, "provider");
        this.f27278H = new p032e0.o(mVar);
        this.f27279I = new Handler();
    }

    public u(K k8, F2.G g8, p040f0.b bVar) {
        this.f27277G = 12;
        q0.h(k8, "store");
        q0.h(bVar, "extras");
        this.f27278H = k8;
        this.f27279I = g8;
        this.f27280J = bVar;
    }

    public u(ExecutorService executorService) {
        this.f27277G = 22;
        this.f27279I = new Handler(Looper.getMainLooper());
        this.f27280J = new p119p2.b(this, 0);
        this.f27278H = new p104n2.o(executorService);
    }

    public u(p156u.g gVar, p156u.g gVar2) {
        this.f27277G = 5;
        this.f27280J = gVar;
        this.f27279I = gVar2;
    }

    public u(String str) {
        this.f27277G = 20;
        C3135s c3135s = new C3135s();
        c3135s.f26995m = p094m0.O.p("video/mp2t");
        c3135s.f26996n = p094m0.O.p(str);
        this.f27278H = new C3136t(c3135s);
    }

    public u(v vVar) {
        this.f27277G = 18;
        this.f27278H = vVar;
    }

    public u(Runnable runnable) {
        this.f27277G = 7;
        this.f27279I = new CopyOnWriteArrayList();
        this.f27280J = new HashMap();
        this.f27278H = runnable;
    }

    public u(Context context, TypedArray typedArray) {
        this.f27277G = 4;
        this.f27278H = context;
        this.f27279I = typedArray;
    }

    public u(Context context, LocationManager locationManager) {
        this.f27277G = 3;
        this.f27280J = new U();
        this.f27278H = context;
        this.f27279I = locationManager;
    }

    public u(p170w.e eVar) {
        this.f27277G = 6;
        this.f27278H = new ArrayList();
        this.f27279I = new p178x.b();
        this.f27280J = eVar;
    }

    public u(p143s2.f fVar, p143s2.a aVar) {
        this.f27277G = 23;
        this.f27279I = fVar;
        this.f27278H = fVar;
        this.f27280J = aVar;
    }

    public u(p196z2.h hVar, P2.l lVar, List list) {
        this.f27277G = 25;
        p102n0.c.c(hVar, "Argument must not be null");
        this.f27279I = hVar;
        p102n0.c.c(list, "Argument must not be null");
        this.f27280J = list;
        this.f27278H = new n(lVar, hVar);
    }

    public u(p102n0.g[] gVarArr, X x7, j jVar) {
        this.f27277G = 14;
        p102n0.g[] gVarArr2 = new p102n0.g[gVarArr.length + 2];
        this.f27278H = gVarArr2;
        System.arraycopy(gVarArr, 0, gVarArr2, 0, gVarArr.length);
        this.f27279I = x7;
        this.f27280J = jVar;
        p102n0.g[] gVarArr3 = (p102n0.g[]) this.f27278H;
        gVarArr3[gVarArr.length] = x7;
        gVarArr3[gVarArr.length + 1] = jVar;
    }

    public u(ParcelFileDescriptor parcelFileDescriptor, List list, p196z2.h hVar) {
        this.f27277G = 26;
        p102n0.c.c(hVar, "Argument must not be null");
        this.f27278H = hVar;
        p102n0.c.c(list, "Argument must not be null");
        this.f27279I = list;
        this.f27280J = new n(parcelFileDescriptor);
    }

    public u(p016c.e eVar, String str, Q3.b bVar) {
        this.f27277G = 1;
        this.f27280J = eVar;
        this.f27278H = str;
        this.f27279I = bVar;
    }

    public u(C0260i c0260i) {
        this.f27277G = 19;
        this.f27278H = c0260i;
        this.f27279I = new AtomicBoolean(false);
    }

    public u(G0.i iVar) {
        this.f27277G = 16;
        this.f27280J = iVar;
        this.f27278H = new HashSet();
    }

    public u(ArrayDeque arrayDeque, BufferedReader bufferedReader) {
        this.f27277G = 17;
        this.f27279I = arrayDeque;
        this.f27278H = bufferedReader;
    }

    public u(AudioTrack audioTrack, C0116f c0116f) {
        this.f27277G = 15;
        this.f27278H = audioTrack;
        this.f27279I = c0116f;
        this.f27280J = new AudioRouting.OnRoutingChangedListener() { // from class: D0.L
            @Override // android.media.AudioRouting.OnRoutingChangedListener
            public final void onRoutingChanged(AudioRouting audioRouting) {
                AudioDeviceInfo routedDevice;
                p096m2.u uVar = this.f1779a;
                if (((AudioRouting.OnRoutingChangedListener) uVar.f27280J) == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
                    return;
                }
                ((C0116f) uVar.f27279I).b(routedDevice);
            }
        };
        audioTrack.addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) this.f27280J, new Handler(Looper.myLooper()));
    }
}
