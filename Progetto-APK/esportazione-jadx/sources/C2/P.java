package C2;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class P implements C {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f1377b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C f1378a;

    public P(C c8) {
        this.f1378a = c8;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        return f1377b.contains(((Uri) obj).getScheme());
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        return this.f1378a.b(new t(((Uri) obj).toString(), u.f1417a), i8, i9, lVar);
    }
}
