package E1;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: E1.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0180o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f2793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2794b;

    public C0180o(List list, boolean z7) {
        if (list.isEmpty()) {
            this.f2793a = Collections.emptyList();
        } else {
            this.f2793a = Collections.unmodifiableList(new ArrayList(list));
        }
        this.f2794b = z7;
    }

    public static C0180o a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("routes");
        if (parcelableArrayList != null) {
            for (int i8 = 0; i8 < parcelableArrayList.size(); i8++) {
                Bundle bundle2 = (Bundle) parcelableArrayList.get(i8);
                arrayList.add(bundle2 != null ? new C0173h(bundle2) : null);
            }
        }
        return new C0180o(arrayList, bundle.getBoolean("supportsDynamicGroupRoute", false));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouteProviderDescriptor{ routes=");
        List list = this.f2793a;
        sb.append(Arrays.toString(list.toArray()));
        sb.append(", isValid=");
        int size = list.size();
        boolean z7 = false;
        for (int i8 = 0; i8 < size; i8++) {
            C0173h c0173h = (C0173h) list.get(i8);
            if (c0173h == null || !c0173h.e()) {
                sb.append(z7);
                sb.append(" }");
                return sb.toString();
            }
        }
        z7 = true;
        sb.append(z7);
        sb.append(" }");
        return sb.toString();
    }
}
