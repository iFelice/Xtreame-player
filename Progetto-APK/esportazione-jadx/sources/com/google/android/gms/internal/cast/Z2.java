package com.google.android.gms.internal.cast;

import D3.C0159c;
import android.text.TextUtils;
import androidx.leanback.widget.C0484j;
import com.google.android.gms.cast.CastDevice;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Z2 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final H3.b f22597n = new H3.b("SessionFlowSummary", null);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f22598o = "21.4.0";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static long f22599p = System.currentTimeMillis();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final B f22600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f22601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f22602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f22603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f22604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final N f22605f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f22606g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f22607h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f22608i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C0159c f22609j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f22610k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f22611l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f22612m;

    public Z2(N n7, String str) {
        O2 o4 = O2.f22511G;
        B b8 = new B();
        b8.f22417G = o4;
        this.f22600a = b8;
        this.f22601b = Collections.synchronizedList(new ArrayList());
        this.f22602c = Collections.synchronizedList(new ArrayList());
        this.f22603d = Collections.synchronizedList(new ArrayList());
        this.f22604e = Collections.synchronizedMap(new HashMap());
        this.f22605f = n7;
        this.f22606g = str;
        this.f22607h = System.currentTimeMillis();
        long j8 = f22599p;
        f22599p = 1 + j8;
        this.f22608i = j8;
    }

    public final void a(C0159c c0159c) {
        if (c0159c == null) {
            b(2);
            return;
        }
        com.bumptech.glide.c.d("Must be called from the main thread.");
        CastDevice castDevice = c0159c.f2377k;
        if (castDevice == null) {
            b(3);
            return;
        }
        this.f22609j = c0159c;
        String str = this.f22611l;
        String str2 = castDevice.f11689R;
        if (str == null) {
            this.f22611l = str2;
            this.f22612m = castDevice.f11682K;
            c0159c.b();
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            b(5);
        }
    }

    public final void b(int i8) {
        Integer numValueOf = Integer.valueOf(i8 - 1);
        Map map = this.f22604e;
        C2426b c2426b = (C2426b) map.get(numValueOf);
        if (c2426b != null) {
            c2426b.f22635d.incrementAndGet();
            c2426b.f22633b = System.currentTimeMillis();
        } else {
            C2426b c2426b2 = new C2426b(new C0484j(i8, 14));
            c2426b2.f22634c = this.f22607h;
            map.put(numValueOf, c2426b2);
        }
    }
}
