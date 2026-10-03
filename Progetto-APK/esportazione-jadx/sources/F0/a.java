package F0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f3006c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f3008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f3009f;

    public a(long j8, int i8, ArrayList arrayList, List list, List list2, List list3) {
        this.f3004a = j8;
        this.f3005b = i8;
        this.f3006c = Collections.unmodifiableList(arrayList);
        this.f3007d = Collections.unmodifiableList(list);
        this.f3008e = Collections.unmodifiableList(list2);
        this.f3009f = Collections.unmodifiableList(list3);
    }
}
