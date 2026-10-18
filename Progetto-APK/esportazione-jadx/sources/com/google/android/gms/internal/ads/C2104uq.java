package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2104uq {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Qv f21393d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Ov f21394e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p090l3.g1 f21395f = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f21391b = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f21390a = Collections.synchronizedList(new ArrayList());

    public C2104uq(String str) {
        this.f21392c = str;
    }

    public static String b(Ov ov) {
        return ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15903o3)).booleanValue() ? ov.f15277p0 : ov.f15290w;
    }

    public final void a(Ov ov) {
        String strB = b(ov);
        Map map = this.f21391b;
        Object obj = map.get(strB);
        List list = this.f21390a;
        int iIndexOf = list.indexOf(obj);
        if (iIndexOf < 0 || iIndexOf >= map.size()) {
            iIndexOf = list.indexOf(this.f21395f);
        }
        if (iIndexOf < 0 || iIndexOf >= map.size()) {
            return;
        }
        this.f21395f = (p090l3.g1) list.get(iIndexOf);
        while (true) {
            iIndexOf++;
            if (iIndexOf >= list.size()) {
                return;
            }
            p090l3.g1 g1Var = (p090l3.g1) list.get(iIndexOf);
            g1Var.f26578H = 0L;
            g1Var.f26579I = null;
        }
    }

    public final synchronized void c(Ov ov, int i8) {
        String str;
        String str2;
        String str3;
        String str4;
        Map map = this.f21391b;
        String strB = b(ov);
        if (map.containsKey(strB)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> itKeys = ov.f15288v.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                bundle.putString(next, ov.f15288v.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15881l6)).booleanValue()) {
            str = ov.f15225F;
            str2 = ov.f15226G;
            str3 = ov.f15227H;
            str4 = ov.f15228I;
        } else {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
            str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            str3 = HttpUrl.FRAGMENT_ENCODE_SET;
            str4 = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        p090l3.g1 g1Var = new p090l3.g1(ov.f15224E, 0L, null, bundle, str, str2, str3, str4);
        try {
            this.f21390a.add(i8, g1Var);
        } catch (IndexOutOfBoundsException e8) {
            p083k3.l.f25980A.f25987g.i("AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation", e8);
        }
        this.f21391b.put(strB, g1Var);
    }

    public final void d(Ov ov, long j8, C3117z0 c3117z0, boolean z7) {
        String strB = b(ov);
        Map map = this.f21391b;
        if (map.containsKey(strB)) {
            if (this.f21394e == null) {
                this.f21394e = ov;
            }
            p090l3.g1 g1Var = (p090l3.g1) map.get(strB);
            g1Var.f26578H = j8;
            g1Var.f26579I = c3117z0;
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15890m6)).booleanValue() && z7) {
                this.f21395f = g1Var;
            }
        }
    }
}
