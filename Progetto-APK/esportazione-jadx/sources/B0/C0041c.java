package B0;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.media.Spatializer;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.measurement.Q1;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import p094m0.AbstractC3124g;
import p141s0.C3188m;
import p141s0.InterfaceC3183h;

/* JADX INFO: renamed from: B0.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0041c implements P2.h, J2.q {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f913G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f914H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f915I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f916J;

    public C0041c(p021c4.Z z7, String str) {
        this.f916J = z7;
        com.bumptech.glide.c.e(str);
        this.f914H = str;
    }

    public static void d(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f8 = fArr2[10];
        float f9 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f9 * f9) + (f8 * f8));
        float f10 = fArr2[10];
        fArr[0] = f10 / fSqrt;
        float f11 = fArr2[8];
        fArr[2] = f11 / fSqrt;
        fArr[8] = (-f11) / fSqrt;
        fArr[10] = f10 / fSqrt;
    }

    @Override // J2.q
    public final boolean a() {
        this.f913G = ((ConnectivityManager) ((P2.h) this.f915I).get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) ((P2.h) this.f915I).get()).registerDefaultNetworkCallback((ConnectivityManager.NetworkCallback) this.f916J);
            return true;
        } catch (RuntimeException e8) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e8);
            }
            return false;
        }
    }

    @Override // J2.q
    public final void b() {
        ((ConnectivityManager) ((P2.h) this.f915I).get()).unregisterNetworkCallback((ConnectivityManager.NetworkCallback) this.f916J);
    }

    public final void c() {
        p151t2.d.k((p151t2.d) this.f916J, this, false);
    }

    public final int e(int i8, int i9, int i10) {
        boolean z7 = this.f913G;
        p176w5.b bVar = (p176w5.b) this.f914H;
        return z7 ? bVar.b(i9, i8) : bVar.b(i8, i9) ? (i10 << 1) | 1 : i10 << 1;
    }

    public final byte[] f(UUID uuid, G0.u uVar) throws G0.B {
        String str;
        String str2 = uVar.f3381b;
        if (this.f913G || TextUtils.isEmpty(str2)) {
            str2 = (String) this.f915I;
        }
        if (TextUtils.isEmpty(str2)) {
            Map mapEmptyMap = Collections.emptyMap();
            Uri uri = Uri.EMPTY;
            H1.k(uri, "The uri must be set.");
            throw new G0.B(new C3188m(uri, 0L, 1, null, mapEmptyMap, 0L, -1L, null, 0, null), uri, z4.i0.f31862M, 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = AbstractC3124g.f26856e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = AbstractC3124g.f26854c.equals(uuid) ? "application/json" : "application/octet-stream";
        }
        map.put("Content-Type", str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (((Map) this.f916J)) {
            map.putAll((Map) this.f916J);
        }
        return Q3.b.e(((InterfaceC3183h) this.f914H).a(), str2, uVar.f3380a, map);
    }

    public final byte[] g(G0.v vVar) {
        return Q3.b.e(((InterfaceC3183h) this.f914H).a(), vVar.f3383b + "&signedRequest=" + p117p0.M.o(vVar.f3382a), null, Collections.emptyMap());
    }

    @Override // P2.h
    public final Object get() {
        if (this.f913G) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        J6.r.b("Glide registry");
        this.f913G = true;
        try {
            return E3.f.h((com.bumptech.glide.b) this.f914H, (List) this.f915I);
        } finally {
            this.f913G = false;
            Trace.endSection();
        }
    }

    public final File h() {
        File file;
        synchronized (((p151t2.d) this.f916J)) {
            try {
                Object obj = this.f914H;
                if (((p151t2.b) obj).f30268f != this) {
                    throw new IllegalStateException();
                }
                if (!((p151t2.b) obj).f30267e) {
                    ((boolean[]) this.f915I)[0] = true;
                }
                file = ((p151t2.b) obj).f30266d[0];
                ((p151t2.d) this.f916J).f30276G.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    public final void i() {
        int i8 = 0;
        while (true) {
            Object obj = this.f914H;
            if (i8 >= ((p176w5.b) obj).f31091G) {
                return;
            }
            int i9 = i8 + 1;
            for (int i10 = i9; i10 < ((p176w5.b) obj).f31092H; i10++) {
                if (((p176w5.b) obj).b(i8, i10) != ((p176w5.b) obj).b(i10, i8)) {
                    ((p176w5.b) obj).a(i10, i8);
                    ((p176w5.b) obj).a(i8, i10);
                }
            }
            i8 = i9;
        }
    }

    public final L5.c j() throws p130q5.e {
        Object obj = this.f916J;
        if (((L5.c) obj) != null) {
            return (L5.c) obj;
        }
        int iE = 0;
        int iE2 = 0;
        for (int i8 = 0; i8 < 6; i8++) {
            iE2 = e(i8, 8, iE2);
        }
        int iE3 = e(8, 7, e(8, 8, e(7, 8, iE2)));
        for (int i9 = 5; i9 >= 0; i9--) {
            iE3 = e(8, i9, iE3);
        }
        int i10 = ((p176w5.b) this.f914H).f31092H;
        int i11 = i10 - 7;
        for (int i12 = i10 - 1; i12 >= i11; i12--) {
            iE = e(8, i12, iE);
        }
        for (int i13 = i10 - 8; i13 < i10; i13++) {
            iE = e(i13, 8, iE);
        }
        L5.c cVarA = L5.c.a(iE3, iE);
        if (cVarA == null) {
            cVarA = L5.c.a(iE3 ^ 21522, iE ^ 21522);
        }
        this.f916J = cVarA;
        if (cVarA != null) {
            return cVarA;
        }
        throw p130q5.e.a();
    }

    public final L5.f k() throws p130q5.e {
        L5.f fVar = (L5.f) this.f915I;
        if (fVar != null) {
            return fVar;
        }
        int i8 = ((p176w5.b) this.f914H).f31092H;
        int i9 = (i8 - 17) / 4;
        if (i9 <= 6) {
            return L5.f.c(i9);
        }
        int i10 = i8 - 11;
        int iE = 0;
        int iE2 = 0;
        for (int i11 = 5; i11 >= 0; i11--) {
            for (int i12 = i8 - 9; i12 >= i10; i12--) {
                iE2 = e(i12, i11, iE2);
            }
        }
        L5.f fVarB = L5.f.b(iE2);
        if (fVarB != null && (fVarB.f4726a * 4) + 17 == i8) {
            this.f915I = fVarB;
            return fVarB;
        }
        for (int i13 = 5; i13 >= 0; i13--) {
            for (int i14 = i8 - 9; i14 >= i10; i14--) {
                iE = e(i13, i14, iE);
            }
        }
        L5.f fVarB2 = L5.f.b(iE);
        if (fVarB2 == null || (fVarB2.f4726a * 4) + 17 != i8) {
            throw p130q5.e.a();
        }
        this.f915I = fVarB2;
        return fVarB2;
    }

    public final void l() {
        if (((L5.c) this.f916J) == null) {
            return;
        }
        int i8 = p156u.h.c(8)[((L5.c) this.f916J).f4710b];
        p176w5.b bVar = (p176w5.b) this.f914H;
        int i9 = bVar.f31092H;
        for (int i10 = 0; i10 < i9; i10++) {
            for (int i11 = 0; i11 < i9; i11++) {
                if (A0.O.d(i8, i10, i11)) {
                    bVar.a(i11, i10);
                }
            }
        }
    }

    public final void m(boolean z7) {
        if (this.f913G) {
            final int i8 = 1;
            ((p117p0.I) ((p117p0.q) this.f916J)).c(new Runnable(this) { // from class: B0.a

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C0041c f906H;

                {
                    this.f906H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i9 = i8;
                    C0041c c0041c = this.f906H;
                    switch (i9) {
                        case 0:
                            ((Context) c0041c.f914H).registerReceiver((C0039b) c0041c.f915I, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
                            break;
                        default:
                            ((Context) c0041c.f914H).unregisterReceiver((C0039b) c0041c.f915I);
                            break;
                    }
                }
            });
            this.f913G = false;
        }
    }

    public final String n() {
        if (!this.f913G) {
            this.f913G = true;
            p021c4.Z z7 = (p021c4.Z) this.f916J;
            this.f915I = z7.s().getString((String) this.f914H, null);
        }
        return (String) this.f915I;
    }

    public final void o(String str) {
        SharedPreferences.Editor editorEdit = ((p021c4.Z) this.f916J).s().edit();
        editorEdit.putString((String) this.f914H, str);
        editorEdit.apply();
        this.f915I = str;
    }

    public C0041c(p176w5.b bVar) throws p130q5.e {
        int i8 = bVar.f31092H;
        if (i8 < 21 || (i8 & 3) != 1) {
            throw p130q5.e.a();
        }
        this.f914H = bVar;
    }

    public C0041c() {
        this.f914H = new float[16];
        this.f915I = new float[16];
        this.f916J = new p016c.g();
    }

    public C0041c(Context context, Looper looper, Looper looper2, L l4, p117p0.G g8) {
        this.f914H = context.getApplicationContext();
        this.f916J = g8.a(looper, null);
        this.f915I = new C0039b(this, g8.a(looper2, null), l4);
    }

    public C0041c(Object obj, p135r2.b bVar) {
        this.f913G = false;
        this.f914H = obj;
        this.f915I = bVar;
        this.f916J = null;
    }

    public C0041c(String str, boolean z7, InterfaceC3183h interfaceC3183h) {
        H1.d((z7 && TextUtils.isEmpty(str)) ? false : true);
        this.f914H = interfaceC3183h;
        this.f915I = str;
        this.f913G = z7;
        this.f916J = new HashMap();
    }

    public C0041c(p135r2.o oVar) {
        this.f913G = false;
        this.f914H = null;
        this.f915I = null;
        this.f916J = oVar;
    }

    public C0041c(com.bumptech.glide.b bVar, ArrayList arrayList, Q1 q7) {
        this.f914H = bVar;
        this.f915I = arrayList;
        this.f916J = q7;
    }

    public C0041c(J3.k kVar, J2.p pVar) {
        this.f916J = new p082k2.h(this, 1);
        this.f915I = kVar;
        this.f914H = pVar;
    }

    public C0041c(p151t2.d dVar, p151t2.b bVar) {
        this.f916J = dVar;
        this.f914H = bVar;
        this.f915I = bVar.f30267e ? null : new boolean[dVar.f30282M];
    }

    public C0041c(Context context, R0.q qVar, Boolean bool) {
        AudioManager audioManagerF = context == null ? null : p102n0.c.f(context);
        if (audioManagerF != null && (bool == null || !bool.booleanValue())) {
            Spatializer spatializer = audioManagerF.getSpatializer();
            this.f914H = spatializer;
            this.f913G = spatializer.getImmersiveAudioLevel() != 0;
            this.f916J = new R0.l(qVar);
            Looper looperMyLooper = Looper.myLooper();
            H1.j(looperMyLooper);
            Handler handler = new Handler(looperMyLooper);
            this.f915I = handler;
            spatializer.addOnSpatializerStateChangedListener(new D0.O(1, handler), (Spatializer.OnSpatializerStateChangedListener) this.f916J);
            return;
        }
        this.f914H = null;
        this.f913G = false;
        this.f915I = null;
        this.f916J = null;
    }
}
