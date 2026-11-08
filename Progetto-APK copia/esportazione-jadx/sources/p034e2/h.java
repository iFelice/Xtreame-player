package p034e2;

import Q1.a;
import U1.c;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class h extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f24803c = new h(3, 4);

    @Override // Q1.a
    public final void a(c cVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            cVar.f("\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    ");
        }
    }
}
