package p034e2;

import Q1.a;
import U1.c;

/* JADX INFO: loaded from: classes.dex */
public final class e extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f24800c = new e(12, 13);

    @Override // Q1.a
    public final void a(c cVar) {
        cVar.f("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        cVar.f("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
