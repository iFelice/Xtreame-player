package p190y4;

import Z3.C0433o;
import com.google.android.gms.common.api.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f31435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0433o f31437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f31438d;

    public q(C0433o c0433o, boolean z7, d dVar, int i8) {
        this.f31437c = c0433o;
        this.f31436b = z7;
        this.f31435a = dVar;
        this.f31438d = i8;
    }

    public static q a(char c8) {
        return new q(new C0433o(new c(c8), 11), false, e.f31421H, d.API_PRIORITY_OTHER);
    }

    public final List b(CharSequence charSequence) {
        charSequence.getClass();
        C0433o c0433o = this.f31437c;
        c0433o.getClass();
        o oVar = new o(c0433o, this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (oVar.hasNext()) {
            arrayList.add((String) oVar.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
