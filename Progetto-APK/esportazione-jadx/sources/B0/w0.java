package B0;

import C2.C0091g;
import D3.C0163g;
import W0.C0371d;
import Z3.C0435q;
import Z3.RunnableC0439v;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.LG;
import com.google.android.gms.internal.cast.C2423a0;
import com.google.android.gms.internal.cast.C2497t;
import com.google.android.gms.internal.cast.P1;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.pal.AbstractC2864y4;
import com.google.android.gms.internal.pal.O4;
import java.io.IOException;
import java.io.Serializable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public class w0 implements p052g4.f, O4, O5.m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1119G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f1120H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f1121I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f1122J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f1123K;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w0(int i8) {
        this();
        this.f1119G = i8;
        if (i8 != 5) {
            return;
        }
        this.f1123K = null;
        this.f1122J = null;
        this.f1120H = 0;
        this.f1121I = new Object();
    }

    @Override // com.google.android.gms.internal.pal.O4
    public final byte[] a(int i8, byte[] bArr) throws InvalidAlgorithmParameterException {
        if (i8 > this.f1120H) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        ((Mac) ((ThreadLocal) this.f1121I).get()).update(bArr);
        return Arrays.copyOf(((Mac) ((ThreadLocal) this.f1121I).get()).doFinal(), i8);
    }

    public final void b(com.google.android.gms.internal.atv_ads_framework.x0 x0Var) {
        if (x0Var != null) {
            H5.d dVar = (H5.d) x0Var;
            C0371d c0371d = (C0371d) this.f1121I;
            C0371d[] c0371dArr = (C0371d[]) dVar.f22391I;
            for (C0371d c0371d2 : c0371dArr) {
                if (c0371d2 != null) {
                    c0371d2.c();
                }
            }
            dVar.J(c0371dArr, c0371d);
            H5.b bVar = (H5.b) dVar.f22390H;
            boolean z7 = dVar.f3778K;
            p130q5.o oVar = z7 ? bVar.f3767b : bVar.f3769d;
            p130q5.o oVar2 = z7 ? bVar.f3768c : bVar.f3770e;
            int iP = dVar.p((int) oVar.f29646b);
            int iP2 = dVar.p((int) oVar2.f29646b);
            int i8 = -1;
            int i9 = 0;
            int iMax = 1;
            while (iP < iP2) {
                C0371d c0371d3 = c0371dArr[iP];
                if (c0371d3 != null) {
                    int i10 = c0371d3.f7392f;
                    int i11 = i10 - i8;
                    if (i11 == 0) {
                        i9++;
                    } else {
                        if (i11 == 1) {
                            iMax = Math.max(iMax, i9);
                            i8 = c0371d3.f7392f;
                        } else if (i11 < 0 || i10 >= c0371d.f7392f || i11 > iP) {
                            c0371dArr[iP] = null;
                        } else {
                            if (iMax > 2) {
                                i11 *= iMax - 2;
                            }
                            boolean z8 = i11 >= iP;
                            for (int i12 = 1; i12 <= i11 && !z8; i12++) {
                                z8 = c0371dArr[iP - i12] != null;
                            }
                            if (z8) {
                                c0371dArr[iP] = null;
                            } else {
                                i8 = c0371d3.f7392f;
                            }
                        }
                        i9 = 1;
                    }
                }
                iP++;
            }
        }
    }

    public final void c() {
        try {
            ((p023c6.b) this.f1122J).flush();
        } catch (IOException e8) {
            throw new RuntimeException(e8);
        }
    }

    public final boolean d(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException(p000a.r.f("Invalid initial window size: ", i8));
        }
        int i9 = i8 - this.f1120H;
        this.f1120H = i8;
        for (T1.c cVar : ((p007a6.f) ((p007a6.k) this.f1121I)).j()) {
            cVar.b(i9);
        }
        return i9 > 0;
    }

    public final void e() {
        synchronized (this.f1121I) {
            try {
                H1.i(this.f1120H > 0);
                int i8 = this.f1120H - 1;
                this.f1120H = i8;
                if (i8 == 0) {
                    Object obj = this.f1123K;
                    if (((HandlerThread) obj) != null) {
                        ((HandlerThread) obj).quit();
                        this.f1123K = null;
                        this.f1122J = null;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(T1.c cVar, int i8) {
        ((T1.c) this.f1123K).b(i8);
        g();
    }

    public final void g() {
        T1.c[] cVarArrJ = ((p007a6.f) ((p007a6.k) this.f1121I)).j();
        Collections.shuffle(Arrays.asList(cVarArrJ));
        ((T1.c) this.f1123K).getClass();
        int length = cVarArrJ.length;
        T1.c[] cVarArrJ2 = ((p007a6.f) ((p007a6.k) this.f1121I)).j();
        if (cVarArrJ2.length <= 0) {
            return;
        }
        T1.c cVar = cVarArrJ2[0];
        Math.min(cVar.f6519a, cVar.h());
        cVar.getClass();
        throw null;
    }

    public final C3117z0 h() {
        C3117z0 c3117z0;
        w0 w0Var = (w0) this.f1123K;
        if (w0Var == null) {
            c3117z0 = null;
        } else {
            String str = (String) w0Var.f1122J;
            c3117z0 = new C3117z0(w0Var.f1120H, (String) w0Var.f1121I, str, null, null);
        }
        return new C3117z0(this.f1120H, (String) this.f1121I, (String) this.f1122J, c3117z0, null);
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00c2  */
    public final F.d i() throws Z3.a0 {
        String str;
        p094m0.H h8 = (p094m0.H) this.f1122J;
        int i8 = h8.f26697d;
        int i9 = 0;
        boolean z7 = i8 == 8;
        Z3.i0 i0Var = (Z3.i0) this.f1121I;
        i0Var.f8349c.f8345b.edit().putBoolean("is_pub_misconfigured", z7).commit();
        int i10 = i8 - 1;
        if (i8 == 0) {
            throw null;
        }
        switch (i10) {
            case 1:
            case 2:
            case 3:
                this.f1120H = 3;
                break;
            case 4:
                this.f1120H = 2;
                break;
            case 5:
                this.f1120H = 1;
                break;
            case 6:
                throw new Z3.a0(1, "Invalid response from server: ".concat(String.valueOf(h8.f26696c)));
            case 7:
                throw new Z3.a0(3, "Publisher misconfiguration: ".concat(String.valueOf(h8.f26696c)));
            default:
                throw new Z3.a0(1, "Invalid response from server.");
        }
        int i11 = h8.f26698e;
        int i12 = i11 - 1;
        if (i11 == 0) {
            throw null;
        }
        if (i12 == 1) {
            this.f1123K = p168v4.a.f30720I;
        } else {
            if (i12 != 2) {
                throw new Z3.a0(1, "Invalid response from server.");
            }
            this.f1123K = p168v4.a.f30719H;
        }
        String str2 = h8.f26694a;
        C0435q c0435q = str2 == null ? null : new C0435q(h8.f26695b, str2);
        i0Var.f8349c.f8345b.edit().putStringSet("stored_info", new HashSet((List) h8.f26699f)).commit();
        for (Z3.B b8 : (List) h8.f26700g) {
            int i13 = b8.f8243b;
            int i14 = i13 - 1;
            if (i13 == 0) {
                throw null;
            }
            if (i14 == 0) {
                str = null;
            } else if (i14 == 1) {
                str = "write";
            } else if (i14 != 2) {
                str = null;
            } else {
                str = "clear";
            }
            if (str != null) {
                String str3 = b8.f8242a;
                Z3.J[] jArr = {i0Var.f8348b};
                Z3.Z z8 = i0Var.f8347a;
                z8.getClass();
                z8.f8283a.execute(new RunnableC0439v(str, str3, jArr, i9));
            }
        }
        return new F.d(this.f1120H, (p168v4.a) this.f1123K, c0435q);
    }

    public final Looper j() {
        Looper looper;
        synchronized (this.f1121I) {
            try {
                if (this.f1120H != 0) {
                    com.bumptech.glide.c.i((HandlerThread) this.f1123K, "Invalid state: handlerThread should already been initialized.");
                } else if (((HandlerThread) this.f1123K) == null) {
                    p113o3.I.k("Starting the looper thread.");
                    HandlerThread handlerThread = new HandlerThread("LooperProvider");
                    this.f1123K = handlerThread;
                    handlerThread.start();
                    this.f1122J = new E1.W(((HandlerThread) this.f1123K).getLooper(), 1);
                    p113o3.I.k("Looper thread started.");
                } else {
                    p113o3.I.k("Resuming the looper thread");
                    this.f1121I.notifyAll();
                }
                this.f1120H++;
                looper = ((HandlerThread) this.f1123K).getLooper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public JSONObject k() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f1120H);
        jSONObject.put("Message", (String) this.f1121I);
        jSONObject.put("Domain", (String) this.f1122J);
        w0 w0Var = (w0) this.f1123K;
        if (w0Var == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", w0Var.k());
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0046  */
    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        p109o.j jVar;
        int i8 = 0;
        com.google.android.gms.internal.cast.N n7 = (com.google.android.gms.internal.cast.N) this.f1121I;
        String str = (String) this.f1122J;
        int i9 = this.f1120H;
        SharedPreferences sharedPreferences = (SharedPreferences) this.f1123K;
        Bundle bundle = (Bundle) obj;
        C0163g c0163g = n7.f22496a;
        com.bumptech.glide.c.h(c0163g);
        C2497t c2497t = n7.f22497b;
        if (i9 == 3) {
            jVar = new p109o.j();
            jVar.f27592G = n7;
            jVar.f27593H = n7.f22498c;
            jVar.f27594I = str;
            jVar.f27596K = new P1(jVar, i8);
            c0163g.a(new P1(jVar));
            if (c2497t != null) {
                com.google.android.gms.internal.cast.Y y7 = new com.google.android.gms.internal.cast.Y(jVar, 1);
                C2497t.f22791i.b("register callback = %s", y7);
                com.bumptech.glide.c.d("Must be called from the main thread.");
                c2497t.f22793b.add(y7);
            }
        } else if (i9 == 2) {
            i9 = 2;
            jVar = new p109o.j();
            jVar.f27592G = n7;
            jVar.f27593H = n7.f22498c;
            jVar.f27594I = str;
            jVar.f27596K = new P1(jVar, i8);
            c0163g.a(new P1(jVar));
            if (c2497t != null) {
                com.google.android.gms.internal.cast.Y y8 = new com.google.android.gms.internal.cast.Y(jVar, 1);
                C2497t.f22791i.b("register callback = %s", y8);
                com.bumptech.glide.c.d("Must be called from the main thread.");
                c2497t.f22793b.add(y8);
            }
        }
        if (i9 == 1 || i9 == 2) {
            C2423a0 c2423a0 = new C2423a0(sharedPreferences, n7, n7.f22498c, bundle, str);
            c0163g.a(new C0091g(c2423a0, 26));
            if (c2497t != null) {
                com.google.android.gms.internal.cast.Y y9 = new com.google.android.gms.internal.cast.Y(c2423a0, 0);
                C2497t.f22791i.b("register callback = %s", y9);
                com.bumptech.glide.c.d("Must be called from the main thread.");
                c2497t.f22793b.add(y9);
            }
        }
    }

    public String toString() {
        switch (this.f1119G) {
            case 3:
                try {
                    return k().toString(2);
                } catch (JSONException unused) {
                    return "Error forming toString output.";
                }
            case 10:
                com.google.android.gms.internal.atv_ads_framework.x0[] x0VarArr = (com.google.android.gms.internal.atv_ads_framework.x0[]) this.f1122J;
                com.google.android.gms.internal.atv_ads_framework.x0 x0Var = x0VarArr[0];
                if (x0Var == null) {
                    x0Var = x0VarArr[this.f1120H + 1];
                }
                Formatter formatter = new Formatter();
                for (int i8 = 0; i8 < ((C0371d[]) x0Var.f22391I).length; i8++) {
                    try {
                        formatter.format("CW %3d:", Integer.valueOf(i8));
                        for (int i9 = 0; i9 < this.f1120H + 2; i9++) {
                            Object obj = this.f1122J;
                            if (((com.google.android.gms.internal.atv_ads_framework.x0[]) obj)[i9] == null) {
                                formatter.format("    |   ", new Object[0]);
                            } else {
                                C0371d c0371d = ((C0371d[]) ((com.google.android.gms.internal.atv_ads_framework.x0[]) obj)[i9].f22391I)[i8];
                                if (c0371d == null) {
                                    formatter.format("    |   ", new Object[0]);
                                } else {
                                    formatter.format(" %3d|%3d", Integer.valueOf(c0371d.f7392f), Integer.valueOf(c0371d.f7391e));
                                }
                            }
                        }
                        formatter.format("%n", new Object[0]);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                formatter.close();
                                break;
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                }
                String string = formatter.toString();
                formatter.close();
                return string;
            default:
                return super.toString();
        }
    }

    public /* synthetic */ w0(int i8, int i9) {
        this.f1119G = i8;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public w0(int i8, String str, String str2) {
        this(i8, str, str2, (w0) null);
        this.f1119G = 3;
    }

    public w0(int i8, String str, String str2, w0 w0Var) {
        this.f1119G = 3;
        this.f1120H = i8;
        this.f1121I = str;
        this.f1122J = str2;
        this.f1123K = w0Var;
    }

    public /* synthetic */ w0(com.google.android.gms.internal.cast.N n7, String str, int i8, SharedPreferences sharedPreferences) {
        this.f1119G = 7;
        this.f1121I = n7;
        this.f1122J = str;
        this.f1120H = i8;
        this.f1123K = sharedPreferences;
    }

    public /* synthetic */ w0(Object obj, Object obj2, Serializable serializable, int i8, int i9) {
        this.f1119G = i9;
        this.f1121I = obj;
        this.f1122J = obj2;
        this.f1123K = serializable;
        this.f1120H = i8;
    }

    public w0(Z3.i0 i0Var, p094m0.H h8) {
        this.f1119G = 8;
        this.f1120H = 0;
        this.f1123K = p168v4.a.f30718G;
        this.f1121I = i0Var;
        this.f1122J = h8;
    }

    public w0(CastDevice castDevice, D3.I i8) {
        this.f1119G = 6;
        this.f1121I = castDevice;
        this.f1122J = i8;
        this.f1120H = 0;
    }

    public w0(InterfaceC0715Ef interfaceC0715Ef) throws p105n3.h {
        this.f1119G = 4;
        this.f1121I = interfaceC0715Ef.getLayoutParams();
        ViewParent parent = interfaceC0715Ef.getParent();
        this.f1123K = interfaceC0715Ef.D();
        if (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.f1122J = viewGroup;
            this.f1120H = viewGroup.indexOfChild(interfaceC0715Ef.j());
            ((ViewGroup) this.f1122J).removeView(interfaceC0715Ef.j());
            interfaceC0715Ef.G0(true);
            return;
        }
        throw new p105n3.h("Could not get the parent of the WebView for an overlay.");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    public w0(String str, SecretKeySpec secretKeySpec) throws GeneralSecurityException {
        byte b8;
        int i8;
        this.f1119G = 9;
        this.f1121I = new LG(this, 1);
        if (AbstractC2864y4.y(2)) {
            this.f1122J = str;
            this.f1123K = secretKeySpec;
            if (secretKeySpec.getEncoded().length >= 16) {
                switch (str) {
                    case "HMACSHA1":
                        b8 = 0;
                        break;
                    case "HMACSHA224":
                        b8 = 1;
                        break;
                    case "HMACSHA256":
                        b8 = 2;
                        break;
                    case "HMACSHA384":
                        b8 = 3;
                        break;
                    case "HMACSHA512":
                        b8 = 4;
                        break;
                    default:
                        b8 = -1;
                        break;
                }
                if (b8 != 0) {
                    if (b8 == 1) {
                        i8 = 28;
                    } else if (b8 == 2) {
                        i8 = 32;
                    } else if (b8 == 3) {
                        i8 = 48;
                    } else {
                        if (b8 != 4) {
                            throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
                        }
                        i8 = 64;
                    }
                    this.f1120H = i8;
                } else {
                    this.f1120H = 20;
                }
                ((ThreadLocal) this.f1121I).get();
                return;
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    public w0(C0371d c0371d, H5.b bVar) {
        this.f1119G = 10;
        this.f1121I = c0371d;
        int i8 = c0371d.f7388b;
        this.f1120H = i8;
        this.f1123K = bVar;
        this.f1122J = new com.google.android.gms.internal.atv_ads_framework.x0[i8 + 2];
    }

    public w0() {
        this.f1119G = 0;
        this.f1121I = new Object();
        this.f1122J = null;
        this.f1123K = null;
        this.f1120H = 0;
    }

    public w0(UUID uuid, int i8, byte[] bArr, UUID[] uuidArr) {
        this.f1119G = 2;
        this.f1121I = uuid;
        this.f1120H = i8;
        this.f1122J = bArr;
        this.f1123K = uuidArr;
    }
}
