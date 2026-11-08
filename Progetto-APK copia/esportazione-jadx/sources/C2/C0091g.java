package C2;

import D3.AbstractC0162f;
import D3.C0157a;
import D3.C0159c;
import D3.InterfaceC0164h;
import F2.C0194d;
import K3.InterfaceC0243p;
import Z3.C0421c;
import Z3.C0422d;
import Z3.C0430l;
import Z3.X;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import android.util.JsonWriter;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.gms.common.internal.C0643t;
import com.google.android.gms.internal.ads.AbstractC1812p8;
import com.google.android.gms.internal.ads.C0864Of;
import com.google.android.gms.internal.ads.C0939Tk;
import com.google.android.gms.internal.ads.C1284ez;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2246xc;
import com.google.android.gms.internal.ads.C2274y3;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC1195dC;
import com.google.android.gms.internal.ads.InterfaceC2112uy;
import com.google.android.gms.internal.ads.InterfaceC2170w3;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.BinderC2430c;
import com.google.android.gms.internal.cast.C2423a0;
import com.google.android.gms.internal.cast.C2427b0;
import com.google.android.gms.internal.cast.C2431c0;
import com.google.android.gms.internal.cast.C2471m0;
import com.google.android.gms.internal.cast.C2475n0;
import com.google.android.gms.internal.cast.C2490r0;
import com.google.android.gms.internal.cast.C2494s0;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: C2.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0091g implements InterfaceC0089e, p173w2.c, I2.a, p120p3.c, p120p3.f, InterfaceC2170w3, InterfaceC2112uy, InterfaceC1195dC, InterfaceC0243p, p052g4.b, InterfaceC0164h, X, p168v4.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1386G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f1387H;

    public /* synthetic */ C0091g(E3.j jVar) {
        this.f1386G = 20;
        this.f1387H = jVar;
    }

    public static ByteArrayInputStream r(String str) {
        if (!str.startsWith("data:image")) {
            throw new IllegalArgumentException("Not a valid image data URL.");
        }
        int iIndexOf = str.indexOf(44);
        if (iIndexOf == -1) {
            throw new IllegalArgumentException("Missing comma in data URL.");
        }
        if (str.substring(0, iIndexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(iIndexOf + 1), 0));
        }
        throw new IllegalArgumentException("Not a base64 image data URL.");
    }

    public static void s(Context context, p043f3.f fVar, p182x3.a aVar) {
        p043f3.a aVar2 = p043f3.a.BANNER;
        Q7.a(context);
        if (((Boolean) AbstractC1812p8.f20428h.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                p120p3.b.f28201a.execute(new p104n2.t(context, fVar, aVar));
                return;
            }
        }
        new C2246xc(context, aVar2, fVar == null ? null : fVar.f25163a, null, 0).r(aVar);
    }

    @Override // C2.InterfaceC0089e
    public final Object A(byte[] bArr) {
        return new ByteArrayInputStream(bArr);
    }

    public final void B(int[] iArr) {
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    ArrayList arrayList = new ArrayList();
                    int i8 = 0;
                    while (true) {
                        int length = iArr.length;
                        Object obj = kVar.f3222b;
                        if (i8 >= length) {
                            Collections.sort(arrayList);
                            E3.d dVar = (E3.d) obj;
                            dVar.h();
                            H3.a.f(arrayList);
                            E3.d.a(dVar);
                            dVar.f();
                        }
                        int i9 = iArr[i8];
                        E3.d dVar2 = (E3.d) obj;
                        dVar2.f2845f.remove(Integer.valueOf(i9));
                        int i10 = dVar2.f2844e.get(i9, -1);
                        if (i10 == -1) {
                            dVar2.d();
                        } else {
                            arrayList.add(Integer.valueOf(i10));
                            i8++;
                        }
                        break;
                        break;
                    }
                    break;
            }
        }
    }

    @Override // C2.InterfaceC0089e
    public final Class a() {
        return InputStream.class;
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        switch (this.f1386G) {
            case 21:
                H3.y yVar = (H3.y) obj;
                H3.f fVar = (H3.f) yVar.getService();
                C3.E e8 = ((C3.F) this.f1387H).f1443a;
                Parcel parcelJ0 = fVar.j0();
                AbstractC2501u.d(parcelJ0, e8);
                fVar.i2(18, parcelJ0);
                H3.f fVar2 = (H3.f) yVar.getService();
                fVar2.i2(17, fVar2.j0());
                ((p052g4.i) obj2).b(null);
                return;
            case 22:
                p052g4.i iVar = (p052g4.i) obj2;
                N3.a aVar = (N3.a) ((N3.c) obj).getService();
                C0643t c0643t = (C0643t) this.f1387H;
                aVar.getClass();
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeInterfaceToken(aVar.f21993I);
                int i8 = X3.a.f7655a;
                if (c0643t == null) {
                    parcelObtain.writeInt(0);
                } else {
                    parcelObtain.writeInt(1);
                    c0643t.writeToParcel(parcelObtain, 0);
                }
                try {
                    aVar.f21992H.transact(1, parcelObtain, null, 1);
                    parcelObtain.recycle();
                    iVar.b(null);
                    return;
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            default:
                W3.d dVar = (W3.d) ((W3.b) obj).getService();
                W3.g gVar = new W3.g((p052g4.i) obj2);
                dVar.getClass();
                Parcel parcelObtain2 = Parcel.obtain();
                parcelObtain2.writeInterfaceToken("com.google.android.gms.appset.internal.IAppSetService");
                int i9 = W3.a.f7468a;
                parcelObtain2.writeInt(1);
                AbstractC2987b.p0(AbstractC2987b.X(20293, parcelObtain2), parcelObtain2);
                parcelObtain2.writeStrongBinder(gVar);
                Parcel parcelObtain3 = Parcel.obtain();
                try {
                    dVar.f7469G.transact(1, parcelObtain2, parcelObtain3, 0);
                    parcelObtain3.readException();
                    return;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain3.recycle();
                }
        }
    }

    @Override // D3.InterfaceC0164h
    public final void b(AbstractC0162f abstractC0162f) {
        H3.b bVar = C2423a0.f22616j;
        bVar.b("onSessionStarting", new Object[0]);
        C2423a0 c2423a0 = (C2423a0) this.f1387H;
        c2423a0.f22624h = (C0159c) abstractC0162f;
        if (c2423a0.f22623g != null) {
            Log.w(bVar.f3679a, bVar.c("Start a session while there's already an active session. Create a new one.", new Object[0]));
        }
        ((C2423a0) this.f1387H).d();
        C2423a0 c2423a1 = (C2423a0) this.f1387H;
        C2431c0 c2431c0 = c2423a1.f22619c;
        C2427b0 c2427b0 = c2423a1.f22623g;
        C2490r0 c2490r0B = c2431c0.b(c2427b0);
        if (c2427b0.f22648j == 1) {
            C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
            c2471m0M.d();
            C2475n0.r((C2475n0) c2471m0M.f22745H, 17);
            c2490r0B.f((C2475n0) c2471m0M.b());
        }
        ((C2423a0) this.f1387H).f22617a.a((C2494s0) c2490r0B.b(), 221);
    }

    @Override // p120p3.c
    public final boolean c(String str) {
        new p171w0.j(3, str).start();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2170w3
    public final void d(C2274y3 c2274y3) {
        ((C2040te) this.f1387H).c(c2274y3);
    }

    @Override // D3.InterfaceC0164h
    public final void e(AbstractC0162f abstractC0162f, boolean z7) {
        Object obj = this.f1387H;
        C2423a0.f22616j.b("onSessionResumed with wasSuspended = %b", Boolean.valueOf(z7));
        C2423a0 c2423a0 = (C2423a0) obj;
        c2423a0.f22624h = (C0159c) abstractC0162f;
        c2423a0.c();
        com.bumptech.glide.c.h(((C2423a0) obj).f22623g);
        C2423a0 c2423a1 = (C2423a0) obj;
        C2490r0 c2490r0B = c2423a1.f22619c.b(c2423a1.f22623g);
        C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
        c2471m0M.d();
        C2475n0.p((C2475n0) c2471m0M.f22745H, z7);
        c2490r0B.d();
        C2494s0.p((C2494s0) c2490r0B.f22745H, (C2475n0) c2471m0M.b());
        ((C2423a0) obj).f22617a.a((C2494s0) c2490r0B.b(), 227);
        C2423a0.b((C2423a0) obj);
        ((C2423a0) obj).e();
    }

    @Override // D3.InterfaceC0164h
    public final void f(AbstractC0162f abstractC0162f, int i8) {
        Object obj = this.f1387H;
        C2423a0.f22616j.b("onSessionSuspended with reason = %d", Integer.valueOf(i8));
        C2423a0 c2423a0 = (C2423a0) obj;
        c2423a0.f22624h = (C0159c) abstractC0162f;
        c2423a0.c();
        com.bumptech.glide.c.h(((C2423a0) obj).f22623g);
        C2423a0 c2423a1 = (C2423a0) obj;
        ((C2423a0) obj).f22617a.a(c2423a1.f22619c.a(c2423a1.f22623g, i8), 225);
        C2423a0.b((C2423a0) obj);
        C2423a0 c2423a2 = (C2423a0) obj;
        c2423a2.f22621e.removeCallbacks(c2423a2.f22620d);
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void g(AbstractC0162f abstractC0162f, int i8) {
        Object obj = this.f1387H;
        ((C2423a0) obj).f22624h = (C0159c) abstractC0162f;
        C2423a0.a((C2423a0) obj, i8);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:23:0x00c1  */
    @Override // D3.InterfaceC0164h
    public final void h(AbstractC0162f abstractC0162f, String str) {
        C2427b0 c2427b0;
        C0159c c0159c;
        boolean z7 = false;
        H3.b bVar = C2423a0.f22616j;
        bVar.b("onSessionResuming with sessionId = %s", str);
        C2423a0 c2423a0 = (C2423a0) this.f1387H;
        c2423a0.f22624h = (C0159c) abstractC0162f;
        SharedPreferences sharedPreferences = c2423a0.f22622f;
        if (c2423a0.g(str)) {
            bVar.b("Use the existing ApplicationAnalyticsSession if it is available and valid.", new Object[0]);
            com.bumptech.glide.c.h(c2423a0.f22623g);
        } else {
            BinderC2430c binderC2430c = c2423a0.f22618b;
            if (sharedPreferences == null) {
                H3.b bVar2 = C2427b0.f22637k;
            } else {
                c2427b0 = new C2427b0(binderC2430c);
                c2427b0.f22647i = sharedPreferences.getBoolean("is_output_switcher_enabled", false);
                if (sharedPreferences.contains("application_id")) {
                    c2427b0.f22640b = sharedPreferences.getString("application_id", HttpUrl.FRAGMENT_ENCODE_SET);
                    if (sharedPreferences.contains("receiver_metrics_id")) {
                        c2427b0.f22641c = sharedPreferences.getString("receiver_metrics_id", HttpUrl.FRAGMENT_ENCODE_SET);
                        if (sharedPreferences.contains("analytics_session_id")) {
                            c2427b0.f22642d = sharedPreferences.getLong("analytics_session_id", 0L);
                            if (sharedPreferences.contains("event_sequence_number")) {
                                c2427b0.f22643e = sharedPreferences.getInt("event_sequence_number", 0);
                                if (sharedPreferences.contains("receiver_session_id")) {
                                    c2427b0.f22644f = sharedPreferences.getString("receiver_session_id", HttpUrl.FRAGMENT_ENCODE_SET);
                                    c2427b0.f22645g = sharedPreferences.getInt("device_capabilities", 0);
                                    c2427b0.f22646h = sharedPreferences.getString("device_model_name", HttpUrl.FRAGMENT_ENCODE_SET);
                                    c2427b0.f22648j = sharedPreferences.getInt("analytics_session_start_type", 0);
                                }
                            }
                        }
                    }
                }
                c2423a0.f22623g = c2427b0;
                if (c2423a0.g(str)) {
                    bVar.b("Use the restored ApplicationAnalyticsSession if it is valid.", new Object[0]);
                    com.bumptech.glide.c.h(c2423a0.f22623g);
                    C2427b0.f22638l = c2423a0.f22623g.f22642d + 1;
                } else {
                    bVar.b("The restored ApplicationAnalyticsSession is not valid, create a new one.", new Object[0]);
                    C2427b0 c2427b1 = new C2427b0(binderC2430c);
                    C2427b0.f22638l++;
                    c2423a0.f22623g = c2427b1;
                    c0159c = c2423a0.f22624h;
                    if (c0159c != null && c0159c.f2373g.f22785L) {
                        z7 = true;
                    }
                    c2427b1.f22647i = z7;
                    H3.b bVar3 = C0157a.f2336k;
                    com.bumptech.glide.c.d("Must be called from the main thread.");
                    C0157a c0157a = C0157a.f2338m;
                    com.bumptech.glide.c.h(c0157a);
                    com.bumptech.glide.c.d("Must be called from the main thread.");
                    c2427b1.f22640b = c0157a.f2342d.f2352G;
                    C2427b0 c2427b2 = c2423a0.f22623g;
                    com.bumptech.glide.c.h(c2427b2);
                    c2427b2.f22644f = str;
                }
            }
            c2427b0 = null;
            c2423a0.f22623g = c2427b0;
            if (c2423a0.g(str)) {
                bVar.b("Use the restored ApplicationAnalyticsSession if it is valid.", new Object[0]);
                com.bumptech.glide.c.h(c2423a0.f22623g);
                C2427b0.f22638l = c2423a0.f22623g.f22642d + 1;
            } else {
                bVar.b("The restored ApplicationAnalyticsSession is not valid, create a new one.", new Object[0]);
                C2427b0 c2427b3 = new C2427b0(binderC2430c);
                C2427b0.f22638l++;
                c2423a0.f22623g = c2427b3;
                c0159c = c2423a0.f22624h;
                if (c0159c != null) {
                    z7 = true;
                }
                c2427b3.f22647i = z7;
                H3.b bVar4 = C0157a.f2336k;
                com.bumptech.glide.c.d("Must be called from the main thread.");
                C0157a c0157a2 = C0157a.f2338m;
                com.bumptech.glide.c.h(c0157a2);
                com.bumptech.glide.c.d("Must be called from the main thread.");
                c2427b3.f22640b = c0157a2.f2342d.f2352G;
                C2427b0 c2427b4 = c2423a0.f22623g;
                com.bumptech.glide.c.h(c2427b4);
                c2427b4.f22644f = str;
            }
        }
        com.bumptech.glide.c.h(((C2423a0) this.f1387H).f22623g);
        C2423a0 c2423a1 = (C2423a0) this.f1387H;
        C2490r0 c2490r0B = c2423a1.f22619c.b(c2423a1.f22623g);
        C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
        c2471m0M.d();
        C2475n0.r((C2475n0) c2471m0M.f22745H, 10);
        c2490r0B.f((C2475n0) c2471m0M.b());
        C2471m0 c2471m0M2 = C2475n0.m(c2490r0B.e());
        c2471m0M2.d();
        C2475n0.p((C2475n0) c2471m0M2.f22745H, true);
        c2490r0B.d();
        C2494s0.p((C2494s0) c2490r0B.f22745H, (C2475n0) c2471m0M2.b());
        ((C2423a0) this.f1387H).f22617a.a((C2494s0) c2490r0B.b(), 226);
    }

    @Override // p168v4.d
    public final void i(C0430l c0430l) {
        ((AtomicReference) this.f1387H).set(c0430l);
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void j(AbstractC0162f abstractC0162f, int i8) {
        Object obj = this.f1387H;
        ((C2423a0) obj).f22624h = (C0159c) abstractC0162f;
        C2423a0.a((C2423a0) obj, i8);
    }

    @Override // I2.a
    public final y2.D k(y2.D d6, p173w2.l lVar) {
        Resources resources = (Resources) this.f1387H;
        if (d6 == null) {
            return null;
        }
        return new C0194d(resources, d6);
    }

    @Override // D3.InterfaceC0164h
    public final void l(AbstractC0162f abstractC0162f, String str) {
        Object obj = this.f1387H;
        C2423a0.f22616j.b("onSessionStarted with sessionId = %s", str);
        C2423a0 c2423a0 = (C2423a0) obj;
        c2423a0.f22624h = (C0159c) abstractC0162f;
        c2423a0.c();
        C2423a0 c2423a1 = (C2423a0) obj;
        C2427b0 c2427b0 = c2423a1.f22623g;
        c2427b0.f22644f = str;
        ((C2423a0) obj).f22617a.a((C2494s0) c2423a1.f22619c.b(c2427b0).b(), 222);
        C2423a0.b((C2423a0) obj);
        ((C2423a0) obj).e();
    }

    @Override // p120p3.f
    public final void m(JsonWriter jsonWriter) throws IOException {
        Object obj = p120p3.g.f28212b;
        jsonWriter.name("params").beginObject();
        byte[] bArr = (byte[]) this.f1387H;
        int length = bArr.length;
        String strEncodeToString = Base64.encodeToString(bArr, 0);
        if (length < 10000) {
            jsonWriter.name("body").value(strEncodeToString);
        } else {
            String strA = p120p3.d.a(strEncodeToString, "MD5");
            if (strA != null) {
                jsonWriter.name("bodydigest").value(strA);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    @Override // p173w2.c
    public final boolean n(Object obj, File file, p173w2.l lVar) throws Throwable {
        InputStream inputStream = (InputStream) obj;
        byte[] bArr = (byte[]) ((p196z2.h) this.f1387H).d(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i8 = inputStream.read(bArr);
                        if (i8 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i8);
                    } catch (IOException e8) {
                        e = e8;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        ((p196z2.h) this.f1387H).h(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        ((p196z2.h) this.f1387H).h(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                ((p196z2.h) this.f1387H).h(bArr);
                return true;
            } catch (IOException e9) {
                e = e9;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // D3.InterfaceC0164h
    public final /* synthetic */ void o(AbstractC0162f abstractC0162f) {
        ((C2423a0) this.f1387H).f22624h = (C0159c) abstractC0162f;
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void q(AbstractC0162f abstractC0162f, int i8) {
        Object obj = this.f1387H;
        ((C2423a0) obj).f22624h = (C0159c) abstractC0162f;
        C2423a0.a((C2423a0) obj, i8);
    }

    public final void t() {
        Iterator it = ((E3.j) this.f1387H).f2909h.iterator();
        if (it.hasNext()) {
            A0.O.I(it.next());
            throw null;
        }
        Iterator it2 = ((E3.j) this.f1387H).f2910i.iterator();
        while (it2.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it2.next());
            switch (kVar.f3221a) {
                case 0:
                    ((F3.l) kVar.f3222b).b();
                    break;
            }
        }
    }

    @Override // p052g4.b
    public final Object then(p052g4.h hVar) {
        W3.i iVar = (W3.i) this.f1387H;
        if (hVar.h() || ((p052g4.r) hVar).f25372d) {
            return hVar;
        }
        Exception excE = hVar.e();
        if (!(excE instanceof com.google.android.gms.common.api.h)) {
            return hVar;
        }
        int i8 = ((com.google.android.gms.common.api.h) excE).f11763G.f11756G;
        if (i8 == 43001 || i8 == 43002 || i8 == 43003 || i8 == 17) {
            return iVar.f7478b.a();
        }
        if (i8 == 43000) {
            return Cw.j(new Exception("Failed to get app set ID due to an internal error. Please try again later."));
        }
        return i8 != 15 ? hVar : Cw.j(new Exception("The operation to get app set ID timed out. Please try again later."));
    }

    public final void u(C1284ez c1284ez) {
        p000a.x xVar = (p000a.x) this.f1387H;
        xVar.getClass();
        String str = c1284ez.f18630b;
        if (!TextUtils.isEmpty(str)) {
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.Na)).booleanValue()) {
                xVar.f8620b = str;
            }
        }
        int i8 = c1284ez.f18629a;
        switch (i8) {
            case 8152:
                xVar.d("onLMDOverlayOpened", new HashMap());
                break;
            case 8153:
                xVar.d("onLMDOverlayClicked", new HashMap());
                break;
            case 8155:
                xVar.d("onLMDOverlayClose", new HashMap());
                break;
            case 8157:
                xVar.f8620b = null;
                xVar.f8621c = null;
                xVar.f8619a = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap map = new HashMap();
                map.put("error", String.valueOf(i8));
                xVar.d("onLMDOverlayFailedToOpen", map);
                break;
        }
    }

    public final void v(int[] iArr) {
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    E3.d dVar = (E3.d) kVar.f3222b;
                    ArrayList arrayListD = H3.a.d(iArr);
                    if (!dVar.f2843d.equals(arrayListD)) {
                        dVar.h();
                        dVar.f2845f.evictAll();
                        dVar.f2846g.clear();
                        dVar.f2843d = arrayListD;
                        E3.d.b(dVar);
                        dVar.g();
                        dVar.f();
                    }
                    break;
            }
        }
    }

    public final void w(int[] iArr, int i8) {
        int size;
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    if (i8 == 0) {
                        size = ((E3.d) kVar.f3222b).f2843d.size();
                    } else {
                        size = ((E3.d) kVar.f3222b).f2844e.get(i8, -1);
                        if (size == -1) {
                            ((E3.d) kVar.f3222b).d();
                            break;
                        }
                    }
                    ((E3.d) kVar.f3222b).h();
                    ((E3.d) kVar.f3222b).f2843d.addAll(size, H3.a.d(iArr));
                    E3.d.b((E3.d) kVar.f3222b);
                    E3.d dVar = (E3.d) kVar.f3222b;
                    synchronized (dVar.f2852m) {
                        Iterator it2 = dVar.f2852m.iterator();
                        if (it2.hasNext()) {
                            A0.O.I(it2.next());
                            throw null;
                        }
                    }
                    ((E3.d) kVar.f3222b).f();
                    break;
            }
        }
    }

    public final void x(C3.p[] pVarArr) {
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    HashSet hashSet = new HashSet();
                    E3.d dVar = (E3.d) kVar.f3222b;
                    dVar.f2846g.clear();
                    int i8 = 0;
                    while (true) {
                        int length = pVarArr.length;
                        SparseIntArray sparseIntArray = dVar.f2844e;
                        if (i8 >= length) {
                            ArrayList arrayList = dVar.f2846g;
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                int i9 = sparseIntArray.get(((Integer) it2.next()).intValue(), -1);
                                if (i9 != -1) {
                                    hashSet.add(Integer.valueOf(i9));
                                }
                            }
                            arrayList.clear();
                            ArrayList arrayList2 = new ArrayList(hashSet);
                            Collections.sort(arrayList2);
                            dVar.h();
                            H3.a.f(arrayList2);
                            E3.d.a(dVar);
                            dVar.f();
                        }
                        C3.p pVar = pVarArr[i8];
                        int i10 = pVar.f1558H;
                        dVar.f2845f.put(Integer.valueOf(i10), pVar);
                        int i11 = sparseIntArray.get(i10, -1);
                        if (i11 == -1) {
                            dVar.d();
                        } else {
                            hashSet.add(Integer.valueOf(i11));
                            i8++;
                        }
                        break;
                        break;
                    }
                    break;
            }
        }
    }

    public final void y(int[] iArr) {
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    ArrayList arrayList = new ArrayList();
                    int i8 = 0;
                    while (true) {
                        if (i8 >= iArr.length) {
                            if (!arrayList.isEmpty()) {
                                Collections.sort(arrayList);
                                ((E3.d) kVar.f3222b).h();
                                ((E3.d) kVar.f3222b).f2843d.removeAll(H3.a.d(iArr));
                                E3.d.b((E3.d) kVar.f3222b);
                                E3.d dVar = (E3.d) kVar.f3222b;
                                H3.a.f(arrayList);
                                synchronized (dVar.f2852m) {
                                    Iterator it2 = dVar.f2852m.iterator();
                                    if (it2.hasNext()) {
                                        A0.O.I(it2.next());
                                        throw null;
                                    }
                                }
                                ((E3.d) kVar.f3222b).f();
                            }
                        }
                        int i9 = iArr[i8];
                        ((E3.d) kVar.f3222b).f2845f.remove(Integer.valueOf(i9));
                        int i10 = ((E3.d) kVar.f3222b).f2844e.get(i9, -1);
                        if (i10 == -1) {
                            ((E3.d) kVar.f3222b).d();
                        } else {
                            ((E3.d) kVar.f3222b).f2844e.delete(i9);
                            arrayList.add(Integer.valueOf(i10));
                            i8++;
                        }
                        break;
                        break;
                    }
                    break;
            }
        }
    }

    public final void z(ArrayList arrayList, ArrayList arrayList2, int i8) {
        Iterator it = ((E3.j) this.f1387H).f2910i.iterator();
        while (it.hasNext()) {
            F3.k kVar = (F3.k) ((E3.h) it.next());
            switch (kVar.f3221a) {
                case 1:
                    ArrayList arrayList3 = new ArrayList();
                    if (i8 == 0) {
                        ((E3.d) kVar.f3222b).f2843d.size();
                    } else if (arrayList2.isEmpty()) {
                        H3.b bVar = ((E3.d) kVar.f3222b).f2840a;
                        Log.w(bVar.f3679a, bVar.c("Received a Queue Reordered message with an empty reordered items IDs list.", new Object[0]));
                    } else if (((E3.d) kVar.f3222b).f2844e.get(i8, -1) == -1) {
                        E3.d dVar = (E3.d) kVar.f3222b;
                        dVar.f2844e.get(((Integer) arrayList2.get(0)).intValue(), -1);
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            ((E3.d) kVar.f3222b).h();
                            E3.d dVar2 = (E3.d) kVar.f3222b;
                            dVar2.f2843d = arrayList;
                            E3.d.b(dVar2);
                            E3.d dVar3 = (E3.d) kVar.f3222b;
                            synchronized (dVar3.f2852m) {
                                Iterator it3 = dVar3.f2852m.iterator();
                                if (it3.hasNext()) {
                                    A0.O.I(it3.next());
                                    throw null;
                                }
                            }
                            ((E3.d) kVar.f3222b).f();
                        }
                        int i9 = ((E3.d) kVar.f3222b).f2844e.get(((Integer) it2.next()).intValue(), -1);
                        if (i9 == -1) {
                            ((E3.d) kVar.f3222b).d();
                        }
                        arrayList3.add(Integer.valueOf(i9));
                        break;
                        break;
                    }
                    break;
            }
        }
    }

    @Override // Z3.Y
    public final /* bridge */ /* synthetic */ Object zza() {
        return new C0422d(((C0421c) this.f1387H).f8293a);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        switch (this.f1386G) {
            case 11:
                p120p3.h.b("Initialized webview successfully for SDKCore.");
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.V8)).booleanValue()) {
                    U2.m.m(((p167v3.j) this.f1387H).f30634R, "sgs", new Pair("se", "query_g"), new Pair("ad_format", "BANNER"), new Pair("rtype", Integer.toString(6)), new Pair("scar", "true"), new Pair("sgi_rn", Integer.toString(((p167v3.j) this.f1387H).f30652j0.get())));
                    ((p167v3.j) this.f1387H).f30651i0.set(true);
                    return;
                }
                return;
            default:
                C0939Tk c0939Tk = (C0939Tk) this.f1387H;
                p167v3.r rVar = (p167v3.r) obj;
                synchronized (c0939Tk) {
                    c0939Tk.Z0(new C0864Of(rVar, 9));
                }
                return;
        }
    }

    public /* synthetic */ C0091g(Object obj, int i8) {
        this.f1386G = i8;
        this.f1387H = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        switch (this.f1386G) {
            case 11:
                p083k3.l.f25980A.f25987g.i("SignalGeneratorImpl.initializeWebViewForSignalCollection", th);
                U2.m.m(((p167v3.j) this.f1387H).f30634R, "sgf", new Pair("sgf_reason", th.getMessage()), new Pair("se", "query_g"), new Pair("ad_format", "BANNER"), new Pair("rtype", Integer.toString(6)), new Pair("scar", "true"), new Pair("sgi_rn", Integer.toString(((p167v3.j) this.f1387H).f30652j0.get())));
                p120p3.h.e("Failed to initialize webview for loading SDKCore. ", th);
                J7 j8 = Q7.V8;
                C3099q c3099q = C3099q.f26624d;
                if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || ((p167v3.j) this.f1387H).f30651i0.get() || ((p167v3.j) this.f1387H).f30652j0.getAndIncrement() >= ((Integer) c3099q.f26627c.a(Q7.W8)).intValue()) {
                    return;
                }
                ((p167v3.j) this.f1387H).B3();
                return;
            default:
                C0939Tk c0939Tk = (C0939Tk) this.f1387H;
                String message = th.getMessage();
                synchronized (c0939Tk) {
                    c0939Tk.Z0(new com.google.android.gms.internal.ads.J(message, 7, 0));
                }
                return;
        }
    }

    public C0091g() {
        this.f1386G = 2;
        this.f1387H = new A2.f(this);
    }

    public C0091g(Resources resources) {
        this.f1386G = 4;
        this.f1387H = resources;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2112uy
    public final void zzb(int i8, long j8, String str) {
        ((p083k3.f) this.f1387H).f25950N.d(i8, System.currentTimeMillis() - j8, null, null, str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2112uy
    public final void zza(int i8, long j8) {
        ((p083k3.f) this.f1387H).f25950N.c(i8, System.currentTimeMillis() - j8);
    }
}
