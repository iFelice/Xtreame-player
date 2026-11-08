package p104n2;

import androidx.work.impl.WorkDatabase;
import p027d2.g;
import p027d2.n;
import p096m2.s;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class u implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f27475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p089l2.a f27476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s f27477c;

    static {
        n.f("WMFgUpdater");
    }

    public u(WorkDatabase workDatabase, p089l2.a aVar, a aVar2) {
        this.f27476b = aVar;
        this.f27475a = aVar2;
        this.f27477c = workDatabase.u();
    }
}
