package F0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f3051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3052d;

    public h(String str, long j8, ArrayList arrayList, List list) {
        this.f3049a = str;
        this.f3050b = j8;
        this.f3051c = Collections.unmodifiableList(arrayList);
        this.f3052d = Collections.unmodifiableList(list);
    }
}
