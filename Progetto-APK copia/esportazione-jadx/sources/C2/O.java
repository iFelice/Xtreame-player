package C2;

import android.content.ContentResolver;
import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class O implements C {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Set f1375b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "content", "android.resource")));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f1376a;

    public O(N n7) {
        this.f1376a = n7;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        return f1375b.contains(((Uri) obj).getScheme());
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, p173w2.l lVar) {
        com.bumptech.glide.load.data.e aVar;
        Uri uri = (Uri) obj;
        O2.d dVar = new O2.d(uri);
        M m7 = (M) this.f1376a;
        int i10 = m7.f1373a;
        ContentResolver contentResolver = m7.f1374b;
        switch (i10) {
            case 0:
                aVar = new com.bumptech.glide.load.data.a(contentResolver, uri, 0);
                break;
            case 1:
                aVar = new com.bumptech.glide.load.data.a(contentResolver, uri, 1);
                break;
            default:
                aVar = new com.bumptech.glide.load.data.o(contentResolver, uri, 1);
                break;
        }
        return new B(dVar, aVar);
    }
}
