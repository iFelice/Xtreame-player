package p034e2;

import Q1.a;
import U1.c;

/* JADX INFO: loaded from: classes.dex */
public final class d extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f24799c = new d(11, 12);

    @Override // Q1.a
    public final void a(c cVar) {
        cVar.f("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
    }
}
