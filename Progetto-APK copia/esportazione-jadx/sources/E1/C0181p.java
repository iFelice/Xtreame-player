package E1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: E1.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0181p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0181p f2795c = new C0181p(null, new Bundle());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f2796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f2797b;

    public C0181p(ArrayList arrayList, Bundle bundle) {
        this.f2796a = bundle;
        this.f2797b = arrayList;
    }

    public final void a() {
        if (this.f2797b == null) {
            ArrayList<String> stringArrayList = this.f2796a.getStringArrayList("controlCategories");
            this.f2797b = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.f2797b = Collections.emptyList();
            }
        }
    }

    public final ArrayList b() {
        a();
        return new ArrayList(this.f2797b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0181p)) {
            return false;
        }
        C0181p c0181p = (C0181p) obj;
        a();
        c0181p.a();
        return this.f2797b.equals(c0181p.f2797b);
    }

    public final int hashCode() {
        a();
        return this.f2797b.hashCode();
    }

    public final String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(b().toArray()) + " }";
    }
}
