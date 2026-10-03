package p027d2;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;
import p096m2.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f24650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f24651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f24652c;

    public x(UUID uuid, q qVar, LinkedHashSet linkedHashSet) {
        q0.h(uuid, "id");
        q0.h(qVar, "workSpec");
        q0.h(linkedHashSet, "tags");
        this.f24650a = uuid;
        this.f24651b = qVar;
        this.f24652c = linkedHashSet;
    }
}
