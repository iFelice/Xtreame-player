package com.google.android.gms.internal.ads;

import A0.C0022w;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonReader;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.net.URISyntaxException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3075e;
import p090l3.C3093n;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.C3117z0;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2246xc implements W1, InterfaceC1195dC, InterfaceC2144ve, InterfaceC2121v6, Dw, AN, InterfaceC2189wM {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static InterfaceC1016Zd f21880L;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21881G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f21882H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f21883I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f21884J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f21885K;

    public /* synthetic */ C2246xc() {
        this.f21881G = 23;
        this.f21882H = null;
        this.f21883I = null;
        this.f21884J = null;
        this.f21885K = ZC.f17735d;
    }

    public static String O(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        C1963s4 c1963s4A = C2015t4.A();
        c1963s4A.d();
        C2015t4.D((C2015t4) c1963s4A.f20255H);
        VG vgY = XG.y(0, bArr, bArr.length);
        c1963s4A.d();
        C2015t4.B((C2015t4) c1963s4A.f20255H, vgY);
        return Base64.encodeToString(((C2015t4) c1963s4A.b()).d(), 11);
    }

    public static C2246xc i(Reader reader, C0973Wc c0973Wc) {
        try {
            try {
                C2246xc c2246xc = new C2246xc(new JsonReader(reader), c0973Wc);
                AbstractC2987b.e(reader);
                return c2246xc;
            } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e8) {
                throw new C1898qr("unable to parse ServerResponse", e8);
            }
        } catch (Throwable th) {
            AbstractC2987b.e(reader);
            throw th;
        }
    }

    public C0764Hj A(Set set) {
        return new C0764Hj(set);
    }

    public final synchronized void B(MotionEvent motionEvent) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put("aid", null);
            map.put("evt", motionEvent);
            this.f21882H.getClass().getDeclaredMethod("he", Map.class).invoke(this.f21882H, map);
            ((C1180cy) this.f21885K).c(3003, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e8) {
            throw new Ey(2005, e8);
        }
    }

    public final void C(C2181wE c2181wE) throws GeneralSecurityException {
        KE ke = new KE(c2181wE.f21656a, c2181wE.f21657b);
        if (!((Map) this.f21884J).containsKey(ke)) {
            ((Map) this.f21884J).put(ke, c2181wE);
            return;
        }
        C2181wE c2181wE2 = (C2181wE) ((Map) this.f21884J).get(ke);
        if (!c2181wE2.equals(c2181wE) || !c2181wE.equals(c2181wE2)) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(ke.toString()));
        }
    }

    public final C0848Nd D() {
        Cw.f1(Context.class, (Context) this.f21882H);
        Cw.f1(P3.a.class, (P3.a) this.f21883I);
        Cw.f1(p113o3.K.class, (p113o3.K) this.f21884J);
        Cw.f1(C0890Qd.class, (C0890Qd) this.f21885K);
        Context context = (Context) this.f21882H;
        P3.a aVar = (P3.a) this.f21883I;
        p113o3.K k8 = (p113o3.K) this.f21884J;
        C0890Qd c0890Qd = (C0890Qd) this.f21885K;
        C0848Nd c0848Nd = new C0848Nd();
        c0848Nd.f14911a = aVar;
        c0848Nd.f14912b = JJ.a(context);
        JJ jjA = JJ.a(k8);
        c0848Nd.f14913c = jjA;
        c0848Nd.f14914d = HJ.b(new C0788Jd((MJ) c0848Nd.f14912b, jjA, 0));
        c0848Nd.f14915e = JJ.a(aVar);
        JJ jjA2 = JJ.a(c0890Qd);
        c0848Nd.f14916f = jjA2;
        MJ mj = (MJ) c0848Nd.f14915e;
        MJ mjB = HJ.b(new p167v3.E(mj, (MJ) c0848Nd.f14913c, (MJ) jjA2, 2));
        c0848Nd.f14917g = mjB;
        C0833Md c0833Md = new C0833Md(mj, mjB);
        c0848Nd.f14918h = c0833Md;
        c0848Nd.f14919i = HJ.b(new C0788Jd((MJ) c0848Nd.f14912b, c0833Md, 1));
        return c0848Nd;
    }

    public final C2006sw E() {
        Yv yvZzg = ((InterfaceC1165cj) this.f21883I).zzg();
        p004a3.b bVar = (p004a3.b) this.f21882H;
        C1015Zc c1015ZcA = new C1001Yc(((C1799ow) bVar.f8651I).f20350G).a();
        String str = ((C1799ow) bVar.f8651I).f20356M;
        return new C2006sw(yvZzg.f17677d, yvZzg.f17679f, c1015ZcA.f17778j, str, yvZzg.f17683j);
    }

    public final RC F() throws GeneralSecurityException {
        NG ngB;
        WC wc = (WC) this.f21882H;
        if (wc == null) {
            throw new GeneralSecurityException("Cannot build without parameters");
        }
        Xu xu = (Xu) this.f21883I;
        if (xu == null || ((Xu) this.f21884J) == null) {
            throw new GeneralSecurityException("Cannot build without key material");
        }
        if (wc.f17177a != xu.e()) {
            throw new GeneralSecurityException("AES key size mismatch");
        }
        if (wc.f17178b != ((Xu) this.f21884J).e()) {
            throw new GeneralSecurityException("HMAC key size mismatch");
        }
        if (((WC) this.f21882H).a() && ((Integer) this.f21885K) == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
        }
        if (!((WC) this.f21882H).a() && ((Integer) this.f21885K) != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
        }
        VC vc = ((WC) this.f21882H).f17181e;
        if (vc == VC.f16973d) {
            ngB = AbstractC2025tE.f21054a;
        } else if (vc == VC.f16972c) {
            ngB = AbstractC2025tE.a(((Integer) this.f21885K).intValue());
        } else {
            if (vc != VC.f16971b) {
                throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: ".concat(String.valueOf(((WC) this.f21882H).f17181e)));
            }
            ngB = AbstractC2025tE.b(((Integer) this.f21885K).intValue());
        }
        return new RC((WC) this.f21882H, (Xu) this.f21883I, (Xu) this.f21884J, ngB, (Integer) this.f21885K);
    }

    public final C1041aD G() throws GeneralSecurityException {
        Integer num = (Integer) this.f21882H;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (((Integer) this.f21883I) == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (((ZC) this.f21885K) == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (((Integer) this.f21884J) == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        int iIntValue2 = ((Integer) this.f21883I).intValue();
        ((Integer) this.f21884J).getClass();
        return new C1041aD(iIntValue, iIntValue2, (ZC) this.f21885K);
    }

    public final C1299fD H() throws GeneralSecurityException {
        Integer num = (Integer) this.f21882H;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (((C1247eD) this.f21885K) == null) {
            throw new GeneralSecurityException("Variant is not set");
        }
        if (((Integer) this.f21883I) == null) {
            throw new GeneralSecurityException("IV size is not set");
        }
        if (((Integer) this.f21884J) == null) {
            throw new GeneralSecurityException("Tag size is not set");
        }
        int iIntValue = num.intValue();
        ((Integer) this.f21883I).getClass();
        ((Integer) this.f21884J).getClass();
        return new C1299fD(iIntValue, (C1247eD) this.f21885K);
    }

    public final C1043aF I() throws GeneralSecurityException {
        Integer num = (Integer) this.f21882H;
        if (num == null) {
            throw new GeneralSecurityException("key size is not set");
        }
        if (((Integer) this.f21883I) == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (((YE) this.f21884J) == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (((ZE) this.f21885K) == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        if (num.intValue() < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", (Integer) this.f21882H));
        }
        Integer num2 = (Integer) this.f21883I;
        int iIntValue = num2.intValue();
        YE ye = (YE) this.f21884J;
        if (iIntValue < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
        }
        if (ye == YE.f17583b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
            }
        } else if (ye == YE.f17584c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
            }
        } else if (ye == YE.f17585d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
            }
        } else if (ye == YE.f17586e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
            }
        } else {
            if (ye != YE.f17587f) {
                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
            }
        }
        return new C1043aF(((Integer) this.f21882H).intValue(), ((Integer) this.f21883I).intValue(), (ZE) this.f21885K, (YE) this.f21884J);
    }

    public final synchronized int J() {
        try {
        } catch (Exception e8) {
            throw new Ey(2006, e8);
        }
        return ((Integer) this.f21882H.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f21882H, new Object[0])).intValue();
    }

    public final C1721nL K(C1721nL c1721nL, C2190wN c2190wN) {
        AbstractC1567kN abstractC1567kN = (AbstractC1567kN) this.f21885K;
        Object obj = this.f21882H;
        long j8 = c1721nL.f20164H;
        abstractC1567kN.v(obj, j8);
        AbstractC1567kN abstractC1567kN2 = (AbstractC1567kN) this.f21885K;
        Object obj2 = this.f21882H;
        long j9 = c1721nL.f20165I;
        abstractC1567kN2.v(obj2, j9);
        if (j8 == c1721nL.f20164H && j9 == c1721nL.f20165I) {
            return c1721nL;
        }
        return new C1721nL(c1721nL.f20163G, (C1804p0) c1721nL.f20166J, j8, j9);
    }

    public final synchronized void L() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f21882H.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.f21882H, new Object[0]);
            ((C1180cy) this.f21885K).c(3001, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception e8) {
            throw new Ey(2003, e8);
        }
    }

    public final boolean M(C2190wN c2190wN) {
        C2190wN c2190wNW;
        if (c2190wN != null) {
            c2190wNW = ((AbstractC1567kN) this.f21885K).w(this.f21882H, c2190wN);
            if (c2190wNW == null) {
                return false;
            }
        } else {
            c2190wNW = null;
        }
        ((AbstractC1567kN) this.f21885K).u(this.f21882H);
        C1294f8 c1294f8 = (C1294f8) this.f21883I;
        int i8 = c1294f8.f18726H;
        if (!Objects.equals((C2190wN) c1294f8.f18727I, c2190wNW)) {
            this.f21883I = new C1294f8((CopyOnWriteArrayList) ((AbstractC1567kN) this.f21885K).f18519c.f18728J, c2190wNW, 8);
        }
        C2137vM c2137vM = (C2137vM) this.f21884J;
        c2137vM.getClass();
        if (Objects.equals(c2137vM.f21517a, c2190wNW)) {
            return true;
        }
        this.f21884J = new C2137vM(((AbstractC1567kN) this.f21885K).f18520d.f21518b, c2190wNW);
        return true;
    }

    public final synchronized boolean N() {
        try {
        } catch (Exception e8) {
            throw new Ey(2001, e8);
        }
        return ((Boolean) this.f21882H.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f21882H, new Object[0])).booleanValue();
    }

    public final synchronized byte[] P(HashMap map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e8) {
            ((C1180cy) this.f21885K).b(2007, System.currentTimeMillis() - jCurrentTimeMillis, e8);
            return null;
        }
        return (byte[]) this.f21882H.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f21882H, null, map);
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void a(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL, IOException iOException, boolean z7) {
        if (M(c2190wN)) {
            ((C1294f8) this.f21883I).n(c1827pN, K(c1721nL, c2190wN), iOException, z7);
        }
    }

    public final C0887Qa b(Context context, p120p3.a aVar, Uw uw) {
        C0887Qa c0887Qa;
        synchronized (this.f21882H) {
            try {
                if (((C0887Qa) this.f21884J) == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    this.f21884J = new C0887Qa(context, aVar, (String) C3099q.f26624d.f26627c.a(Q7.f15777a), uw);
                }
                c0887Qa = (C0887Qa) this.f21884J;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0887Qa;
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void c(int i8, C2190wN c2190wN, C1721nL c1721nL) {
        if (M(c2190wN)) {
            ((C1294f8) this.f21883I).i(K(c1721nL, c2190wN));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.W1
    public final void d(byte[] bArr, int i8, int i9, p149t0.d dVar) {
        C1063ak c1063ak;
        C1534jr c1534jr;
        C1534jr c1534jr2;
        int i10;
        int i11;
        C1534jr c1534jr3;
        C1534jr c1534jr4;
        int i12;
        int i13;
        int iY;
        boolean z7;
        C2246xc c2246xc = this;
        ((C1534jr) c2246xc.f21882H).h(i8 + i9, bArr);
        ((C1534jr) c2246xc.f21882H).j(i8);
        C1534jr c1534jr5 = (C1534jr) c2246xc.f21882H;
        if (c1534jr5.o() > 0 && (c1534jr5.f19515a[c1534jr5.f19516b] & 255) == 120) {
            if (((Inflater) c2246xc.f21885K) == null) {
                c2246xc.f21885K = new Inflater();
            }
            C1534jr c1534jr6 = (C1534jr) c2246xc.f21883I;
            Inflater inflater = (Inflater) c2246xc.f21885K;
            int i14 = Et.f13234a;
            if (c1534jr5.o() > 0) {
                if (c1534jr6.f19515a.length < c1534jr5.o()) {
                    int iO = c1534jr5.o();
                    c1534jr6.e(iO + iO);
                }
                if (inflater == null) {
                    inflater = new Inflater();
                }
                inflater.setInput(c1534jr5.f19515a, c1534jr5.f19516b, c1534jr5.o());
                int iInflate = 0;
                while (true) {
                    try {
                        byte[] bArr2 = c1534jr6.f19515a;
                        iInflate += inflater.inflate(bArr2, iInflate, bArr2.length - iInflate);
                        if (inflater.finished()) {
                            c1534jr6.i(iInflate);
                            z7 = true;
                            break;
                        } else {
                            if (inflater.needsDictionary() || inflater.needsInput()) {
                                z7 = false;
                                break;
                            }
                            byte[] bArr3 = c1534jr6.f19515a;
                            if (iInflate == bArr3.length) {
                                int length = bArr3.length;
                                c1534jr6.e(length + length);
                            }
                        }
                    } catch (DataFormatException unused) {
                    } catch (Throwable th) {
                        inflater.reset();
                        throw th;
                    }
                }
                inflater.reset();
                if (z7) {
                    C1534jr c1534jr7 = (C1534jr) c2246xc.f21883I;
                    c1534jr5.h(c1534jr7.f19517c, c1534jr7.f19515a);
                }
            }
        }
        p150t1.a aVar = (p150t1.a) c2246xc.f21884J;
        aVar.f30256c = 0;
        aVar.f30257d = 0;
        aVar.f30258e = 0;
        aVar.f30259f = 0;
        aVar.f30260g = 0;
        aVar.f30261h = 0;
        ((C1534jr) aVar.f30262i).g(0);
        aVar.f30255b = false;
        ArrayList arrayList = new ArrayList();
        while (true) {
            C1534jr c1534jr8 = (C1534jr) c2246xc.f21882H;
            if (c1534jr8.o() < 3) {
                dVar.mo4zza(new S1(arrayList, -9223372036854775807L, -9223372036854775807L));
                return;
            }
            p150t1.a aVar2 = (p150t1.a) c2246xc.f21884J;
            int i15 = c1534jr8.f19517c;
            int iW = c1534jr8.w();
            int iA = c1534jr8.A();
            int i16 = c1534jr8.f19516b + iA;
            if (i16 > i15) {
                c1534jr8.j(i15);
                c1063ak = null;
            } else {
                if (iW != 128) {
                    switch (iW) {
                        case 20:
                            if (iA % 5 != 2) {
                                c1534jr3 = c1534jr8;
                            } else {
                                c1534jr8.k(2);
                                Arrays.fill(aVar2.f30254a, 0);
                                int i17 = iA / 5;
                                int i18 = 0;
                                while (i18 < i17) {
                                    int iW2 = c1534jr8.w();
                                    int iW3 = c1534jr8.w();
                                    int iW4 = c1534jr8.w();
                                    double d6 = iW3;
                                    double d8 = iW4 - 128;
                                    double dW = c1534jr8.w() - 128;
                                    aVar2.f30254a[iW2] = (Math.max(0, Math.min((int) ((1.402d * d8) + d6), 255)) << 16) | (c1534jr8.w() << 24) | (Math.max(0, Math.min((int) ((d6 - (0.34414d * dW)) - (d8 * 0.71414d)), 255)) << 8) | Math.max(0, Math.min((int) ((dW * 1.772d) + d6), 255));
                                    i18++;
                                    c1534jr8 = c1534jr8;
                                }
                                c1534jr3 = c1534jr8;
                                aVar2.f30255b = true;
                            }
                            c1534jr = c1534jr3;
                            break;
                        case 21:
                            if (iA >= 4) {
                                c1534jr8.k(3);
                                int i19 = iA - 4;
                                if ((c1534jr8.w() & 128) == 0) {
                                    c1534jr4 = (C1534jr) aVar2.f30262i;
                                    i12 = c1534jr4.f19516b;
                                    i13 = c1534jr4.f19517c;
                                    if (i12 < i13 && i19 > 0) {
                                        int iMin = Math.min(i19, i13 - i12);
                                        c1534jr8.f(i12, c1534jr4.f19515a, iMin);
                                        ((C1534jr) aVar2.f30262i).j(i12 + iMin);
                                    }
                                } else if (i19 >= 7 && (iY = c1534jr8.y()) >= 4) {
                                    aVar2.f30260g = c1534jr8.A();
                                    aVar2.f30261h = c1534jr8.A();
                                    ((C1534jr) aVar2.f30262i).g(iY - 4);
                                    i19 = iA - 11;
                                    c1534jr4 = (C1534jr) aVar2.f30262i;
                                    i12 = c1534jr4.f19516b;
                                    i13 = c1534jr4.f19517c;
                                    if (i12 < i13) {
                                        int iMin2 = Math.min(i19, i13 - i12);
                                        c1534jr8.f(i12, c1534jr4.f19515a, iMin2);
                                        ((C1534jr) aVar2.f30262i).j(i12 + iMin2);
                                    }
                                }
                            }
                            c1534jr = c1534jr8;
                            break;
                        case 22:
                            if (iA >= 19) {
                                aVar2.f30256c = c1534jr8.A();
                                aVar2.f30257d = c1534jr8.A();
                                c1534jr8.k(11);
                                aVar2.f30258e = c1534jr8.A();
                                aVar2.f30259f = c1534jr8.A();
                            }
                            c1534jr = c1534jr8;
                            break;
                        default:
                            c1534jr = c1534jr8;
                            break;
                    }
                    c1063ak = null;
                } else {
                    int i20 = aVar2.f30256c;
                    Object obj = aVar2.f30262i;
                    if (i20 == 0 || aVar2.f30257d == 0 || aVar2.f30260g == 0 || aVar2.f30261h == 0 || (i10 = (c1534jr2 = (C1534jr) obj).f19517c) == 0 || c1534jr2.f19516b != i10 || !aVar2.f30255b) {
                        c1063ak = null;
                    } else {
                        c1534jr2.j(0);
                        int i21 = aVar2.f30260g * aVar2.f30261h;
                        int[] iArr = new int[i21];
                        int i22 = 0;
                        while (i22 < i21) {
                            int iW5 = c1534jr2.w();
                            int[] iArr2 = aVar2.f30254a;
                            if (iW5 != 0) {
                                i11 = i22 + 1;
                                iArr[i22] = iArr2[iW5];
                            } else {
                                int iW6 = c1534jr2.w();
                                if (iW6 != 0) {
                                    int iW7 = iW6 & 63;
                                    if ((iW6 & 64) != 0) {
                                        iW7 = (iW7 << 8) | c1534jr2.w();
                                    }
                                    i11 = iW7 + i22;
                                    Arrays.fill(iArr, i22, i11, (iW6 & 128) == 0 ? iArr2[0] : iArr2[c1534jr2.w()]);
                                }
                            }
                            i22 = i11;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, aVar2.f30260g, aVar2.f30261h, Bitmap.Config.ARGB_8888);
                        float f8 = aVar2.f30258e;
                        float f9 = aVar2.f30256c;
                        float f10 = f8 / f9;
                        float f11 = aVar2.f30259f;
                        float f12 = aVar2.f30257d;
                        c1063ak = new C1063ak(null, null, null, bitmapCreateBitmap, f11 / f12, 0, 0, f10, 0, Integer.MIN_VALUE, -3.4028235E38f, aVar2.f30260g / f9, aVar2.f30261h / f12, Integer.MIN_VALUE, 0.0f);
                    }
                    aVar2.f30256c = 0;
                    aVar2.f30257d = 0;
                    aVar2.f30258e = 0;
                    aVar2.f30259f = 0;
                    aVar2.f30260g = 0;
                    aVar2.f30261h = 0;
                    ((C1534jr) obj).g(0);
                    aVar2.f30255b = false;
                    c1534jr = c1534jr8;
                }
                c1534jr.j(i16);
            }
            if (c1063ak != null) {
                arrayList.add(c1063ak);
            }
            c2246xc = this;
        }
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void e(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        if (M(c2190wN)) {
            ((C1294f8) this.f21883I).o(c1827pN, K(c1721nL, c2190wN));
        }
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void f(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        if (M(c2190wN)) {
            ((C1294f8) this.f21883I).k(c1827pN, K(c1721nL, c2190wN));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2121v6
    public final void g(C7 c8) {
        A6 a8 = (A6) ((D7) c8.f20255H).J().o();
        EnumC2329z6 enumC2329z6 = (EnumC2329z6) this.f21882H;
        a8.d();
        B6.D((B6) a8.f20255H, enumC2329z6);
        c8.d();
        D7.E((D7) c8.f20255H, (B6) a8.b());
        C2226x7 c2226x7 = (C2226x7) ((D7) c8.f20255H).K().o();
        String str = (String) this.f21885K;
        c2226x7.d();
        C2278y7.C((C2278y7) c2226x7.f20255H, str);
        T6 t7 = (T6) this.f21883I;
        c2226x7.d();
        C2278y7.A((C2278y7) c2226x7.f20255H, t7);
        c8.d();
        D7.D((D7) c8.f20255H, (C2278y7) c2226x7.b());
        String str2 = (String) this.f21884J;
        c8.d();
        D7.A((D7) c8.f20255H, str2);
    }

    @Override // com.google.android.gms.internal.ads.AN
    public final void h(int i8, C2190wN c2190wN, C1827pN c1827pN, C1721nL c1721nL) {
        if (M(c2190wN)) {
            ((C1294f8) this.f21883I).m(c1827pN, K(c1721nL, c2190wN));
        }
    }

    public final synchronized void j(AbstractC2118v3 abstractC2118v3) {
        try {
            Map map = (Map) this.f21882H;
            String strB = abstractC2118v3.b();
            List list = (List) map.remove(strB);
            if (list == null || list.isEmpty()) {
                return;
            }
            if (B3.f12095a) {
                B3.c("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), strB);
            }
            AbstractC2118v3 abstractC2118v4 = (AbstractC2118v3) list.remove(0);
            ((Map) this.f21882H).put(strB, list);
            abstractC2118v4.j(this);
            try {
                ((BlockingQueue) this.f21884J).put(abstractC2118v4);
            } catch (InterruptedException e8) {
                B3.b("Couldn't add request to queue. %s", e8.toString());
                Thread.currentThread().interrupt();
                C1703n3 c1703n3 = (C1703n3) this.f21883I;
                c1703n3.f20063J = true;
                c1703n3.interrupt();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void k(YD yd) throws GeneralSecurityException {
        JE je = new JE(yd.f17581b, yd.f17580a);
        if (!((Map) this.f21883I).containsKey(je)) {
            ((Map) this.f21883I).put(je, yd);
            return;
        }
        YD yd2 = (YD) ((Map) this.f21883I).get(je);
        if (!yd2.equals(yd) || !yd.equals(yd2)) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(je.toString()));
        }
    }

    public final void l(int i8) {
        if (i8 != 12 && i8 != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i8)));
        }
        this.f21883I = Integer.valueOf(i8);
    }

    public final void m() {
        this.f21883I = 12;
    }

    public final C0887Qa n(Context context, p120p3.a aVar, Uw uw) {
        C0887Qa c0887Qa;
        synchronized (this.f21883I) {
            try {
                if (((C0887Qa) this.f21885K) == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    this.f21885K = new C0887Qa(context, aVar, (String) AbstractC1717nH.f20111b0.l(), uw);
                }
                c0887Qa = (C0887Qa) this.f21885K;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0887Qa;
    }

    public final void o(AbstractC2118v3 abstractC2118v3, C2222x3 c2222x3) {
        List list;
        p135r2.b bVar = (p135r2.b) c2222x3.f21828I;
        if (bVar == null || bVar.f29785e < System.currentTimeMillis()) {
            j(abstractC2118v3);
            return;
        }
        String strB = abstractC2118v3.b();
        synchronized (this) {
            list = (List) ((Map) this.f21882H).remove(strB);
        }
        if (list != null) {
            if (B3.f12095a) {
                B3.c("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), strB);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((K4) this.f21885K).f((AbstractC2118v3) it.next(), c2222x3, null);
            }
        }
    }

    public final void p(Xx xx) {
        xx.f17551a = this;
        ((ArrayDeque) this.f21884J).add(xx);
        if (((Xx) this.f21885K) == null) {
            Xx xx2 = (Xx) ((ArrayDeque) this.f21884J).poll();
            this.f21885K = xx2;
            if (xx2 != null) {
                xx2.executeOnExecutor((ThreadPoolExecutor) this.f21883I, new Object[0]);
            }
        }
    }

    public final void q(C1042aE c1042aE) throws GeneralSecurityException {
        KE ke = new KE(c1042aE.f17845a, c1042aE.f17846b);
        if (!((Map) this.f21882H).containsKey(ke)) {
            ((Map) this.f21882H).put(ke, c1042aE);
            return;
        }
        C1042aE c1042aE2 = (C1042aE) ((Map) this.f21882H).get(ke);
        if (!c1042aE2.equals(c1042aE) || !c1042aE.equals(c1042aE2)) {
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(ke.toString()));
        }
    }

    public final void r(p182x3.a aVar) {
        InterfaceC1016Zd interfaceC1016Zd;
        p090l3.b1 b1VarA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Context context = (Context) this.f21882H;
        synchronized (C2246xc.class) {
            try {
                if (f21880L == null) {
                    C3093n c3093n = C3097p.f26618f.f26620b;
                    BinderC1054ab binderC1054ab = new BinderC1054ab();
                    c3093n.getClass();
                    f21880L = (InterfaceC1016Zd) new C3075e(context, binderC1054ab).d(context, false);
                }
                interfaceC1016Zd = f21880L;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (interfaceC1016Zd == null) {
            aVar.a("Internal Error, query info generator is null.");
            return;
        }
        Context context2 = (Context) this.f21882H;
        p090l3.G0 g8 = (p090l3.G0) this.f21884J;
        R3.b bVar = new R3.b(context2);
        if (g8 == null) {
            b1VarA = new p090l3.b1(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000, null, 0, jCurrentTimeMillis);
        } else {
            g8.f26469k = jCurrentTimeMillis;
            b1VarA = p090l3.c1.a((Context) this.f21882H, (p090l3.G0) this.f21884J);
        }
        try {
            interfaceC1016Zd.t1(bVar, new C1212de((String) this.f21885K, ((p043f3.a) this.f21883I).name(), null, b1VarA), new BinderC2038tc(aVar));
        } catch (RemoteException unused) {
            aVar.a("Internal Error.");
        }
    }

    public final void s(int i8) {
        if (i8 != 16 && i8 != 24 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i8)));
        }
        this.f21882H = Integer.valueOf(i8);
    }

    public final void t(int i8) {
        if (i8 != 16 && i8 != 24 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i8)));
        }
        this.f21882H = Integer.valueOf(i8);
    }

    public final void u(int i8) {
        this.f21882H = Integer.valueOf(i8);
    }

    public final void v(C2077uE c2077uE) throws GeneralSecurityException {
        JE je = new JE(c2077uE.f21214b, c2077uE.f21213a);
        if (!((Map) this.f21885K).containsKey(je)) {
            ((Map) this.f21885K).put(je, c2077uE);
            return;
        }
        C2077uE c2077uE2 = (C2077uE) ((Map) this.f21885K).get(je);
        if (!c2077uE2.equals(c2077uE) || !c2077uE.equals(c2077uE2)) {
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(je.toString()));
        }
    }

    public final synchronized boolean w(AbstractC2118v3 abstractC2118v3) {
        try {
            Map map = (Map) this.f21882H;
            String strB = abstractC2118v3.b();
            if (!map.containsKey(strB)) {
                ((Map) this.f21882H).put(strB, null);
                abstractC2118v3.j(this);
                if (B3.f12095a) {
                    B3.a("new request, sending to network %s", strB);
                }
                return false;
            }
            List arrayList = (List) ((Map) this.f21882H).get(strB);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            abstractC2118v3.d("waiting-for-response");
            arrayList.add(abstractC2118v3);
            ((Map) this.f21882H).put(strB, arrayList);
            if (B3.f12095a) {
                B3.a("Request for cacheKey=%s is in flight, putting on hold.", strB);
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void x() {
        this.f21884J = 16;
    }

    public final void y() {
        this.f21884J = 16;
    }

    public final void z(int i8) {
        this.f21883I = Integer.valueOf(i8);
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) {
        long j8;
        P0.j jVar = (P0.j) this.f21882H;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        if (((p113o3.L) ((p113o3.K) ((Wp) jVar.f5730H).f24905a)).r()) {
            return null;
        }
        L6 l8 = (L6) this.f21885K;
        F6 f8 = (F6) this.f21884J;
        ArrayList arrayList = (ArrayList) this.f21883I;
        Wp wp = (Wp) jVar.f5730H;
        boolean z7 = jVar.f5729G;
        H6 h6P = I6.P();
        h6P.d();
        I6.E((I6) h6P.f20255H, arrayList);
        int i8 = Settings.Global.getInt(wp.f17324c.getContentResolver(), "airplane_mode_on", 0) != 0 ? 2 : 1;
        h6P.d();
        I6.H((I6) h6P.f20255H, i8);
        p083k3.l lVar = p083k3.l.f25980A;
        int iS = lVar.f25985e.S(wp.f17324c, wp.f17326e);
        h6P.d();
        I6.I((I6) h6P.f20255H, iS);
        Up up = wp.f17327f;
        synchronized (up.f16894h) {
            j8 = up.f16889c;
        }
        h6P.d();
        I6.C((I6) h6P.f20255H, j8);
        long jB = wp.f17327f.b();
        h6P.d();
        I6.D((I6) h6P.f20255H, jB);
        int iA = wp.f17327f.a();
        h6P.d();
        I6.J((I6) h6P.f20255H, iA);
        h6P.d();
        I6.L((I6) h6P.f20255H, l8);
        h6P.d();
        I6.F((I6) h6P.f20255H, f8);
        int i9 = wp.f17328g;
        h6P.d();
        I6.K((I6) h6P.f20255H, i9);
        int i10 = z7 ? 2 : 1;
        h6P.d();
        I6.B((I6) h6P.f20255H, i10);
        long jD = wp.f17327f.d();
        h6P.d();
        I6.M((I6) h6P.f20255H, jD);
        lVar.f25990j.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        h6P.d();
        I6.A((I6) h6P.f20255H, jCurrentTimeMillis);
        int i11 = Settings.Global.getInt(wp.f17324c.getContentResolver(), "wifi_on", 0) != 0 ? 2 : 1;
        h6P.d();
        I6.G((I6) h6P.f20255H, i11);
        byte[] bArrD = ((I6) h6P.b()).d();
        sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'completed_requests'");
        if (!z7) {
            sQLiteDatabase.execSQL("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = 'failed_requests'");
        }
        a7.b.s(sQLiteDatabase, ((Wp) jVar.f5730H).f17327f.d(), bArrD);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:167:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:24:0x00cf  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        String str;
        boolean z7;
        Intent uri;
        boolean z8;
        Tw tw;
        int i8;
        int i9 = 2;
        switch (this.f21881G) {
            case 6:
                String string = (String) obj;
                J7 j8 = Q7.q9;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    ((Map) this.f21882H).put("u", string);
                }
                U9 u9 = (U9) this.f21884J;
                InterfaceC3067a interfaceC3067a = (InterfaceC3067a) this.f21883I;
                Map map = (Map) this.f21882H;
                String str2 = (String) this.f21885K;
                u9.getClass();
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) interfaceC3067a;
                Ov ovF = interfaceC0715Ef.f();
                Qv qvU = interfaceC0715Ef.U();
                if (ovF == null || qvU == null) {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                    z7 = false;
                } else {
                    str = qvU.f16150b;
                    z7 = ovF.f15263i0;
                }
                boolean z9 = (((Boolean) c3099q.f26627c.a(Q7.Y9)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("0")) ? false : true;
                J7 j9 = Q7.Xb;
                O7 o7 = c3099q.f26627c;
                boolean z10 = ((Boolean) o7.a(j9)).booleanValue() && map.containsKey("ig_cl") && ((String) map.get("ig_cl")).equals("true");
                if ("expand".equalsIgnoreCase(str2)) {
                    if (interfaceC0715Ef.j0()) {
                        p120p3.h.g("Cannot expand WebView that is already expanded.");
                        return;
                    } else {
                        u9.g(false);
                        interfaceC0715Ef.X(U9.a(map), "1".equals(map.get("custom_close")), z9);
                        return;
                    }
                }
                if ("webapp".equalsIgnoreCase(str2)) {
                    u9.g(false);
                    boolean z11 = ((Boolean) o7.a(Q7.gb)).booleanValue() && Objects.equals(map.get("is_allowed_for_lock_screen"), "1");
                    if (string != null) {
                        interfaceC0715Ef.c0("1".equals(map.get("custom_close")), U9.a(map), string, z9, z11);
                        return;
                    } else {
                        interfaceC0715Ef.r0(U9.a(map), (String) map.get("html"), (String) map.get("baseurl"), "1".equals(map.get("custom_close")), z9);
                        return;
                    }
                }
                boolean zEqualsIgnoreCase = "chrome_custom_tab".equalsIgnoreCase(str2);
                C1172cq c1172cq = u9.f16799K;
                if (zEqualsIgnoreCase) {
                    interfaceC0715Ef.getContext();
                    if (!((Boolean) o7.a(Q7.f15853i4)).booleanValue()) {
                        z8 = false;
                    } else if (((Boolean) o7.a(Q7.f15888m4)).booleanValue()) {
                        p113o3.I.k("User opt out chrome custom tab.");
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    boolean zA = C1036a8.a(interfaceC0715Ef.getContext());
                    if (z8) {
                        if (zA) {
                            u9.g(true);
                            if (TextUtils.isEmpty(string)) {
                                p120p3.h.g("Cannot open browser with null or empty url");
                                u9.i(7);
                                return;
                            }
                            Uri uriC = U9.c(U9.b(interfaceC0715Ef.getContext(), interfaceC0715Ef.T(), Uri.parse(string), interfaceC0715Ef.j(), interfaceC0715Ef.zzi(), interfaceC0715Ef.A0()));
                            if (z7 && c1172cq != null && u9.h(interfaceC3067a, interfaceC0715Ef.getContext(), uriC.toString(), str)) {
                                return;
                            }
                            u9.f16801M = new S9(u9);
                            interfaceC0715Ef.b0(new p105n3.f(null, uriC.toString(), null, null, null, null, null, null, new R3.b(u9.f16801M), true), z9, z10);
                            return;
                        }
                        u9.i(4);
                    }
                    map.put("use_first_package", "true");
                    map.put("use_running_process", "true");
                    u9.e(interfaceC3067a, map, z7, str, z9, z10);
                    return;
                }
                if ("app".equalsIgnoreCase(str2) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                    u9.e(interfaceC3067a, map, z7, str, z9, z10);
                    return;
                }
                if ("open_app".equalsIgnoreCase(str2)) {
                    if (((Boolean) o7.a(Q7.A7)).booleanValue()) {
                        u9.g(true);
                        String str3 = (String) map.get("p");
                        if (str3 == null) {
                            p120p3.h.g("Package name missing from open app action.");
                            return;
                        }
                        if (z7 && c1172cq != null && u9.h(interfaceC3067a, interfaceC0715Ef.getContext(), str3, str)) {
                            return;
                        }
                        PackageManager packageManager = interfaceC0715Ef.getContext().getPackageManager();
                        if (packageManager == null) {
                            p120p3.h.g("Cannot get package manager from open app action.");
                            return;
                        }
                        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str3);
                        if (launchIntentForPackage != null) {
                            interfaceC0715Ef.b0(new p105n3.f(launchIntentForPackage, u9.f16801M), z9, z10);
                            return;
                        }
                        return;
                    }
                    return;
                }
                u9.g(true);
                String str4 = (String) map.get("intent_url");
                if (TextUtils.isEmpty(str4)) {
                    uri = null;
                } else {
                    try {
                        uri = Intent.parseUri(str4, 0);
                    } catch (URISyntaxException e8) {
                        p120p3.h.e("Error parsing the url: ".concat(String.valueOf(str4)), e8);
                        uri = null;
                    }
                }
                if (uri != null && uri.getData() != null) {
                    Uri data = uri.getData();
                    if (!Uri.EMPTY.equals(data)) {
                        Uri uriC2 = U9.c(U9.b(interfaceC0715Ef.getContext(), interfaceC0715Ef.T(), data, interfaceC0715Ef.j(), interfaceC0715Ef.zzi(), interfaceC0715Ef.A0()));
                        if (TextUtils.isEmpty(uri.getType())) {
                            uri.setData(uriC2);
                        } else if (((Boolean) C3099q.f26624d.f26627c.a(Q7.B7)).booleanValue()) {
                            uri.setDataAndType(uriC2, uri.getType());
                        } else {
                            uri.setData(uriC2);
                        }
                    }
                }
                boolean z12 = ((Boolean) C3099q.f26624d.f26627c.a(Q7.T7)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
                HashMap map2 = new HashMap();
                if (z12) {
                    u9.f16801M = new T9(z9, interfaceC3067a, map2, map);
                    z9 = false;
                }
                if (uri != null) {
                    if (!z7 || c1172cq == null || !u9.h(interfaceC3067a, interfaceC0715Ef.getContext(), uri.getData().toString(), str)) {
                        interfaceC0715Ef.b0(new p105n3.f(uri, u9.f16801M), z9, z10);
                        return;
                    } else {
                        if (z12) {
                            map2.put((String) map.get("event_id"), Boolean.TRUE);
                            ((InterfaceC1984sa) interfaceC3067a).w("openIntentAsync", map2);
                            return;
                        }
                        return;
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    string = U9.c(U9.b(interfaceC0715Ef.getContext(), interfaceC0715Ef.T(), Uri.parse(string), interfaceC0715Ef.j(), interfaceC0715Ef.zzi(), interfaceC0715Ef.A0())).toString();
                }
                if (!z7 || c1172cq == null || !u9.h(interfaceC3067a, interfaceC0715Ef.getContext(), string, str)) {
                    interfaceC0715Ef.b0(new p105n3.f((String) map.get("i"), string, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), u9.f16801M), z9, z10);
                    return;
                } else {
                    if (z12) {
                        map2.put((String) map.get("event_id"), Boolean.TRUE);
                        ((InterfaceC1984sa) interfaceC3067a).w("openIntentAsync", map2);
                        return;
                    }
                    return;
                }
                break;
            case 11:
                List list = (List) this.f21882H;
                String str5 = (String) this.f21885K;
                AbstractC0990Xf abstractC0990Xf = (AbstractC0990Xf) this.f21884J;
                int i10 = AbstractC0990Xf.f17456l0;
                abstractC0990Xf.E((Map) obj, list, str5);
                return;
            case 13:
                InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) obj;
                interfaceC0715Ef2.l0((Ov) this.f21882H, (Qv) this.f21883I);
                AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef2.zzN();
                J7 j10 = Q7.t9;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j10)).booleanValue() && abstractC0990XfZzN != null) {
                    C1784oh c1784oh = (C1784oh) this.f21884J;
                    C0941Tm c0941Tm = (C0941Tm) this.f21885K;
                    abstractC0990XfZzN.o(c1784oh, c0941Tm.f16734i, c0941Tm.f16735j);
                    C1784oh c1784oh2 = (C1784oh) this.f21884J;
                    C0941Tm c0941Tm2 = (C0941Tm) this.f21885K;
                    abstractC0990XfZzN.p(c1784oh2, c0941Tm2.f16734i, c0941Tm2.f16729d);
                }
                if (!((Boolean) c3099q2.f26627c.a(Q7.jc)).booleanValue() || abstractC0990XfZzN == null) {
                    return;
                }
                Ov ov = (Ov) this.f21882H;
                C0890Qd c0890Qd = p083k3.l.f25980A.f26003w;
                InterfaceC0715Ef interfaceC0715Ef3 = abstractC0990XfZzN.f17457G;
                if (c0890Qd.e(interfaceC0715Ef3.getContext())) {
                    abstractC0990XfZzN.s("/logScionEvent");
                    new HashMap();
                    abstractC0990XfZzN.m("/logScionEvent", new C0968Vl(i9, interfaceC0715Ef3.getContext(), ov.f15291w0));
                    return;
                }
                return;
            case 18:
                AbstractC0852Nh abstractC0852Nh = (AbstractC0852Nh) obj;
                synchronized (((C1332fv) this.f21885K)) {
                    try {
                        C1332fv c1332fv = (C1332fv) this.f21885K;
                        if (c1332fv.f18845S) {
                            c1332fv.d();
                        }
                        if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f21882H) == null) {
                            Uw uw = ((C1332fv) this.f21885K).f18841O;
                            Ow ow = (Ow) this.f21883I;
                            ow.c(abstractC0852Nh.f21912a.f16755b);
                            ow.s(abstractC0852Nh.f21917f.f19824G);
                            ow.e(true);
                            uw.b(ow.zzm());
                        } else {
                            tw.g(abstractC0852Nh.f21912a.f16755b);
                            tw.e(abstractC0852Nh.f21917f.f19824G);
                            Ow ow2 = (Ow) this.f21883I;
                            ow2.e(true);
                            tw.a(ow2);
                            tw.h();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                String str6 = (String) obj;
                if (((InterfaceC0715Ef) this.f21882H).f().f15263i0) {
                    p083k3.l lVar = p083k3.l.f25980A;
                    lVar.f25990j.getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String str7 = ((InterfaceC0715Ef) this.f21882H).U().f16150b;
                    if (lVar.f25987g.a(((InterfaceC0715Ef) this.f21882H).getContext())) {
                        i8 = 2;
                    } else if (!(((Boolean) C3099q.f26624d.f26627c.a(Q7.f15666L5)).booleanValue() && ((InterfaceC0715Ef) this.f21882H).f().f15238S) && ((InterfaceC0715Ef) this.f21882H).f().f15253d0 == null) {
                        i8 = 1;
                    } else {
                        i8 = 2;
                    }
                    ((C1172cq) this.f21885K).E(new C0022w(jCurrentTimeMillis, i8, str7, str6));
                    return;
                }
                J7 j11 = Q7.p9;
                C3099q c3099q3 = C3099q.f26624d;
                if (!((Boolean) c3099q3.f26627c.a(j11)).booleanValue() || ((C1784oh) this.f21883I) == null || !C1784oh.b(str6)) {
                    ((C1488ix) this.f21884J).a(str6, null);
                    return;
                }
                C1784oh c1784oh3 = (C1784oh) this.f21883I;
                C1488ix c1488ix = (C1488ix) this.f21884J;
                Random random = C3097p.f26618f.f26623e;
                c1784oh3.getClass();
                if (TextUtils.isEmpty(str6)) {
                    return;
                }
                Cw.h2(Cw.e2(c1784oh3.c(str6, c1784oh3.f20306d.f19843a, random), ((Integer) c3099q3.f26627c.a(Q7.C9)).intValue(), TimeUnit.MILLISECONDS, c1784oh3.f20309g), new p004a3.b(c1784oh3, c1488ix, str6, 19, 0), c1784oh3.f20307e);
                return;
        }
    }

    public C2246xc(p004a3.b bVar, InterfaceC1165cj interfaceC1165cj, Executor executor) {
        this.f21881G = 1;
        this.f21882H = bVar;
        this.f21883I = interfaceC1165cj;
        this.f21884J = executor;
    }

    public C2246xc(View view, InterfaceC0715Ef interfaceC0715Ef, InterfaceC2148vi interfaceC2148vi, Pv pv) {
        this.f21881G = 12;
        this.f21883I = view;
        this.f21885K = interfaceC0715Ef;
        this.f21882H = interfaceC2148vi;
        this.f21884J = pv;
    }

    public C2246xc(U9 u9, Map map, InterfaceC3067a interfaceC3067a, String str) {
        this.f21881G = 6;
        this.f21882H = map;
        this.f21883I = interfaceC3067a;
        this.f21885K = str;
        this.f21884J = u9;
    }

    public /* synthetic */ C2246xc(AbstractC2090uc abstractC2090uc) {
        this.f21881G = 28;
        this.f21882H = null;
        this.f21883I = null;
        this.f21884J = null;
        this.f21885K = ZE.f17740e;
    }

    public /* synthetic */ C2246xc(AbstractC2142vc abstractC2142vc) {
        this.f21881G = 9;
    }

    public /* synthetic */ C2246xc(AbstractC2194wc abstractC2194wc) {
        this.f21881G = 22;
        this.f21882H = null;
        this.f21883I = null;
        this.f21884J = null;
        this.f21885K = null;
    }

    public C2246xc(AbstractC0990Xf abstractC0990Xf, List list, String str, Uri uri) {
        this.f21881G = 11;
        this.f21882H = list;
        this.f21885K = str;
        this.f21883I = uri;
        this.f21884J = abstractC0990Xf;
    }

    public C2246xc(AbstractC1567kN abstractC1567kN, Integer num) {
        this.f21881G = 29;
        this.f21885K = abstractC1567kN;
        this.f21883I = new C1294f8((CopyOnWriteArrayList) abstractC1567kN.f18519c.f18728J, (Object) null, 8);
        this.f21884J = new C2137vM(abstractC1567kN.f18520d.f21518b, null);
        this.f21882H = num;
    }

    public /* synthetic */ C2246xc(Object obj) {
        this.f21881G = 24;
        this.f21882H = null;
        this.f21883I = null;
        this.f21884J = null;
        this.f21885K = C1247eD.f18492d;
    }

    public /* synthetic */ C2246xc(Object obj, Object obj2, Object obj3, Object obj4, int i8) {
        this.f21881G = i8;
        this.f21882H = obj;
        this.f21883I = obj2;
        this.f21884J = obj3;
        this.f21885K = obj4;
    }

    public /* synthetic */ C2246xc(Object obj, Object obj2, Object obj3, Object obj4, int i8, int i9) {
        this.f21881G = i8;
        this.f21882H = obj2;
        this.f21883I = obj3;
        this.f21884J = obj4;
        this.f21885K = obj;
    }

    public /* synthetic */ C2246xc(Object obj, Object obj2, Object obj3, Object obj4, int i8, Object obj5) {
        this.f21881G = i8;
        this.f21882H = obj;
        this.f21885K = obj2;
        this.f21883I = obj3;
        this.f21884J = obj4;
    }

    public /* synthetic */ C2246xc(Map map, DE de, C1352gE c1352gE, Class cls) {
        this.f21881G = 26;
        this.f21882H = map;
        this.f21883I = de;
        this.f21884J = cls;
        this.f21885K = c1352gE;
    }

    public C2246xc(int i8) {
        this.f21881G = i8;
        if (i8 == 7) {
            this.f21882H = new Object();
            this.f21883I = new Object();
            return;
        }
        if (i8 != 17) {
            if (i8 == 21) {
                this.f21884J = new ArrayDeque();
                this.f21885K = null;
                this.f21882H = new LinkedBlockingQueue();
                this.f21883I = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, (BlockingQueue) this.f21882H);
                return;
            }
            if (i8 != 27) {
                this.f21882H = new C1534jr();
                this.f21883I = new C1534jr();
                this.f21884J = new p150t1.a(1);
            } else {
                this.f21882H = new HashMap();
                this.f21883I = new HashMap();
                this.f21884J = new HashMap();
                this.f21885K = new HashMap();
            }
        }
    }

    public C2246xc(Context context, ViewGroup viewGroup, InterfaceC0715Ef interfaceC0715Ef) {
        this.f21881G = 10;
        this.f21882H = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f21884J = viewGroup;
        this.f21883I = interfaceC0715Ef;
        this.f21885K = null;
    }

    public C2246xc(Context context, String str) {
        String packageName;
        this.f21881G = 5;
        this.f21882H = context;
        this.f21884J = str;
        this.f21885K = (String) AbstractC1717nH.f20087F.l();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f21883I = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        ((Map) this.f21883I).put("v", "3");
        ((Map) this.f21883I).put("os", Build.VERSION.RELEASE);
        ((Map) this.f21883I).put("api_v", Build.VERSION.SDK);
        Map map = (Map) this.f21883I;
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        map.put("device", p113o3.O.G());
        Map map2 = (Map) this.f21883I;
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        map2.put("app", packageName);
        ((Map) this.f21883I).put("is_lite_sdk", true != p113o3.O.d(context) ? "0" : "1");
        Context context2 = (Context) this.f21882H;
        K4 k8 = lVar.f25994n;
        k8.getClass();
        D4.b bVarB = AbstractC1988se.f20906a.b(new CallableC1497j5(k8, context2));
        try {
            ((Map) this.f21883I).put("network_coarse", Integer.toString(((C1015Zc) bVarB.get()).f17778j));
            ((Map) this.f21883I).put("network_fine", Integer.toString(((C1015Zc) bVarB.get()).f17779k));
        } catch (Exception e8) {
            p083k3.l.f25980A.f25987g.i("CsiConfiguration.CsiConfiguration", e8);
        }
        J7 j8 = Q7.Fa;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            Map map3 = (Map) this.f21883I;
            p113o3.O o7 = p083k3.l.f25980A.f25983c;
            map3.put("is_bstar", true != p113o3.O.b(context) ? "0" : "1");
        }
        J7 j9 = Q7.H8;
        O7 o8 = c3099q.f26627c;
        if (((Boolean) o8.a(j9)).booleanValue() && ((Boolean) o8.a(Q7.f15815e2)).booleanValue()) {
            p083k3.l lVar2 = p083k3.l.f25980A;
            if (AbstractC2987b.j0(lVar2.f25987g.f19811g)) {
                return;
            }
            ((Map) this.f21883I).put("plugin", lVar2.f25987g.f19811g);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        InterfaceC0815La interfaceC0815La = (InterfaceC0815La) obj;
        p113o3.I.k("callJs > getEngine: Promise fulfilled");
        Object obj2 = this.f21883I;
        C2040te c2040te = (C2040te) this.f21884J;
        C0915Sa c0915Sa = (C0915Sa) this.f21885K;
        C0725Fa c0725Fa = (C0725Fa) this.f21882H;
        try {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            String string = UUID.randomUUID().toString();
            M9.f14671o.b(string, new C0901Ra(c0915Sa, c0725Fa, c2040te));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", string);
            jSONObject.put("args", ((InterfaceC0859Oa) c0915Sa.f16434d).zzb(obj2));
            interfaceC0815La.g(jSONObject, (String) c0915Sa.f16432b);
        } catch (Exception e8) {
            try {
                c2040te.c(e8);
                p120p3.h.e("Unable to invokeJavascript", e8);
            } finally {
                c0725Fa.s();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        Tw tw;
        switch (this.f21881G) {
            case 6:
                p083k3.l.f25980A.f25987g.i("OpenGmsgHandler.attributionReportingManager", th);
                return;
            case 11:
                p120p3.h.g("Failed to parse gmsg params for: ".concat(String.valueOf((Uri) this.f21883I)));
                return;
            case 18:
                p120p3.h.e("Banner ad failed to load", th);
                C3117z0 c3117z0V = p113o3.r.v(th, ((C0823Li) ((C0776Ig) ((AbstractC1216di) this.f21884J)).f13974i0.zzb()).f14542l);
                C1332fv c1332fv = (C1332fv) this.f21885K;
                c1332fv.f18846T = c3117z0V;
                synchronized (c1332fv) {
                    try {
                        ((C1941rj) ((C0776Ig) ((AbstractC1216di) this.f21884J)).f13958a0.zzb()).y(((C1332fv) this.f21885K).f18846T);
                        AbstractC2987b.s0("BannerAdLoader.onFailure", ((C1332fv) this.f21885K).f18846T.f26629G, th);
                        C1332fv c1332fv2 = (C1332fv) this.f21885K;
                        if (c1332fv2.f18845S) {
                            c1332fv2.f();
                            C1332fv c1332fv3 = (C1332fv) this.f21885K;
                            c1332fv3.f18840N.a1(c1332fv3.f18842P.a());
                        }
                        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() && (tw = (Tw) this.f21882H) != null) {
                            tw.c(((C1332fv) this.f21885K).f18846T);
                            Ow ow = (Ow) this.f21883I;
                            ow.d(th);
                            ow.e(false);
                            tw.a(ow);
                            tw.h();
                        } else {
                            C1332fv c1332fv4 = (C1332fv) this.f21885K;
                            Uw uw = c1332fv4.f18841O;
                            Ow ow2 = (Ow) this.f21883I;
                            ow2.g(c1332fv4.f18846T);
                            ow2.d(th);
                            ow2.e(false);
                            uw.b(ow2.zzm());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                    break;
                }
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.ArrayList] */
    public C2246xc(JsonReader jsonReader, C0973Wc c0973Wc) throws JSONException, IOException {
        Bundle bundle;
        Bundle bundle2;
        this.f21881G = 19;
        this.f21885K = c0973Wc;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() && c0973Wc != null && (bundle2 = c0973Wc.f17262S) != null) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle2, "server-response-parse-start");
        }
        ?? EmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        Qv qv = null;
        while (jsonReader.hasNext()) {
            String strNextName = jsonReader.nextName();
            if ("responses".equals(strNextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String strNextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(strNextName2)) {
                        EmptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            EmptyList.add(new Ov(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (strNextName2.equals("common")) {
                        qv = new Qv(jsonReader);
                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15741V1)).booleanValue() && c0973Wc != null && (bundle = c0973Wc.f17262S) != null) {
                            bundle.putLong("normalize-ad-response-start", qv.f16167s);
                            bundle.putLong("normalize-ad-response-end", qv.f16168t);
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (strNextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String strNextString = null;
                    JSONObject jSONObjectA0 = null;
                    while (jsonReader.hasNext()) {
                        String strNextName3 = jsonReader.nextName();
                        if ("name".equals(strNextName3)) {
                            strNextString = jsonReader.nextString();
                        } else if ("info".equals(strNextName3)) {
                            jSONObjectA0 = Q3.b.a0(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (strNextString != null) {
                        arrayList.add(new Sv(jSONObjectA0, strNextString));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f21884J = arrayList;
        this.f21882H = EmptyList;
        this.f21883I = qv == null ? new Qv(new JsonReader(new StringReader("{}"))) : qv;
    }

    public C2246xc(C1703n3 c1703n3, PriorityBlockingQueue priorityBlockingQueue, K4 k8) {
        this.f21881G = 4;
        this.f21882H = new HashMap();
        this.f21885K = k8;
        this.f21883I = c1703n3;
        this.f21884J = priorityBlockingQueue;
    }

    public C2246xc(LE le) {
        this.f21881G = 27;
        this.f21882H = new HashMap(le.f14490a);
        this.f21883I = new HashMap(le.f14491b);
        this.f21884J = new HashMap(le.f14492c);
        this.f21885K = new HashMap(le.f14493d);
    }
}
