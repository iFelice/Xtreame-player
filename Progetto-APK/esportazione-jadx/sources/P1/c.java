package P1;

import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f5777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final T1.e f5778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p032e0.u f5779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f5780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f5781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5782g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f5783h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f5784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Intent f5785j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f5786k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f5787l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Set f5788m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f5789n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f5790o;

    public c(Context context, String str, T1.e eVar, p032e0.u uVar, ArrayList arrayList, boolean z7, int i8, Executor executor, Executor executor2, boolean z8, boolean z9, LinkedHashSet linkedHashSet, ArrayList arrayList2, ArrayList arrayList3) {
        q0.h(context, "context");
        q0.h(uVar, "migrationContainer");
        p148t.a.f(i8, "journalMode");
        q0.h(arrayList2, "typeConverters");
        q0.h(arrayList3, "autoMigrationSpecs");
        this.f5776a = context;
        this.f5777b = str;
        this.f5778c = eVar;
        this.f5779d = uVar;
        this.f5780e = arrayList;
        this.f5781f = z7;
        this.f5782g = i8;
        this.f5783h = executor;
        this.f5784i = executor2;
        this.f5785j = null;
        this.f5786k = z8;
        this.f5787l = z9;
        this.f5788m = linkedHashSet;
        this.f5789n = arrayList2;
        this.f5790o = arrayList3;
    }

    public final boolean a(int i8, int i9) {
        if ((i8 > i9 && this.f5787l) || !this.f5786k) {
            return false;
        }
        Set set = this.f5788m;
        return set == null || !set.contains(Integer.valueOf(i8));
    }
}
