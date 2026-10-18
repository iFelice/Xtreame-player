package I0;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import p094m0.C3136t;
import p094m0.a0;

/* JADX INFO: loaded from: classes.dex */
public final class o extends p {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final o f3907n = new o(HttpUrl.FRAGMENT_ENCODE_SET, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f3908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f3909e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f3910f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f3911g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f3912h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f3913i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C3136t f3914j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f3915k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map f3916l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List f3917m;

    public o(String str, List list, List list2, List list3, List list4, List list5, List list6, C3136t c3136t, List list7, boolean z7, Map map, List list8) {
        super(str, list, z7);
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < list2.size(); i8++) {
            Uri uri = ((n) list2.get(i8)).f3901a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        b(list3, arrayList);
        b(list4, arrayList);
        b(list5, arrayList);
        b(list6, arrayList);
        this.f3908d = Collections.unmodifiableList(arrayList);
        this.f3909e = Collections.unmodifiableList(list2);
        this.f3910f = Collections.unmodifiableList(list3);
        this.f3911g = Collections.unmodifiableList(list4);
        this.f3912h = Collections.unmodifiableList(list5);
        this.f3913i = Collections.unmodifiableList(list6);
        this.f3914j = c3136t;
        this.f3915k = list7 != null ? Collections.unmodifiableList(list7) : null;
        this.f3916l = Collections.unmodifiableMap(map);
        this.f3917m = Collections.unmodifiableList(list8);
    }

    public static void b(List list, ArrayList arrayList) {
        for (int i8 = 0; i8 < list.size(); i8++) {
            Uri uri = ((m) list.get(i8)).f3898a;
            if (uri != null && !arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
    }

    public static ArrayList c(List list, List list2, int i8) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i9 = 0; i9 < list.size(); i9++) {
            Object obj = list.get(i9);
            for (int i10 = 0; i10 < list2.size(); i10++) {
                a0 a0Var = (a0) list2.get(i10);
                if (a0Var.f26803H == i8 && a0Var.f26804I == i9) {
                    arrayList.add(obj);
                    break;
                }
            }
        }
        return arrayList;
    }

    @Override // M0.a
    public final Object a(List list) {
        return new o(this.f3918a, this.f3919b, c(this.f3909e, list, 0), Collections.emptyList(), c(this.f3911g, list, 1), c(this.f3912h, list, 2), Collections.emptyList(), this.f3914j, this.f3915k, this.f3920c, this.f3916l, this.f3917m);
    }
}
