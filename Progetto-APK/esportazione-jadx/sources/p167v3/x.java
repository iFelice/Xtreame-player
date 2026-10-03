package p167v3;

import C2.C0091g;
import K.a;
import U2.m;
import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p043f3.e;
import p043f3.f;
import p083k3.l;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f30702a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f30703b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f30704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0783In f30705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ExecutorService f30706e;

    public x(Context context, C0783In c0783In, C1936re c1936re) {
        this.f30704c = context;
        this.f30705d = c0783In;
        this.f30706e = c1936re;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029 A[Catch: all -> 0x003f, TryCatch #0 {all -> 0x003f, blocks: (B:3:0x0001, B:5:0x000f, B:8:0x0021, B:10:0x0025, B:13:0x002e, B:15:0x0032, B:19:0x004d, B:23:0x0059, B:26:0x007b, B:27:0x007f, B:29:0x0085, B:18:0x0041, B:12:0x0029), top: B:35:0x0001 }] */
    public final synchronized void a(final boolean z7, z zVar) {
        Integer num;
        try {
            HashMap map = this.f30702a;
            Boolean boolValueOf = Boolean.valueOf(z7);
            z zVar2 = (z) map.get(boolValueOf);
            if (zVar2 != null) {
                l.f25980A.f25990j.getClass();
                if (zVar2.f30715c <= System.currentTimeMillis() || zVar2.f30713a == null || zVar.f30713a != null) {
                    this.f30702a.put(boolValueOf, zVar);
                }
            } else {
                this.f30702a.put(boolValueOf, zVar);
            }
            if (zVar.f30713a != null) {
                num = (Integer) C3099q.f26624d.f26627c.a(Q7.i9);
            } else {
                num = (Integer) C3099q.f26624d.f26627c.a(Q7.j9);
            }
            int iIntValue = num.intValue();
            final boolean z8 = zVar.f30713a == null;
            AbstractC1988se.f20909d.schedule(new Runnable() { // from class: v3.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30699G.e(z7, z8);
                }
            }, iIntValue, TimeUnit.SECONDS);
            List list = (List) this.f30703b.get(boolValueOf);
            this.f30703b.put(boolValueOf, new ArrayList());
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    d(zVar, (Pair) it.next(), false);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Object obj, t tVar) {
        l.f25980A.f25990j.getClass();
        AbstractC1988se.f20910e.execute(new a(this, obj, new Pair(tVar, Long.valueOf(System.currentTimeMillis())), 11, 0));
    }

    public final void c(boolean z7) {
        HashMap map = this.f30703b;
        Boolean boolValueOf = Boolean.valueOf(z7);
        if (map.containsKey(boolValueOf)) {
            return;
        }
        map.put(boolValueOf, new ArrayList());
        this.f30706e.submit(new p017c0.a(4, this, z7));
    }

    public final void d(z zVar, Pair pair, boolean z7) {
        zVar.f30717e.set(true);
        C0091g c0091g = zVar.f30713a;
        if (c0091g != null) {
            ((p182x3.a) pair.first).b(c0091g);
        } else {
            ((p182x3.a) pair.first).a(zVar.f30714b);
        }
        Pair[] pairArr = new Pair[7];
        pairArr[0] = new Pair("se", "query_g");
        pairArr[1] = new Pair("ad_format", "BANNER");
        pairArr[2] = new Pair("rtype", Integer.toString(6));
        pairArr[3] = new Pair("scar", "true");
        l.f25980A.f25990j.getClass();
        pairArr[4] = new Pair("lat_ms", Long.toString(System.currentTimeMillis() - ((Long) pair.second).longValue()));
        pairArr[5] = new Pair("sgpc_h", Boolean.toString(z7));
        pairArr[6] = new Pair("sgpc_rs", Boolean.toString(c0091g != null));
        m.m(this.f30705d, "sgpcr", pairArr);
    }

    public final synchronized void e(boolean z7, boolean z8) {
        Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        bundle.putBoolean("accept_3p_cookie", z7);
        HashMap map = this.f30702a;
        Boolean boolValueOf = Boolean.valueOf(z7);
        z zVar = (z) map.get(boolValueOf);
        int i8 = (!z8 || zVar == null) ? 0 : zVar.f30716d + 1;
        z zVar2 = (z) this.f30702a.get(boolValueOf);
        y yVar = new y(this, z7, i8, zVar2 == null ? null : Boolean.valueOf(zVar2.f30717e.get()), this.f30705d);
        int i9 = 3;
        f fVar = new f((e) new e(3).e(bundle));
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.sa)).booleanValue()) {
            this.f30706e.submit(new CallableC3196d(this, fVar, yVar, i9));
        } else {
            C0091g.s(this.f30704c, fVar, yVar);
        }
    }
}
