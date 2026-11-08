package H3;

import A0.O;
import C2.C0091g;
import C3.C0110j;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class n extends q {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f3694u;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f3695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C3.r f3696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Long f3697g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0091g f3698h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f3699i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p f3700j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final p f3701k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p f3702l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p f3703m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p f3704n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p f3705o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final p f3706p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final p f3707q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final p f3708r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final p f3709s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final p f3710t;

    static {
        Pattern pattern = a.f3677a;
        f3694u = "urn:x-cast:com.google.cast.media";
    }

    public n() {
        super(f3694u);
        this.f3699i = -1;
        p pVar = new p(86400000L, "load");
        this.f3700j = pVar;
        p pVar2 = new p(86400000L, "pause");
        this.f3701k = pVar2;
        p pVar3 = new p(86400000L, "play");
        this.f3702l = pVar3;
        p pVar4 = new p(86400000L, "stop");
        p pVar5 = new p(10000L, "seek");
        this.f3703m = pVar5;
        p pVar6 = new p(86400000L, "volume");
        this.f3704n = pVar6;
        p pVar7 = new p(86400000L, "mute");
        this.f3705o = pVar7;
        p pVar8 = new p(86400000L, "status");
        this.f3706p = pVar8;
        p pVar9 = new p(86400000L, "activeTracks");
        p pVar10 = new p(86400000L, "trackStyle");
        p pVar11 = new p(86400000L, "queueInsert");
        p pVar12 = new p(86400000L, "queueUpdate");
        this.f3707q = pVar12;
        p pVar13 = new p(86400000L, "queueRemove");
        p pVar14 = new p(86400000L, "queueReorder");
        p pVar15 = new p(86400000L, "queueFetchItemIds");
        this.f3708r = pVar15;
        p pVar16 = new p(86400000L, "queueFetchItemRange");
        this.f3710t = pVar16;
        this.f3709s = new p(86400000L, "queueFetchItems");
        p pVar17 = new p(86400000L, "setPlaybackRate");
        p pVar18 = new p(86400000L, "skipAd");
        a(pVar);
        a(pVar2);
        a(pVar3);
        a(pVar4);
        a(pVar5);
        a(pVar6);
        a(pVar7);
        a(pVar8);
        a(pVar9);
        a(pVar10);
        a(pVar11);
        a(pVar12);
        a(pVar13);
        a(pVar14);
        a(pVar15);
        a(pVar16);
        a(pVar16);
        a(pVar17);
        a(pVar18);
        g();
    }

    public static m f(JSONObject jSONObject) {
        MediaError.i(jSONObject);
        m mVar = new m();
        Pattern pattern = a.f3677a;
        if (jSONObject.has("customData")) {
            jSONObject.optJSONObject("customData");
        }
        return mVar;
    }

    public static int[] m(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i8 = 0; i8 < jSONArray.length(); i8++) {
            iArr[i8] = jSONArray.getInt(i8);
        }
        return iArr;
    }

    public final void d(o oVar, int i8, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        long jB = b();
        try {
            jSONObject2.put("requestId", jB);
            jSONObject2.put("type", "QUEUE_UPDATE");
            jSONObject2.put("mediaSessionId", p());
            if (i8 != 0) {
                jSONObject2.put("jump", i8);
            }
            String strJ = U4.a.j(null);
            if (strJ != null) {
                jSONObject2.put("repeatMode", strJ);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            int i9 = this.f3699i;
            if (i9 != -1) {
                jSONObject2.put("sequenceNumber", i9);
            }
        } catch (JSONException unused) {
        }
        c(jB, jSONObject2.toString());
        this.f3707q.a(jB, new k(this, oVar, 1));
    }

    public final long e(double d6, long j8, long j9) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f3695e;
        if (jElapsedRealtime < 0) {
            jElapsedRealtime = 0;
        }
        if (jElapsedRealtime == 0) {
            return j8;
        }
        long j10 = j8 + ((long) (jElapsedRealtime * d6));
        if (j9 > 0 && j10 > j9) {
            return j9;
        }
        if (j10 >= 0) {
            return j10;
        }
        return 0L;
    }

    public final void g() {
        this.f3695e = 0L;
        this.f3696f = null;
        Iterator it = this.f3723d.iterator();
        while (it.hasNext()) {
            ((p) it.next()).f(2002);
        }
    }

    public final void h(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.f3699i = jSONObject.optInt("sequenceNumber", -1);
        } else {
            b bVar = this.f3720a;
            Log.w(bVar.f3679a, bVar.c(str.concat(" message is missing a sequence number."), new Object[0]));
        }
    }

    public final void i() {
        C0091g c0091g = this.f3698h;
        if (c0091g != null) {
            E3.j jVar = (E3.j) c0091g.f1387H;
            b bVar = E3.j.f2901k;
            jVar.getClass();
            Iterator it = ((E3.j) c0091g.f1387H).f2909h.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
            Iterator it2 = ((E3.j) c0091g.f1387H).f2910i.iterator();
            while (it2.hasNext()) {
                F3.k kVar = (F3.k) ((E3.h) it2.next());
                switch (kVar.f3221a) {
                    case 0:
                        ((F3.l) kVar.f3222b).b();
                        break;
                }
            }
        }
    }

    public final void j() {
        C0091g c0091g = this.f3698h;
        if (c0091g != null) {
            Iterator it = ((E3.j) c0091g.f1387H).f2909h.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
            Iterator it2 = ((E3.j) c0091g.f1387H).f2910i.iterator();
            while (it2.hasNext()) {
                F3.k kVar = (F3.k) ((E3.h) it2.next());
                switch (kVar.f3221a) {
                    case 0:
                        ((F3.l) kVar.f3222b).b();
                        break;
                }
            }
        }
    }

    public final void k() {
        C0091g c0091g = this.f3698h;
        if (c0091g != null) {
            Iterator it = ((E3.j) c0091g.f1387H).f2909h.iterator();
            if (it.hasNext()) {
                O.I(it.next());
                throw null;
            }
            Iterator it2 = ((E3.j) c0091g.f1387H).f2910i.iterator();
            while (it2.hasNext()) {
                F3.k kVar = (F3.k) ((E3.h) it2.next());
                switch (kVar.f3221a) {
                    case 0:
                        ((F3.l) kVar.f3222b).b();
                        break;
                }
            }
        }
    }

    public final void l() {
        C0091g c0091g = this.f3698h;
        if (c0091g != null) {
            E3.j jVar = (E3.j) c0091g.f1387H;
            b bVar = E3.j.f2901k;
            jVar.getClass();
            E3.j jVar2 = (E3.j) c0091g.f1387H;
            Iterator it = jVar2.f2911j.values().iterator();
            if (it.hasNext()) {
                O.I(it.next());
                if (!jVar2.g() && jVar2.g()) {
                    throw null;
                }
                throw null;
            }
            Iterator it2 = ((E3.j) c0091g.f1387H).f2909h.iterator();
            if (it2.hasNext()) {
                O.I(it2.next());
                throw null;
            }
            Iterator it3 = ((E3.j) c0091g.f1387H).f2910i.iterator();
            while (it3.hasNext()) {
                F3.k kVar = (F3.k) ((E3.h) it3.next());
                int i8 = kVar.f3221a;
                Object obj = kVar.f3222b;
                switch (i8) {
                    case 0:
                        ((F3.l) obj).b();
                        break;
                    case 1:
                        E3.d dVar = (E3.d) obj;
                        long jE = dVar.e();
                        if (jE != dVar.f2841b) {
                            dVar.f2841b = jE;
                            dVar.c();
                            if (dVar.f2841b != 0) {
                                dVar.d();
                            }
                        }
                        break;
                }
            }
        }
    }

    public final void n() {
        synchronized (this.f3723d) {
            try {
                Iterator it = this.f3723d.iterator();
                while (it.hasNext()) {
                    ((p) it.next()).f(2002);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        g();
    }

    public final long o() {
        C0110j c0110j;
        C3.r rVar = this.f3696f;
        MediaInfo mediaInfo = rVar == null ? null : rVar.f1570G;
        long jE = 0;
        if (mediaInfo == null || rVar == null) {
            return 0L;
        }
        Long l4 = this.f3697g;
        if (l4 == null) {
            if (this.f3695e == 0) {
                return 0L;
            }
            double d6 = rVar.f1573J;
            long j8 = rVar.f1576M;
            return (d6 == 0.0d || rVar.f1574K != 2) ? j8 : e(d6, j8, mediaInfo.f11707K);
        }
        if (l4.equals(4294967296000L)) {
            C3.r rVar2 = this.f3696f;
            if (rVar2.f1590a0 != null) {
                long jLongValue = l4.longValue();
                C3.r rVar3 = this.f3696f;
                if (rVar3 != null && (c0110j = rVar3.f1590a0) != null) {
                    boolean z7 = c0110j.f1521J;
                    long j9 = c0110j.f1519H;
                    jE = !z7 ? e(1.0d, j9, -1L) : j9;
                }
                return Math.min(jLongValue, jE);
            }
            MediaInfo mediaInfo2 = rVar2 == null ? null : rVar2.f1570G;
            if ((mediaInfo2 != null ? mediaInfo2.f11707K : 0L) >= 0) {
                long jLongValue2 = l4.longValue();
                C3.r rVar4 = this.f3696f;
                MediaInfo mediaInfo3 = rVar4 != null ? rVar4.f1570G : null;
                return Math.min(jLongValue2, mediaInfo3 != null ? mediaInfo3.f11707K : 0L);
            }
        }
        return l4.longValue();
    }

    public final long p() throws l {
        C3.r rVar = this.f3696f;
        if (rVar != null) {
            return rVar.f1571H;
        }
        throw new l();
    }
}
