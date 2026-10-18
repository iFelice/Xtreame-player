package p096m2;

import C3.F;
import F2.o;
import F2.w;
import F3.a;
import F3.h;
import H3.f;
import H3.y;
import I0.l;
import I0.s;
import K3.InterfaceC0243p;
import P1.z;
import Q6.j;
import Q6.m;
import Z3.C;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.PowerManager;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.measurement.InterfaceC2643v;
import com.google.api.Service;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import p000a.r;
import p007a6.g;
import p021c4.C0597l0;
import p021c4.E;
import p021c4.F0;
import p021c4.K0;
import p021c4.T;
import p021c4.Z;
import p021c4.o1;
import p039f.S;
import p052g4.i;
import p113o3.J;
import p113o3.O;
import p117p0.x;
import p176w5.b;
import p178x.n;
import p190y4.k;
import p196z2.d;
import z4.H;
import z4.d0;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements s, o, p120p3.c, a, InterfaceC0243p, InterfaceC2643v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27209G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27210H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27211I;

    public c(int i8) {
        this.f27209G = i8;
        if (i8 != 13) {
            this.f27210H = new HashMap();
            this.f27211I = new A2.c(0);
        } else {
            this.f27210H = HttpUrl.FRAGMENT_ENCODE_SET;
            this.f27211I = new ArrayList();
        }
    }

    public static c f(String str) {
        return new c(26, str, (Object) null);
    }

    public static p130q5.o t(p130q5.o oVar, float f8, float f9) {
        float f10 = oVar.f29645a;
        float f11 = f10 < f8 ? f10 - 1.0f : f10 + 1.0f;
        float f12 = oVar.f29646b;
        return new p130q5.o(f11, f12 < f9 ? f12 - 1.0f : f12 + 1.0f);
    }

    public static p130q5.o y(p130q5.o oVar, p130q5.o oVar2, int i8) {
        float f8 = oVar2.f29645a;
        float f9 = oVar.f29645a;
        float f10 = i8 + 1;
        float f11 = oVar2.f29646b;
        float f12 = oVar.f29646b;
        return new p130q5.o(f9 + ((f8 - f9) / f10), f12 + ((f11 - f12) / f10));
    }

    public static String z(j jVar) {
        long j8 = jVar.f6064H;
        if (j8 <= 64) {
            return jVar.i0().d();
        }
        return jVar.j0((int) Math.min(j8, 64L)).d() + "...";
    }

    public final int A(p130q5.o oVar, p130q5.o oVar2) {
        int i8 = (int) oVar.f29645a;
        int i9 = (int) oVar.f29646b;
        int i10 = (int) oVar2.f29645a;
        int i11 = (int) oVar2.f29646b;
        int i12 = 0;
        boolean z7 = Math.abs(i11 - i9) > Math.abs(i10 - i8);
        if (z7) {
            i8 = i9;
            i9 = i8;
            i10 = i11;
            i11 = i10;
        }
        int iAbs = Math.abs(i10 - i8);
        int iAbs2 = Math.abs(i11 - i9);
        int i13 = (-iAbs) / 2;
        int i14 = i9 < i11 ? 1 : -1;
        int i15 = i8 >= i10 ? -1 : 1;
        boolean zB = ((b) this.f27210H).b(z7 ? i9 : i8, z7 ? i8 : i9);
        while (i8 != i10) {
            boolean zB2 = ((b) this.f27210H).b(z7 ? i9 : i8, z7 ? i8 : i9);
            if (zB2 != zB) {
                i12++;
                zB = zB2;
            }
            i13 += iAbs2;
            if (i13 > 0) {
                if (i9 == i11) {
                    break;
                }
                i9 += i14;
                i13 -= iAbs;
            }
            i8 += i15;
        }
        return i12;
    }

    public final void B(boolean z7, boolean z8) {
        if (z7 && ((PowerManager.WakeLock) this.f27211I) == null) {
            PowerManager powerManager = (PowerManager) ((Context) this.f27210H).getSystemService("power");
            if (powerManager == null) {
                x.f("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            } else {
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.f27211I = wakeLockNewWakeLock;
                wakeLockNewWakeLock.setReferenceCounted(false);
            }
        }
        Object obj = this.f27211I;
        if (((PowerManager.WakeLock) obj) == null) {
            return;
        }
        if (z7 && z8) {
            ((PowerManager.WakeLock) obj).acquire();
        } else {
            ((PowerManager.WakeLock) obj).release();
        }
    }

    @Override // I0.s
    public final S0.o C(I0.o oVar, l lVar) {
        return new e(5, ((s) this.f27210H).C(oVar, lVar), (List) this.f27211I);
    }

    public final void D() {
        C0597l0 c0597l0 = (C0597l0) ((K0) this.f27211I).f10616G;
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        SparseArray sparseArrayT = z7.t();
        o1 o1Var = (o1) this.f27210H;
        sparseArrayT.put(o1Var.f11320I, Long.valueOf(o1Var.f11319H));
        Z z8 = c0597l0.f11257N;
        C0597l0.i(z8);
        int[] iArr = new int[sparseArrayT.size()];
        long[] jArr = new long[sparseArrayT.size()];
        for (int i8 = 0; i8 < sparseArrayT.size(); i8++) {
            iArr[i8] = sparseArrayT.keyAt(i8);
            jArr[i8] = ((Long) sparseArrayT.valueAt(i8)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        z8.f11098U.w(bundle);
    }

    @Override // I0.s
    public final S0.o H() {
        return new e(5, ((s) this.f27210H).H(), (List) this.f27211I);
    }

    @Override // F3.a
    public final void a(Bitmap bitmap) {
        e eVar = (e) this.f27210H;
        eVar.f27216I = bitmap;
        Object obj = this.f27211I;
        ((h) obj).f3209l = eVar;
        ((h) obj).b();
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        F f8 = (F) this.f27210H;
        String str = (String) this.f27211I;
        y yVar = (y) obj;
        i iVar = (i) obj2;
        com.bumptech.glide.c.j("Not connected to device", f8.f1464v == 2);
        f fVar = (f) yVar.getService();
        Parcel parcelJ0 = fVar.j0();
        parcelJ0.writeString(str);
        fVar.i2(5, parcelJ0);
        synchronized (f8.f1451i) {
            try {
                if (f8.f1448f != null) {
                    iVar.a(new com.google.android.gms.common.api.h(new Status(2001, null, null, null)));
                } else {
                    f8.f1448f = iVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // F2.o
    public final void b(Bitmap bitmap, d dVar) throws IOException {
        IOException iOException = ((P2.f) this.f27211I).f5890H;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            dVar.a(bitmap);
            throw iOException;
        }
    }

    @Override // p120p3.c
    public final boolean c(String str) {
        J j8 = O.f27924l;
        O o4 = p083k3.l.f25980A.f25983c;
        O.j((Context) this.f27210H, (String) this.f27211I, str);
        return true;
    }

    @Override // F2.o
    public final void d() {
        w wVar = (w) this.f27210H;
        synchronized (wVar) {
            wVar.f3177I = wVar.f3175G.length;
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2643v
    public final i e(InterfaceC2603n interfaceC2603n) {
        i iVarR = ((i) this.f27210H).r();
        iVarR.z((String) this.f27211I, interfaceC2603n);
        return iVarR;
    }

    public final File g() {
        if (((File) this.f27210H) == null) {
            this.f27210H = new File(((Context) this.f27211I).getCacheDir(), "volley");
        }
        return (File) this.f27210H;
    }

    public final ArrayList h(String str) {
        z zVarN = z.N(1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        ((P1.x) this.f27210H).b();
        Cursor cursorH = C.h((P1.x) this.f27210H, zVarN);
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

    public final KeyListener i(KeyListener keyListener) {
        return (keyListener instanceof NumberKeyListener) ^ true ? ((U4.b) ((V.b) this.f27211I).f6995d).X(keyListener) : keyListener;
    }

    public final boolean j(String str) {
        z zVarN = z.N(1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
        if (str == null) {
            zVarN.J(1);
        } else {
            zVarN.g(1, str);
        }
        ((P1.x) this.f27210H).b();
        Cursor cursorH = C.h((P1.x) this.f27210H, zVarN);
        try {
            boolean z7 = false;
            if (cursorH.moveToFirst()) {
                z7 = cursorH.getInt(0) != 0;
            }
            return z7;
        } finally {
            cursorH.close();
            zVarN.O();
        }
    }

    public final boolean k() {
        return ((Logger) this.f27210H).isLoggable((Level) this.f27211I);
    }

    public final boolean l(p130q5.o oVar) {
        float f8 = oVar.f29645a;
        if (f8 < 0.0f) {
            return false;
        }
        b bVar = (b) this.f27210H;
        if (f8 >= bVar.f31091G) {
            return false;
        }
        float f9 = oVar.f29646b;
        return f9 > 0.0f && f9 < ((float) bVar.f31092H);
    }

    public final void m(AttributeSet attributeSet, int i8) {
        TypedArray typedArrayObtainStyledAttributes = ((EditText) this.f27210H).getContext().obtainStyledAttributes(attributeSet, p031e.a.f24694i, i8, 0);
        try {
            boolean z7 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            ((U4.b) ((V.b) this.f27211I).f6995d).g0(z7);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void n(int i8, int i9, j jVar, int i10, boolean z7) {
        if (k()) {
            ((Logger) this.f27210H).log((Level) this.f27211I, r.w(i8) + " DATA: streamId=" + i9 + " endStream=" + z7 + " length=" + i10 + " bytes=" + z(jVar));
        }
    }

    public final void o(int i8, int i9, p023c6.a aVar, m mVar) {
        if (k()) {
            Logger logger = (Logger) this.f27210H;
            Level level = (Level) this.f27211I;
            StringBuilder sb = new StringBuilder();
            sb.append(r.w(i8));
            sb.append(" GO_AWAY: lastStreamId=");
            sb.append(i9);
            sb.append(" errorCode=");
            sb.append(aVar);
            sb.append(" length=");
            sb.append(mVar.c());
            sb.append(" bytes=");
            j jVar = new j();
            jVar.m0(mVar);
            sb.append(z(jVar));
            logger.log(level, sb.toString());
        }
    }

    public final void p(int i8, long j8) {
        if (k()) {
            ((Logger) this.f27210H).log((Level) this.f27211I, r.w(i8) + " PING: ack=false bytes=" + j8);
        }
    }

    public final void q(int i8, int i9, p023c6.a aVar) {
        if (k()) {
            ((Logger) this.f27210H).log((Level) this.f27211I, r.w(i8) + " RST_STREAM: streamId=" + i9 + " errorCode=" + aVar);
        }
    }

    public final void r(int i8, p132r.h hVar) {
        if (k()) {
            Logger logger = (Logger) this.f27210H;
            Level level = (Level) this.f27211I;
            StringBuilder sb = new StringBuilder();
            sb.append(r.w(i8));
            sb.append(" SETTINGS: ack=false settings=");
            EnumMap enumMap = new EnumMap(g.class);
            for (g gVar : g.values()) {
                if (hVar.e(gVar.f8709G)) {
                    enumMap.put(gVar, Integer.valueOf(hVar.d(gVar.f8709G)));
                }
            }
            sb.append(enumMap.toString());
            logger.log(level, sb.toString());
        }
    }

    public final void s(int i8, int i9, long j8) {
        if (k()) {
            ((Logger) this.f27210H).log((Level) this.f27211I, r.w(i8) + " WINDOW_UPDATE: streamId=" + i9 + " windowSizeIncrement=" + j8);
        }
    }

    public final String toString() {
        switch (this.f27209G) {
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return (String) this.f27210H;
            default:
                return super.toString();
        }
    }

    public final InputConnection u(InputConnection inputConnection, EditorInfo editorInfo) {
        V.b bVar = (V.b) this.f27211I;
        if (inputConnection != null) {
            return ((U4.b) bVar.f6995d).e0(inputConnection, editorInfo);
        }
        bVar.getClass();
        return null;
    }

    public final void v(Throwable th) {
        K0 k8 = (K0) this.f27211I;
        k8.m();
        k8.f10915O = false;
        C0597l0 c0597l0 = (C0597l0) k8.f10616G;
        int i8 = 2;
        int i9 = 1;
        if (c0597l0.f11256M.B(null, E.f10766a1)) {
            String message = th.getMessage();
            k8.f10920T = false;
            if (message != null) {
                if ((th instanceof IllegalStateException) || message.contains("garbage collected") || th.getClass().getSimpleName().equals("ServiceUnavailableException")) {
                    if (message.contains("Background")) {
                        k8.f10920T = true;
                    }
                    i8 = 1;
                } else if ((th instanceof SecurityException) && !message.endsWith("READ_DEVICE_CONFIG")) {
                    i8 = 3;
                }
            }
        }
        int i10 = i8 - 1;
        T t7 = c0597l0.f11258O;
        if (i10 == 0) {
            C0597l0.k(t7);
            t7.f11042O.c(T.t(((C0597l0) k8.f10616G).n().t()), T.t(th.toString()), "registerTriggerAsync failed with retriable error. Will try later. App ID, throwable");
            k8.f10916P = 1;
            k8.M().add((o1) this.f27210H);
            return;
        }
        if (i10 != 1) {
            C0597l0.k(t7);
            t7.f11039L.c(T.t(((C0597l0) k8.f10616G).n().t()), th, "registerTriggerAsync failed. Dropping URI. App ID, Throwable");
            D();
            k8.f10916P = 1;
            k8.B();
            return;
        }
        k8.M().add((o1) this.f27210H);
        if (k8.f10916P > ((Integer) E.f10828w0.a(null)).intValue()) {
            k8.f10916P = 1;
            C0597l0.k(t7);
            t7.f11042O.c(T.t(((C0597l0) k8.f10616G).n().t()), T.t(th.toString()), "registerTriggerAsync failed. May try later. App ID, throwable");
            return;
        }
        C0597l0.k(t7);
        t7.f11042O.d(T.t(((C0597l0) k8.f10616G).n().t()), T.t(String.valueOf(k8.f10916P)), T.t(th.toString()), "registerTriggerAsync failed. App ID, delay in seconds, throwable");
        int i11 = k8.f10916P;
        if (k8.f10917Q == null) {
            k8.f10917Q = new F0(k8, (C0597l0) k8.f10616G, i9);
        }
        k8.f10917Q.c(((long) i11) * 1000);
        int i12 = k8.f10916P;
        k8.f10916P = i12 + i12;
    }

    public final void w(K.i iVar) {
        int i8 = iVar.f4288b;
        if (i8 != 0) {
            ((Executor) this.f27211I).execute(new p000a.g(this, (S) this.f27210H, i8, 4, 0));
        } else {
            S s7 = (S) this.f27210H;
            ((Executor) this.f27211I).execute(new K.a(this, s7, iVar.f4287a, 0));
        }
    }

    public final void x(String str) {
        A2.b bVar;
        synchronized (this) {
            try {
                Object obj = ((Map) this.f27210H).get(str);
                p102n0.c.c(obj, "Argument must not be null");
                bVar = (A2.b) obj;
                int i8 = bVar.f619b;
                if (i8 < 1) {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + bVar.f619b);
                }
                int i9 = i8 - 1;
                bVar.f619b = i9;
                if (i9 == 0) {
                    A2.b bVar2 = (A2.b) ((Map) this.f27210H).remove(str);
                    if (!bVar2.equals(bVar)) {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + bVar + ", but actually removed: " + bVar2 + ", safeKey: " + str);
                    }
                    ((A2.c) this.f27211I).b(bVar2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        bVar.f618a.unlock();
    }

    public /* synthetic */ c(int i8, int i9) {
        this.f27209G = i8;
    }

    public /* synthetic */ c(int i8, Object obj, Object obj2) {
        this.f27209G = i8;
        this.f27210H = obj;
        this.f27211I = obj2;
    }

    public c(P1.x xVar, int i8) {
        this.f27209G = i8;
        if (i8 != 7) {
            this.f27210H = xVar;
            this.f27211I = new b(this, xVar, 0);
            return;
        }
        q0.h(xVar, "database");
        this.f27210H = xVar;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        q0.g(setNewSetFromMap, "newSetFromMap(IdentityHashMap())");
        this.f27211I = setNewSetFromMap;
    }

    public /* synthetic */ c(Context context, int i8) {
        this.f27209G = i8;
        this.f27210H = context;
    }

    public c(AbstractAdViewAdapter abstractAdViewAdapter, p136r3.j jVar) {
        this.f27209G = 12;
        this.f27210H = abstractAdViewAdapter;
        this.f27211I = jVar;
    }

    public /* synthetic */ c(Object obj, Object obj2, int i8) {
        this.f27209G = i8;
        this.f27211I = obj;
        this.f27210H = obj2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(Level level) {
        this(level, Logger.getLogger(p007a6.f.class.getName()));
        this.f27209G = 27;
    }

    public c() {
        this.f27209G = 17;
        this.f27210H = "LibraryVersion";
        this.f27211I = null;
    }

    public c(b bVar) {
        this.f27209G = 24;
        this.f27210H = bVar;
        this.f27211I = new n(bVar);
    }

    public c(Level level, Logger logger) {
        this.f27209G = 27;
        k.s(level, "level");
        this.f27211I = level;
        k.s(logger, "logger");
        this.f27210H = logger;
    }

    public c(EditText editText) {
        this.f27209G = 1;
        this.f27210H = editText;
        this.f27211I = new V.b(editText);
    }

    public c(Context context) {
        this.f27209G = 8;
        this.f27211I = context;
        this.f27210H = null;
    }

    public c(d0 d0Var, int[] iArr) {
        this.f27209G = 3;
        this.f27210H = H.s(d0Var);
        this.f27211I = iArr;
    }
}
