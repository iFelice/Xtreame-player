package E3;

import C2.C0091g;
import C3.A;
import C3.F;
import C3.I;
import C3.InterfaceC0106f;
import K3.AbstractC0245s;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j implements InterfaceC0106f {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final H3.b f2901k = new H3.b("RemoteMediaClient", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final X3.d f2903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H3.n f2904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p004a3.b f2905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d f2906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public I f2907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p052g4.i f2908g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArrayList f2909h = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteArrayList f2910i = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap f2911j;

    static {
        String str = H3.n.f3694u;
    }

    public j(H3.n nVar) {
        new ConcurrentHashMap();
        this.f2911j = new ConcurrentHashMap();
        this.f2902a = new Object();
        this.f2903b = new X3.d(Looper.getMainLooper(), 1);
        p004a3.b bVar = new p004a3.b(this);
        this.f2905d = bVar;
        this.f2904c = nVar;
        nVar.f3698h = new C0091g(this);
        nVar.f3722c = bVar;
        this.f2906e = new d(this);
    }

    public static p q() {
        p pVar = new p();
        pVar.L0(new o(new Status(17, null, null, null), 0));
        return pVar;
    }

    public static final void u(r rVar) {
        try {
            rVar.S0();
        } catch (IllegalArgumentException e8) {
            throw e8;
        } catch (Throwable unused) {
            rVar.L0(new o(new Status(2100, null, null, null), 1));
        }
    }

    public final long a() {
        long jO;
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            jO = this.f2904c.o();
        }
        return jO;
    }

    public final C3.p b() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        if (rVarD == null) {
            return null;
        }
        Integer num = (Integer) rVarD.f1593d0.get(rVarD.f1581R);
        if (num == null) {
            return null;
        }
        return (C3.p) rVarD.f1586W.get(num.intValue());
    }

    public final MediaInfo c() {
        MediaInfo mediaInfo;
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            C3.r rVar = this.f2904c.f3696f;
            mediaInfo = rVar == null ? null : rVar.f1570G;
        }
        return mediaInfo;
    }

    public final C3.r d() {
        C3.r rVar;
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            rVar = this.f2904c.f3696f;
        }
        return rVar;
    }

    public final int e() {
        int i8;
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            C3.r rVarD = d();
            i8 = rVarD != null ? rVarD.f1574K : 1;
        }
        return i8;
    }

    public final long f() {
        long j8;
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            C3.r rVar = this.f2904c.f3696f;
            MediaInfo mediaInfo = rVar == null ? null : rVar.f1570G;
            j8 = mediaInfo != null ? mediaInfo.f11707K : 0L;
        }
        return j8;
    }

    public final boolean g() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (h()) {
            return true;
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        return (rVarD != null && rVarD.f1574K == 5) || l() || k() || j();
    }

    public final boolean h() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        return rVarD != null && rVarD.f1574K == 4;
    }

    public final boolean i() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        MediaInfo mediaInfoC = c();
        return mediaInfoC != null && mediaInfoC.f11704H == 2;
    }

    public final boolean j() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        return (rVarD == null || rVarD.f1581R == 0) ? false : true;
    }

    public final boolean k() {
        int i8;
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        if (rVarD == null) {
            return false;
        }
        if (rVarD.f1574K == 3) {
            return true;
        }
        if (!i()) {
            return false;
        }
        synchronized (this.f2902a) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            C3.r rVarD2 = d();
            i8 = rVarD2 != null ? rVarD2.f1575L : 0;
        }
        return i8 == 2;
    }

    public final boolean l() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        return rVarD != null && rVarD.f1574K == 2;
    }

    public final boolean m() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        C3.r rVarD = d();
        return rVarD != null && rVarD.f1587X;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0093  */
    /* JADX WARN: Code duplicated, block: B:54:0x010a  */
    public final void n(String str) {
        byte b8;
        int i8;
        int i9;
        C3.r rVar;
        int[] iArrM;
        H3.n nVar = this.f2904c;
        H3.p pVar = nVar.f3705o;
        H3.p pVar2 = nVar.f3704n;
        H3.b bVar = nVar.f3720a;
        bVar.b("message received: %s", str);
        String str2 = bVar.f3679a;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long jOptLong = jSONObject.optLong("requestId", -1L);
            switch (string) {
                case "LOAD_CANCELLED":
                    b8 = 3;
                    break;
                case "QUEUE_ITEMS":
                    b8 = 8;
                    break;
                case "INVALID_REQUEST":
                    b8 = 4;
                    break;
                case "LOAD_FAILED":
                    b8 = 2;
                    break;
                case "ERROR":
                    b8 = 5;
                    break;
                case "QUEUE_CHANGE":
                    b8 = 7;
                    break;
                case "INVALID_PLAYER_STATE":
                    b8 = 1;
                    break;
                case "MEDIA_STATUS":
                    b8 = 0;
                    break;
                case "QUEUE_ITEM_IDS":
                    b8 = 6;
                    break;
                default:
                    b8 = -1;
                    break;
            }
            H3.p pVar3 = nVar.f3700j;
            List list = nVar.f3723d;
            switch (b8) {
                case 0:
                    JSONArray jSONArray = jSONObject.getJSONArray("status");
                    if (jSONArray.length() > 0) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(0);
                        boolean zC = pVar3.c(jOptLong);
                        if (!pVar2.d() || pVar2.c(jOptLong)) {
                            i8 = (!pVar.d() || pVar.c(jOptLong)) ? 0 : 1;
                        }
                        if (zC || (rVar = nVar.f3696f) == null) {
                            C3.r rVar2 = new C3.r(null, 0L, 0, 0.0d, 0, 0, 0L, 0L, 0.0d, false, null, 0, 0, null, 0, null, false, null, null, null, null);
                            rVar2.i(jSONObject2, 0);
                            nVar.f3696f = rVar2;
                            nVar.f3695e = SystemClock.elapsedRealtime();
                            i9 = 127;
                        } else {
                            i9 = rVar.i(jSONObject2, i8);
                        }
                        if ((i9 & 1) != 0) {
                            nVar.f3695e = SystemClock.elapsedRealtime();
                            nVar.f3699i = -1;
                            nVar.l();
                        }
                        if ((i9 & 2) != 0) {
                            nVar.f3695e = SystemClock.elapsedRealtime();
                            nVar.l();
                        }
                        if ((i9 & 128) != 0) {
                            nVar.f3695e = SystemClock.elapsedRealtime();
                        }
                        if ((4 & i9) != 0) {
                            nVar.i();
                        }
                        if ((8 & i9) != 0) {
                            nVar.k();
                        }
                        if ((i9 & 16) != 0) {
                            nVar.j();
                        }
                        if ((i9 & 32) != 0) {
                            nVar.f3695e = SystemClock.elapsedRealtime();
                            C0091g c0091g = nVar.f3698h;
                            if (c0091g != null) {
                                c0091g.t();
                            }
                        }
                        if ((i9 & 64) != 0) {
                            nVar.f3695e = SystemClock.elapsedRealtime();
                            nVar.l();
                        }
                    } else {
                        nVar.f3696f = null;
                        nVar.l();
                        nVar.i();
                        nVar.k();
                        nVar.j();
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((H3.p) it.next()).b(null, 0, jOptLong);
                    }
                    break;
                case 1:
                    Log.w(str2, bVar.c("received unexpected error: Invalid Player State.", new Object[0]));
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((H3.p) it2.next()).b(H3.n.f(jSONObject), 2100, jOptLong);
                    }
                    break;
                case 2:
                    pVar3.b(H3.n.f(jSONObject), 2100, jOptLong);
                    break;
                case 3:
                    pVar3.b(H3.n.f(jSONObject), 2101, jOptLong);
                    break;
                case 4:
                    Log.w(str2, bVar.c("received unexpected error: Invalid Request.", new Object[0]));
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        ((H3.p) it3.next()).b(H3.n.f(jSONObject), 2001, jOptLong);
                    }
                    break;
                case 5:
                    Iterator it4 = list.iterator();
                    while (it4.hasNext()) {
                        ((H3.p) it4.next()).b(H3.n.f(jSONObject), 2100, jOptLong);
                    }
                    if (nVar.f3698h != null) {
                        MediaError.i(jSONObject);
                        Iterator it5 = ((j) nVar.f3698h.f1387H).f2910i.iterator();
                        while (it5.hasNext()) {
                            ((h) it5.next()).getClass();
                        }
                    }
                    break;
                case 6:
                    nVar.f3708r.b(null, 0, jOptLong);
                    nVar.h(jSONObject, "QUEUE_ITEM_IDS");
                    if (nVar.f3698h != null && (iArrM = H3.n.m(jSONObject.getJSONArray("itemIds"))) != null) {
                        nVar.f3698h.v(iArrM);
                        break;
                    }
                    break;
                case 7:
                    nVar.f3710t.b(null, 0, jOptLong);
                    nVar.h(jSONObject, "QUEUE_CHANGE");
                    if (nVar.f3698h != null) {
                        String string2 = jSONObject.getString("changeType");
                        int[] iArrM2 = H3.n.m(jSONObject.getJSONArray("itemIds"));
                        int iOptInt = jSONObject.optInt("insertBefore", 0);
                        if (iArrM2 != null) {
                            string2.getClass();
                            switch (string2) {
                                case "INSERT":
                                    nVar.f3698h.w(iArrM2, iOptInt);
                                    break;
                                case "REMOVE":
                                    nVar.f3698h.y(iArrM2);
                                    break;
                                case "UPDATE":
                                    int[] iArrM3 = H3.n.m(jSONObject.getJSONArray("itemIds"));
                                    com.bumptech.glide.c.i(iArrM3, "A list of item IDs is expected in a QUEUE UPDATE message.");
                                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("reorderItemIds");
                                    if (jSONArrayOptJSONArray == null) {
                                        nVar.f3698h.v(iArrM3);
                                        break;
                                    } else {
                                        ArrayList arrayListD = H3.a.d(iArrM3);
                                        int iOptInt2 = jSONObject.optInt("insertBefore", 0);
                                        int[] iArrM4 = H3.n.m(jSONArrayOptJSONArray);
                                        com.bumptech.glide.c.h(iArrM4);
                                        nVar.f3698h.z(arrayListD, H3.a.d(iArrM4), iOptInt2);
                                        break;
                                    }
                                    break;
                                case "ITEMS_CHANGE":
                                    nVar.f3698h.B(iArrM2);
                                    break;
                            }
                        }
                    }
                    break;
                case 8:
                    nVar.f3709s.b(null, 0, jOptLong);
                    nVar.h(jSONObject, "QUEUE_ITEMS");
                    if (nVar.f3698h != null) {
                        JSONArray jSONArray2 = jSONObject.getJSONArray("items");
                        C3.p[] pVarArr = new C3.p[jSONArray2.length()];
                        for (int i10 = 0; i10 < jSONArray2.length(); i10++) {
                            pVarArr[i10] = new C3.o(jSONArray2.getJSONObject(i10)).a();
                        }
                        nVar.f3698h.x(pVarArr);
                    }
                    break;
            }
        } catch (JSONException e8) {
            Log.w(str2, bVar.c("Message is malformed (%s); ignoring: %s", e8.getMessage(), str));
        }
    }

    public final void o() {
        com.bumptech.glide.c.d("Must be called from the main thread.");
        int iE = e();
        int i8 = 2;
        if (iE == 4 || iE == 2) {
            com.bumptech.glide.c.d("Must be called from the main thread.");
            if (t()) {
                u(new l(this, i8));
                return;
            } else {
                q();
                return;
            }
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (t()) {
            u(new l(this, 3));
        } else {
            q();
        }
    }

    public final int p() {
        C3.p pVarB;
        if (c() != null && g()) {
            if (h()) {
                return 6;
            }
            if (l()) {
                return 3;
            }
            if (k()) {
                return 2;
            }
            if (j() && (pVarB = b()) != null && pVarB.f1557G != null) {
                return 6;
            }
        }
        return 0;
    }

    public final void r() {
        I i8 = this.f2907f;
        if (i8 == null) {
            return;
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        String str = this.f2904c.f3721b;
        F f8 = (F) i8;
        H3.a.c(str);
        synchronized (f8.f1461s) {
            f8.f1461s.put(str, this);
        }
        K3.r rVarA = AbstractC0245s.a();
        rVarA.f4570c = new A(f8, str, this);
        rVarA.f4568a = 8413;
        f8.doWrite(rVarA.a());
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (t()) {
            u(new k(this));
        } else {
            q();
        }
    }

    public final void s(F f8) {
        InterfaceC0106f interfaceC0106f;
        I i8 = this.f2907f;
        if (i8 == f8) {
            return;
        }
        if (i8 != null) {
            this.f2904c.n();
            this.f2906e.c();
            com.bumptech.glide.c.d("Must be called from the main thread.");
            String str = this.f2904c.f3721b;
            F f9 = (F) i8;
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Channel namespace cannot be null or empty");
            }
            synchronized (f9.f1461s) {
                interfaceC0106f = (InterfaceC0106f) f9.f1461s.remove(str);
            }
            K3.r rVarA = AbstractC0245s.a();
            rVarA.f4570c = new A(f9, interfaceC0106f, str);
            rVarA.f4568a = 8414;
            f9.doWrite(rVarA.a());
            this.f2905d.f8650H = null;
            this.f2903b.removeCallbacksAndMessages(null);
        }
        this.f2907f = f8;
        if (f8 != null) {
            this.f2905d.f8650H = f8;
        }
    }

    public final boolean t() {
        return this.f2907f != null;
    }
}
