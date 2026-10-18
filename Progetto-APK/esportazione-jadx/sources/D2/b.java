package D2;

import C2.C;
import C2.D;
import C2.H;
import android.content.Context;
import android.net.Uri;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f2308b;

    public b(Context context, Class cls) {
        this.f2307a = context;
        this.f2308b = cls;
    }

    @Override // C2.D
    public final C a(H h8) {
        Class cls = this.f2308b;
        return new e(this.f2307a, h8.c(File.class, cls), h8.c(Uri.class, cls), cls);
    }
}
