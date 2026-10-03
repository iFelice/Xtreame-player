package p141s0;

import java.io.IOException;

/* JADX INFO: renamed from: s0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3185j extends IOException {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f29946H = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f29947G;

    public C3185j(int i8) {
        this.f29947G = i8;
    }

    public C3185j(int i8, Throwable th) {
        super(th);
        this.f29947G = i8;
    }

    public C3185j(String str, int i8) {
        super(str);
        this.f29947G = i8;
    }

    public C3185j(String str, int i8, Throwable th) {
        super(str, th);
        this.f29947G = i8;
    }
}
