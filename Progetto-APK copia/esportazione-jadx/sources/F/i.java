package F;

import A0.O;
import D0.C0117g;
import D3.C0158b;
import E1.A;
import E1.C0171f;
import E1.C0185u;
import E1.H;
import E1.Q;
import E1.e0;
import F2.C0194d;
import F2.w;
import H3.s;
import H3.u;
import K3.InterfaceC0243p;
import K3.V;
import K3.W;
import Y5.D;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.opengl.EGL14;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.internal.ads.C2274y3;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC2170w3;
import com.google.android.gms.internal.atv_ads_framework.N0;
import com.google.android.gms.internal.atv_ads_framework.O0;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.BinderC2486q;
import com.google.android.gms.internal.cast.C2482p;
import com.google.android.gms.internal.cast.C2497t;
import com.google.android.gms.internal.cast.D0;
import com.google.android.gms.internal.cast.EnumC2435d0;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.measurement.InterfaceC2643v;
import com.google.android.tv.ads.controls.FallbackImageActivity;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.HttpUrl;
import org.videolan.libvlc.interfaces.IMediaList;
import p021c4.C0579f0;
import p113o3.C3161t;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class i implements p173w2.o, InterfaceC2170w3, InterfaceC0243p, p052g4.d, InterfaceC2643v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2976G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f2977H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f2978I;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public i(int i8) {
        this();
        this.f2976G = i8;
        if (i8 == 4) {
            this.f2977H = new ByteArrayOutputStream(IMediaList.Event.ItemAdded);
            this.f2978I = new DataOutputStream((ByteArrayOutputStream) this.f2977H);
            return;
        }
        if (i8 == 8) {
            this.f2977H = new p196z2.f(null);
            this.f2978I = new HashMap();
        } else if (i8 == 10) {
            this.f2977H = new ArrayList();
            this.f2978I = new HashMap();
        } else if (i8 != 25) {
        } else {
            this.f2977H = new AtomicLong();
            this.f2978I = new AtomicLong();
        }
    }

    public final void A() {
        ((W) ((V) this.f2978I).f4521I).getClass();
        throw null;
    }

    public final void B() {
        ((Context) this.f2977H).startActivity(new Intent().setClassName(((Context) this.f2977H).getPackageName(), FallbackImageActivity.class.getName()).setFlags(268435456).putExtra("render_error_message", true));
    }

    public final i a(i iVar) {
        if (!((I5.a) this.f2978I).equals((I5.a) iVar.f2978I)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (r()) {
            return iVar;
        }
        if (iVar.r()) {
            return this;
        }
        int[] iArr = (int[]) this.f2977H;
        int[] iArr2 = (int[]) iVar.f2977H;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i8 = length; i8 < iArr.length; i8++) {
            I5.a aVar = (I5.a) this.f2978I;
            int i9 = iArr2[i8 - length];
            int i10 = iArr[i8];
            aVar.getClass();
            iArr3[i8] = (i9 + i10) % 929;
        }
        return new i((I5.a) this.f2978I, iArr3);
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        s sVar = new s((p052g4.i) obj2, 2);
        H3.i iVar = (H3.i) ((u) obj).getService();
        String[] strArr = (String[]) this.f2978I;
        Parcel parcelJ0 = iVar.j0();
        AbstractC2501u.d(parcelJ0, sVar);
        parcelJ0.writeStringArray(strArr);
        iVar.i2(7, parcelJ0);
    }

    public final void b() {
        ((D) this.f2977H).f8147G = true;
        ((ScheduledFuture) this.f2978I).cancel(false);
    }

    public final byte[] c(p049g1.a aVar) {
        ((ByteArrayOutputStream) this.f2977H).reset();
        try {
            DataOutputStream dataOutputStream = (DataOutputStream) this.f2978I;
            dataOutputStream.writeBytes(aVar.f25299a);
            dataOutputStream.writeByte(0);
            String str = aVar.f25300b;
            if (str == null) {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            DataOutputStream dataOutputStream2 = (DataOutputStream) this.f2978I;
            dataOutputStream2.writeBytes(str);
            dataOutputStream2.writeByte(0);
            ((DataOutputStream) this.f2978I).writeLong(aVar.f25301c);
            ((DataOutputStream) this.f2978I).writeLong(aVar.f25302d);
            ((DataOutputStream) this.f2978I).write(aVar.f25303e);
            ((DataOutputStream) this.f2978I).flush();
            return ((ByteArrayOutputStream) this.f2977H).toByteArray();
        } catch (IOException e8) {
            throw new RuntimeException(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2170w3
    public final void d(C2274y3 c2274y3) {
        p120p3.h.g("Failed to load URL: " + ((String) this.f2977H) + "\n" + c2274y3.toString());
        ((C3161t) this.f2978I).b(null);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2643v
    public final p096m2.i e(InterfaceC2603n interfaceC2603n) {
        p096m2.i iVarR = ((p096m2.i) this.f2977H).r();
        String str = (String) this.f2978I;
        iVarR.z(str, interfaceC2603n);
        ((Map) iVarR.f27227K).put(str, Boolean.TRUE);
        return iVarR;
    }

    public final int f(int i8) {
        if (i8 == 0) {
            return h(0);
        }
        if (i8 == 1) {
            int i9 = 0;
            for (int i10 : (int[]) this.f2977H) {
                ((I5.a) this.f2978I).getClass();
                i9 = (i9 + i10) % 929;
            }
            return i9;
        }
        int[] iArr = (int[]) this.f2977H;
        int i11 = iArr[0];
        int length = iArr.length;
        for (int i12 = 1; i12 < length; i12++) {
            I5.a aVar = (I5.a) this.f2978I;
            int iB = aVar.b(i8, i11);
            int i13 = ((int[]) this.f2977H)[i12];
            aVar.getClass();
            i11 = (iB + i13) % 929;
        }
        return i11;
    }

    public final Object g(p196z2.k kVar) {
        p196z2.f fVar = (p196z2.f) ((Map) this.f2978I).get(kVar);
        if (fVar == null) {
            fVar = new p196z2.f(kVar);
            ((Map) this.f2978I).put(kVar, fVar);
        } else {
            kVar.a();
        }
        p196z2.f fVar2 = fVar.f31762d;
        fVar2.f31761c = fVar.f31761c;
        fVar.f31761c.f31762d = fVar2;
        p196z2.f fVar3 = (p196z2.f) this.f2977H;
        fVar.f31762d = fVar3;
        p196z2.f fVar4 = fVar3.f31761c;
        fVar.f31761c = fVar4;
        fVar4.f31762d = fVar;
        fVar.f31762d.f31761c = fVar;
        ArrayList arrayList = fVar.f31760b;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return fVar.f31760b.remove(size - 1);
        }
        return null;
    }

    public final int h(int i8) {
        Object obj = this.f2977H;
        return ((int[]) obj)[(((int[]) obj).length - 1) - i8];
    }

    public final int i() {
        return ((int[]) this.f2977H).length - 1;
    }

    public final synchronized List j(String str) {
        List arrayList;
        try {
            if (!((List) this.f2977H).contains(str)) {
                ((List) this.f2977H).add(str);
            }
            arrayList = (List) ((Map) this.f2978I).get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                ((Map) this.f2978I).put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final int k(p173w2.f fVar) throws Throwable {
        w wVar = null;
        try {
            w wVar2 = new w(new FileInputStream(((com.bumptech.glide.load.data.n) this.f2977H).b().getFileDescriptor()), (p196z2.h) this.f2978I);
            try {
                int iD = fVar.d(wVar2, (p196z2.h) this.f2978I);
                wVar2.E();
                ((com.bumptech.glide.load.data.n) this.f2977H).b();
                return iD;
            } catch (Throwable th) {
                th = th;
                wVar = wVar2;
                if (wVar != null) {
                    wVar.E();
                }
                ((com.bumptech.glide.load.data.n) this.f2977H).b();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized ArrayList l(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = ((List) this.f2977H).iterator();
        while (it.hasNext()) {
            List<K2.c> list = (List) ((Map) this.f2978I).get((String) it.next());
            if (list != null) {
                for (K2.c cVar : list) {
                    if (cVar.f4466a.isAssignableFrom(cls) && cls2.isAssignableFrom(cVar.f4467b) && !arrayList.contains(cVar.f4467b)) {
                        arrayList.add(cVar.f4467b);
                    }
                }
            }
        }
        return arrayList;
    }

    public final W5.b m(int i8) {
        int i9 = i8;
        for (int i10 = 0; i10 < ((List) this.f2977H).size(); i10++) {
            int iV = v(i10);
            if (i9 == 0) {
                return W5.b.a(2, i10, -1, i8);
            }
            if (i9 < iV) {
                return W5.b.a(1, i10, i9 - 1, i8);
            }
            i9 -= iV;
        }
        throw new RuntimeException("Unknown state");
    }

    @Override // p173w2.c
    public final boolean n(Object obj, File file, p173w2.l lVar) {
        return ((p173w2.o) this.f2978I).n(new C0194d(((BitmapDrawable) ((y2.D) obj).get()).getBitmap(), (p196z2.d) this.f2977H), file, lVar);
    }

    public final void o(p153t4.d dVar) {
        String str;
        String queryParameter;
        List list = dVar.f30303G;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            p153t4.a aVar = (p153t4.a) it.next();
            String str2 = aVar.f30302K;
            if (str2 != null && (queryParameter = Uri.parse(str2).getQueryParameter("atvatc")) != null && queryParameter.equals("1")) {
                str = aVar.f30302K;
                break;
            }
        }
        if (str == null) {
            if (!list.isEmpty()) {
                O.I(this.f2978I);
                ((Context) this.f2977H).startActivity(new Intent().setClassName(((Context) this.f2977H).getPackageName(), FallbackImageActivity.class.getName()).setFlags(268435456).putExtra("icon_click_fallback_images", dVar));
                return;
            }
            x0 x0VarC = x0.C((Context) this.f2977H);
            N0 n0L = O0.l();
            n0L.e();
            n0L.g(2);
            n0L.f(6);
            x0VarC.E((O0) n0L.b());
            B();
            return;
        }
        try {
            Intent intentPutExtra = new Intent().setAction("com.google.android.tv.ads.intent.action.LAUNCH_ATC_MENU").setFlags(268435456).putExtra("extra_atc_uri", str).putExtra("extra_publisher_package", ((Context) this.f2977H).getPackageName());
            int iB = p156u.h.b(Cw.u((Context) this.f2977H));
            if (iB != 0) {
                if (iB == 1) {
                    x0 x0VarC2 = x0.C((Context) this.f2977H);
                    N0 n0L2 = O0.l();
                    n0L2.e();
                    n0L2.g(3);
                    x0VarC2.E((O0) n0L2.b());
                    ((Context) this.f2977H).startActivity(intentPutExtra.setPackage("com.google.android.apps.tv.launcherx"));
                    return;
                }
                if (iB != 2) {
                    if (iB == 3 || iB == 4 || iB == 5) {
                        x0 x0VarC3 = x0.C((Context) this.f2977H);
                        N0 n0L3 = O0.l();
                        n0L3.e();
                        n0L3.g(3);
                        n0L3.f(3);
                        x0VarC3.E((O0) n0L3.b());
                        B();
                        return;
                    }
                    return;
                }
            }
            x0 x0VarC4 = x0.C((Context) this.f2977H);
            N0 n0L4 = O0.l();
            n0L4.e();
            n0L4.g(3);
            x0VarC4.E((O0) n0L4.b());
            ((Context) this.f2977H).startActivity(intentPutExtra.setPackage("com.google.android.tvrecommendations"));
        } catch (ActivityNotFoundException unused) {
            x0 x0VarC5 = x0.C((Context) this.f2977H);
            N0 n0L5 = O0.l();
            n0L5.e();
            n0L5.g(3);
            n0L5.f(2);
            x0VarC5.E((O0) n0L5.b());
            B();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0040  */
    @Override // p052g4.d
    public final void onComplete(p052g4.h hVar) {
        boolean z7;
        C0158b c0158b;
        BinderC2486q binderC2486q = (BinderC2486q) this.f2977H;
        C0158b c0158b2 = (C0158b) this.f2978I;
        binderC2486q.getClass();
        boolean zH = hVar.h();
        H3.b bVar = BinderC2486q.f22780M;
        if (zH) {
            Bundle bundle = (Bundle) hVar.f();
            boolean z8 = bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            Object[] objArr = new Object[1];
            objArr[0] = true != z8 ? "not existed" : "existed";
            bVar.b("The module-to-client output switcher flag %s", objArr);
            if (z8) {
                z7 = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            } else {
                z7 = true;
            }
        } else {
            z7 = true;
        }
        Log.i(bVar.f3679a, bVar.c("Set up output switcher flags: %b (from module), %b (from CastOptions)", Boolean.valueOf(z7), Boolean.valueOf(c0158b2.f2364S)));
        boolean z9 = z7 && c0158b2.f2364S;
        if (binderC2486q.f22781H == null || (c0158b = binderC2486q.f22782I) == null) {
            return;
        }
        C0117g c0117g = new C0117g();
        int i8 = Build.VERSION.SDK_INT;
        c0117g.f1935a = i8 >= 30;
        if (i8 >= 30) {
            c0117g.f1935a = z9;
        }
        boolean z10 = c0158b.f2362Q;
        if (i8 >= 30) {
            c0117g.f1937c = z10;
        }
        boolean z11 = c0158b.f2361P;
        if (i8 >= 30) {
            c0117g.f1936b = z11;
        }
        Q q7 = new Q(c0117g);
        H.b();
        A aC = H.c();
        Q q8 = aC.f2600q;
        aC.f2600q = q7;
        if (aC.g()) {
            if (aC.f2589f == null) {
                C0171f c0171f = new C0171f(aC.f2584a, new C0185u(aC, 1));
                aC.f2589f = c0171f;
                aC.a(c0171f, true);
                aC.m();
                e0 e0Var = aC.f2587d;
                ((Handler) e0Var.f2724d).post((Runnable) e0Var.f2728h);
            }
            if ((q8 != null && q8.f2666c) != q7.f2666c) {
                C0171f c0171f2 = aC.f2589f;
                c0171f2.f2789e = aC.f2609z;
                if (!c0171f2.f2790f) {
                    c0171f2.f2790f = true;
                    c0171f2.f2787c.sendEmptyMessage(2);
                }
            }
        } else {
            C0171f c0171f3 = aC.f2589f;
            if (c0171f3 != null) {
                aC.j(c0171f3);
                aC.f2589f = null;
                e0 e0Var2 = aC.f2587d;
                ((Handler) e0Var2.f2724d).post((Runnable) e0Var2.f2728h);
            }
        }
        aC.f2597n.b(769, q7);
        Log.i(bVar.f3679a, bVar.c("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(binderC2486q.f22785L), Boolean.valueOf(z9), Boolean.valueOf(z10), Boolean.valueOf(z11)));
        if (z10) {
            C2497t c2497t = binderC2486q.f22784K;
            com.bumptech.glide.c.h(c2497t);
            C2482p c2482p = new C2482p(c2497t);
            H.b();
            H.c().f2580B = c2482p;
            D0.a(EnumC2435d0.CAST_TRANSFER_TO_LOCAL_ENABLED);
        }
    }

    @Override // p173w2.o
    public final int p(p173w2.l lVar) {
        return ((p173w2.o) this.f2978I).p(lVar);
    }

    public final boolean q() {
        Object obj = this.f2977H;
        ((D) obj).getClass();
        return !((D) obj).f8147G;
    }

    public final boolean r() {
        return ((int[]) this.f2977H)[0] == 0;
    }

    public final i s(int i8) {
        if (i8 == 0) {
            return ((I5.a) this.f2978I).f4019c;
        }
        if (i8 == 1) {
            return this;
        }
        int length = ((int[]) this.f2977H).length;
        int[] iArr = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr[i9] = ((I5.a) this.f2978I).b(((int[]) this.f2977H)[i9], i8);
        }
        return new i((I5.a) this.f2978I, iArr);
    }

    public final i t(i iVar) {
        if (!((I5.a) this.f2978I).equals((I5.a) iVar.f2978I)) {
            throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (r() || iVar.r()) {
            return ((I5.a) this.f2978I).f4019c;
        }
        int[] iArr = (int[]) this.f2977H;
        int length = iArr.length;
        int[] iArr2 = (int[]) iVar.f2977H;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = iArr[i8];
            for (int i10 = 0; i10 < length2; i10++) {
                int i11 = i8 + i10;
                I5.a aVar = (I5.a) this.f2978I;
                int i12 = iArr3[i11];
                int iB = aVar.b(i9, iArr2[i10]);
                aVar.getClass();
                iArr3[i11] = (iB + i12) % 929;
            }
        }
        return new i((I5.a) this.f2978I, iArr3);
    }

    public final String toString() {
        switch (this.f2976G) {
            case 8:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                p196z2.f fVar = ((p196z2.f) this.f2977H).f31761c;
                boolean z7 = false;
                while (!fVar.equals((p196z2.f) this.f2977H)) {
                    sb.append('{');
                    sb.append(fVar.f31759a);
                    sb.append(':');
                    ArrayList arrayList = fVar.f31760b;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    fVar = fVar.f31761c;
                    z7 = true;
                }
                if (z7) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            case 22:
                StringBuilder sb2 = new StringBuilder(i() * 8);
                for (int i8 = i(); i8 >= 0; i8--) {
                    int iH = h(i8);
                    if (iH != 0) {
                        if (iH < 0) {
                            sb2.append(" - ");
                            iH = -iH;
                        } else if (sb2.length() > 0) {
                            sb2.append(" + ");
                        }
                        if (i8 == 0 || iH != 1) {
                            sb2.append(iH);
                        }
                        if (i8 != 0) {
                            if (i8 == 1) {
                                sb2.append('x');
                            } else {
                                sb2.append("x^");
                                sb2.append(i8);
                            }
                        }
                    }
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public final i u() {
        int length = ((int[]) this.f2977H).length;
        int[] iArr = new int[length];
        for (int i8 = 0; i8 < length; i8++) {
            I5.a aVar = (I5.a) this.f2978I;
            int i9 = ((int[]) this.f2977H)[i8];
            aVar.getClass();
            iArr[i8] = (929 - i9) % 929;
        }
        return new i((I5.a) this.f2978I, iArr);
    }

    public final int v(int i8) {
        if (!((boolean[]) this.f2978I)[i8]) {
            return 1;
        }
        List list = ((W5.a) ((List) this.f2977H).get(i8)).f7493H;
        return (list == null ? 0 : list.size()) + 1;
    }

    public final void w(p196z2.k kVar, Object obj) {
        p196z2.f fVar = (p196z2.f) ((Map) this.f2978I).get(kVar);
        if (fVar == null) {
            fVar = new p196z2.f(kVar);
            fVar.f31761c = fVar;
            fVar.f31762d = fVar;
            p196z2.f fVar2 = (p196z2.f) this.f2977H;
            fVar.f31762d = fVar2.f31762d;
            fVar.f31761c = fVar2;
            fVar2.f31762d = fVar;
            fVar.f31762d.f31761c = fVar;
            ((Map) this.f2978I).put(kVar, fVar);
        } else {
            kVar.a();
        }
        if (fVar.f31760b == null) {
            fVar.f31760b = new ArrayList();
        }
        fVar.f31760b.add(obj);
    }

    public final Object x() {
        p196z2.f fVar = ((p196z2.f) this.f2977H).f31762d;
        while (true) {
            if (fVar.equals((p196z2.f) this.f2977H)) {
                return null;
            }
            ArrayList arrayList = fVar.f31760b;
            int size = arrayList != null ? arrayList.size() : 0;
            Object objRemove = size > 0 ? fVar.f31760b.remove(size - 1) : null;
            if (objRemove != null) {
                return objRemove;
            }
            p196z2.f fVar2 = fVar.f31762d;
            fVar2.f31761c = fVar.f31761c;
            fVar.f31761c.f31762d = fVar2;
            Map map = (Map) this.f2978I;
            Object obj = fVar.f31759a;
            map.remove(obj);
            ((p196z2.k) obj).a();
            fVar = fVar.f31762d;
        }
    }

    public final void y() {
        ((AtomicLong) this.f2977H).set(0L);
        ((AtomicLong) this.f2978I).set(0L);
    }

    public final i z(i iVar) {
        if (((I5.a) this.f2978I).equals((I5.a) iVar.f2978I)) {
            return iVar.r() ? this : a(iVar.u());
        }
        throw new IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public /* synthetic */ i(int i8, Object obj, Object obj2) {
        this.f2976G = i8;
        this.f2977H = obj;
        this.f2978I = obj2;
    }

    public i(V v5, AlertDialog alertDialog) {
        this.f2976G = 14;
        this.f2978I = v5;
        this.f2977H = alertDialog;
    }

    public i(C0579f0 c0579f0, String str) {
        this.f2976G = 17;
        this.f2977H = str;
        this.f2978I = c0579f0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(String str, Map map) {
        this(5, str, map);
        this.f2976G = 5;
    }

    public i(String str, C3161t c3161t) {
        this.f2976G = 11;
        this.f2977H = str;
        this.f2978I = c3161t;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i(String str, p135r2.o oVar) {
        this(6, str, oVar);
        this.f2976G = 6;
    }

    public i(Context context) {
        this.f2976G = 18;
        context.getClass();
        this.f2977H = context;
    }

    public i(ArrayList arrayList) {
        this.f2976G = 23;
        this.f2977H = arrayList;
        this.f2978I = new boolean[arrayList.size()];
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            ((boolean[]) this.f2978I)[i8] = false;
        }
    }

    public i(I5.a aVar, int[] iArr) {
        this.f2976G = 22;
        if (iArr.length != 0) {
            this.f2978I = aVar;
            int length = iArr.length;
            int i8 = 1;
            if (length > 1 && iArr[0] == 0) {
                while (i8 < length && iArr[i8] == 0) {
                    i8++;
                }
                if (i8 == length) {
                    this.f2977H = new int[]{0};
                    return;
                }
                int i9 = length - i8;
                int[] iArr2 = new int[i9];
                this.f2977H = iArr2;
                System.arraycopy(iArr, i8, iArr2, 0, i9);
                return;
            }
            this.f2977H = iArr;
            return;
        }
        throw new IllegalArgumentException();
    }

    public i() {
        this.f2976G = 2;
        this.f2977H = EGL14.EGL_NO_CONTEXT;
        this.f2978I = new ArrayList();
    }

    public i(ArrayList arrayList, ArrayList arrayList2) {
        this.f2976G = 0;
        int size = arrayList.size();
        this.f2977H = new int[size];
        this.f2978I = new float[size];
        for (int i8 = 0; i8 < size; i8++) {
            ((int[]) this.f2977H)[i8] = ((Integer) arrayList.get(i8)).intValue();
            ((float[]) this.f2978I)[i8] = ((Float) arrayList2.get(i8)).floatValue();
        }
    }

    public i(int i8, int i9) {
        this.f2976G = 0;
        this.f2977H = new int[]{i8, i9};
        this.f2978I = new float[]{0.0f, 1.0f};
    }

    public i(int i8, int i9, int i10) {
        this.f2976G = 0;
        this.f2977H = new int[]{i8, i9, i10};
        this.f2978I = new float[]{0.0f, 0.5f, 1.0f};
    }

    public i(d0 d0Var, int[] iArr) {
        this.f2976G = 1;
        this.f2978I = z4.H.s(d0Var);
        this.f2977H = iArr;
    }
}
