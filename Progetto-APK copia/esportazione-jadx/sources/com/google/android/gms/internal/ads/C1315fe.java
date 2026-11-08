package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1315fe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P3.a f18766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1781oe f18767b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f18770e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f18771f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f18769d = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18772g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18773h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f18774i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f18775j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f18776k = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedList f18768c = new LinkedList();

    public C1315fe(P3.a aVar, C1781oe c1781oe, String str, String str2) {
        this.f18766a = aVar;
        this.f18767b = c1781oe;
        this.f18770e = str;
        this.f18771f = str2;
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.f18769d) {
            try {
                bundle = new Bundle();
                bundle.putString("seq_num", this.f18770e);
                bundle.putString("slotid", this.f18771f);
                bundle.putBoolean("ismediation", false);
                bundle.putLong("treq", this.f18775j);
                bundle.putLong("tresponse", this.f18776k);
                bundle.putLong("timp", this.f18772g);
                bundle.putLong("tload", this.f18773h);
                bundle.putLong("pcc", this.f18774i);
                bundle.putLong("tfetch", -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (C1263ee c1263ee : this.f18768c) {
                    c1263ee.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("topen", c1263ee.f18526a);
                    bundle2.putLong("tclose", c1263ee.f18527b);
                    arrayList.add(bundle2);
                }
                bundle.putParcelableArrayList("tclick", arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }
}
