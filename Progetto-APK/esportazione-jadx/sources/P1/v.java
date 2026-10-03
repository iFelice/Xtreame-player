package P1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.concurrent.Executor;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5837a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5839c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Executor f5843g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Executor f5844h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public T1.e f5845i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5846j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5849m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HashSet f5853q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f5838b = WorkDatabase.class;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f5840d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f5841e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f5842f = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f5847k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5848l = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f5850n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p032e0.u f5851o = new p032e0.u(2);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final LinkedHashSet f5852p = new LinkedHashSet();

    public v(Context context, String str) {
        this.f5837a = context;
        this.f5839c = str;
    }

    public final void a(Q1.a... aVarArr) {
        if (this.f5853q == null) {
            this.f5853q = new HashSet();
        }
        for (Q1.a aVar : aVarArr) {
            HashSet hashSet = this.f5853q;
            q0.e(hashSet);
            hashSet.add(Integer.valueOf(aVar.f6030a));
            HashSet hashSet2 = this.f5853q;
            q0.e(hashSet2);
            hashSet2.add(Integer.valueOf(aVar.f6031b));
        }
        this.f5851o.b((Q1.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
    }
}
