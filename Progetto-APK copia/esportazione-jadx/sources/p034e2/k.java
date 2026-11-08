package p034e2;

import Q1.a;
import U1.c;

/* JADX INFO: loaded from: classes.dex */
public final class k extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k f24806c = new k(7, 8);

    @Override // Q1.a
    public final void a(c cVar) {
        cVar.f("\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ");
    }
}
