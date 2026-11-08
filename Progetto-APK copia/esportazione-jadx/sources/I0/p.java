package I0;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class p implements M0.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f3919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3920c;

    public p(String str, List list, boolean z7) {
        this.f3918a = str;
        this.f3919b = Collections.unmodifiableList(list);
        this.f3920c = z7;
    }
}
