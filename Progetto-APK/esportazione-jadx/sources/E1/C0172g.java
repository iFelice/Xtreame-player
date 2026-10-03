package E1;

import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: E1.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0172g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f2741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f2743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashSet f2744d;

    public C0172g(String str, String str2) {
        this.f2742b = new ArrayList();
        this.f2743c = new ArrayList();
        this.f2744d = new HashSet();
        Bundle bundle = new Bundle();
        this.f2741a = bundle;
        if (str == null) {
            throw new NullPointerException("id must not be null");
        }
        bundle.putString("id", str);
        if (str2 == null) {
            throw new NullPointerException("name must not be null");
        }
        bundle.putString("name", str2);
    }

    public final void a(ArrayList arrayList) {
        if (arrayList == null) {
            throw new IllegalArgumentException("filters must not be null");
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            IntentFilter intentFilter = (IntentFilter) it.next();
            if (intentFilter != null) {
                ArrayList arrayList2 = this.f2743c;
                if (!arrayList2.contains(intentFilter)) {
                    arrayList2.add(intentFilter);
                }
            }
        }
    }

    public final C0173h b() {
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2743c);
        Bundle bundle = this.f2741a;
        bundle.putParcelableArrayList("controlFilters", arrayList);
        bundle.putStringArrayList("groupMemberIds", new ArrayList<>(this.f2742b));
        bundle.putStringArrayList("allowedPackages", new ArrayList<>(this.f2744d));
        return new C0173h(bundle);
    }

    public C0172g(C0173h c0173h) {
        this.f2742b = new ArrayList();
        this.f2743c = new ArrayList();
        this.f2744d = new HashSet();
        this.f2741a = new Bundle(c0173h.f2745a);
        this.f2742b = c0173h.c();
        this.f2743c = c0173h.b();
        this.f2744d = c0173h.a();
    }
}
